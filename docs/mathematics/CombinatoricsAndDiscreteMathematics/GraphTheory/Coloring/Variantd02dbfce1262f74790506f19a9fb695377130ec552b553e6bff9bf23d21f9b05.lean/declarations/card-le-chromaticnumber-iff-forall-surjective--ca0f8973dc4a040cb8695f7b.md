# card_le_chromaticNumber_iff_forall_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "307223bb58a7022a164c23472b0b6405982f9e1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d02dbfce1262f74790506f19a9fb695377130ec552b553e6bff9bf23d21f9b05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e044db1a-acad-a8f2-987d-44a4174577be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b836c83-b64d-474e-f014-11d1055ccfca",
  "kind": "lemma",
  "lexical_name": "card_le_chromaticNumber_iff_forall_surjective",
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
  "slug": "card-le-chromaticnumber-iff-forall-surjective--ca0f8973dc4a040cb8695f7b",
  "source": {
    "blob": "307223bb58a7022a164c23472b0b6405982f9e1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 340,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantd02dbfce1262f74790506f19a9fb695377130ec552b553e6bff9bf23d21f9b05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca0f8973dc4a040cb8695f7be53df78c90740ad5379af87325ec037373aae9d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantd02dbfce1262f74790506f19a9fb695377130ec552b553e6bff9bf23d21f9b05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b836c83-b64d-474e-f014-11d1055ccfca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_le_chromaticNumber_iff_forall_surjective [Fintype α] :
    card α ≤ G.chromaticNumber ↔ ∀ C : G.Coloring α, Surjective C := by
  refine ⟨fun h C ↦ ?_, fun h ↦ ?_⟩
  · rw [C.colorable.chromaticNumber_eq_sInf, Nat.cast_le] at h
    intro i
    by_contra! hi
    let D : G.Coloring {a // a ≠ i} := ⟨fun v ↦ ⟨C v, hi v⟩, (C.valid · <| congr_arg Subtype.val ·)⟩
    classical
    exact Nat.notMem_of_lt_sInf ((Nat.sub_one_lt_of_lt <| card_pos_iff.2 ⟨i⟩).trans_le h)
      ⟨G.recolorOfEquiv (equivOfCardEq <| by simp [Nat.pred_eq_sub_one]) D⟩
  · simp only [chromaticNumber, Set.mem_setOf_eq, le_iInf_iff, Nat.cast_le, exists_prop]
    rintro i ⟨C⟩
    contrapose! h
    refine ⟨G.recolorOfCardLE (by simpa using h.le) C, fun hC ↦ ?_⟩
    dsimp at hC
    simpa [h.not_le] using Fintype.card_le_of_surjective _ hC.of_comp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantd02dbfce1262f74790506f19a9fb695377130ec552b553e6bff9bf23d21f9b05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantd02dbfce1262f74790506f19a9fb695377130ec552b553e6bff9bf23d21f9b05.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `307223bb58a7022a164c23472b0b6405982f9e1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
