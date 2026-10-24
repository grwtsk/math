# measurePreserving_equivIoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d350291e-ac0f-b291-3b17-fdaf6b60a3db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22ce541a-5500-94d6-02d6-0fbe629672d1",
  "kind": "lemma",
  "lexical_name": "measurePreserving_equivIoc",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "measurepreserving-equivioc--2ec016f3f7f5f861c38c3ef7",
  "source": {
    "blob": "ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 148,
    "path": "GRWTSK/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ec016f3f7f5f861c38c3ef779e67b0c86ad60625011076d284681820c2442b6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22ce541a-5500-94d6-02d6-0fbe629672d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurePreserving_equivIoc {a : ℝ} :
    MeasurePreserving (equivIoc T a) volume (Measure.comap Subtype.val volume) := by
  have h := (measurableEquivIoc T a).measurable
  refine ⟨h, ?_⟩
  ext s hs
  rw [comap_apply _ Subtype.val_injective (fun _ ↦ measurableSet_Ioc.subtype_image) _ hs,
    map_apply (by measurability) hs, add_projection_respects_measure T a (by exact h hs)]
  congr!
  ext x
  simp only [mem_inter_iff, mem_preimage, mem_image, Subtype.exists, exists_and_right,
    exists_eq_right]
  rw [and_comm, ← exists_prop]
  congr! with hx
  rw [equivIoc_coe_eq hx]

attribute [local instance] Subtype.measureSpace in
/-- The lower integral of a function over `AddCircle T` is equal to the lower integral over an
interval $(t, t + T]$ in `ℝ` of its lift to `ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
