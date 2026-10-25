# Finitary.sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c2f8c90275251f9b5bdbfa261aee2efef0d9c91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30d02d6e-1c99-27f8-52af-e8218b1cb645",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:724dcde0-7a94-fec6-8172-65d4987aa005",
  "kind": "lemma",
  "lexical_name": "Finitary.sigma",
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
  "slug": "finitary-sigma--bb4001a317decb620ca6bf5a",
  "source": {
    "blob": "9c2f8c90275251f9b5bdbfa261aee2efef0d9c91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb4001a317decb620ca6bf5a949a0bc56f1ad9592dd7803db5c85fc22a70c93e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:724dcde0-7a94-fec6-8172-65d4987aa005`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Finitary.sigma (h : ∀ i, (M i).Finitary) : (Matroid.sigma M).Finitary := by
  refine ⟨fun I hI ↦ ?_⟩
  simp only [sigma_indep_iff] at hI ⊢
  intro i
  apply indep_of_forall_finite_subset_indep
  intro J hJI hJ
  convert hI (Sigma.mk i '' J) (by simpa) (hJ.image _) i
  rw [sigma_mk_preimage_image_eq_self]

end Sigma

section sum'

variable {α ι : Type*} {M : ι → Matroid α}

/-- The sum of an indexed family `M : ι → Matroid α` of matroids on the same type,
as a matroid on the product type `ι × α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c2f8c90275251f9b5bdbfa261aee2efef0d9c91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
