# autEmbedding_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6226210e20bf3f7467ab13514d0f509191c70c04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc1458309d4f8dbbd0c1255a9ed10661d7719890897b103ca1ea4b0912edc93c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:242e867e-d3c4-55c9-d2f1-2dd44ca1648e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:205667e2-c85d-2651-454d-b9fa7a387c59",
  "kind": "lemma",
  "lexical_name": "autEmbedding_range",
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
  "slug": "autembedding-range--ba47102323a6ed8bdcf1d4e9",
  "source": {
    "blob": "6226210e20bf3f7467ab13514d0f509191c70c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantdc1458309d4f8dbbd0c1255a9ed10661d7719890897b103ca1ea4b0912edc93c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba47102323a6ed8bdcf1d4e97349289ab7f97b97e2e8fe0b76ec015da97ff133",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantdc1458309d4f8dbbd0c1255a9ed10661d7719890897b103ca1ea4b0912edc93c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:205667e2-c85d-2651-454d-b9fa7a387c59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma autEmbedding_range :
    Set.range (autEmbedding F) = ⋂ (f : Arrow C), { a | F.map f.hom ≫ (a f.right).hom =
      (a f.left).hom ≫ F.map f.hom } := by
  ext a
  simp only [Set.mem_range, Set.mem_iInter, Set.mem_ofPred_eq]
  refine ⟨fun ⟨σ, h⟩ i ↦ by cat_disch, fun h ↦ ?_⟩
  exact ⟨NatIso.ofComponents a (fun {X Y} f ↦ by
    ext; simpa using ConcreteCategory.congr_hom (h ⟨X, Y, f⟩) _), rfl⟩

/-- The image of `Aut F` in `∀ X, Aut (F.obj X)` is closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantdc1458309d4f8dbbd0c1255a9ed10661d7719890897b103ca1ea4b0912edc93c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantdc1458309d4f8dbbd0c1255a9ed10661d7719890897b103ca1ea4b0912edc93c.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6226210e20bf3f7467ab13514d0f509191c70c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
