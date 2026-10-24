# range_eq_iSup_sigma_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b76383ad804eb07af67497f7f658ecbda6ffc5e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04fddeb3c06d6ea1c739bdbd7a130b8561d91072416e7410119a3504de40cfda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f50f3d6-5a74-52e7-fd5b-3f924a7be1f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b11b8ff-676c-ee7a-b579-e9308626a311",
  "kind": "lemma",
  "lexical_name": "range_eq_iSup_sigma_ι",
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
  "slug": "range-eq-isup-sigma--257526235ba5fe5cafee1262",
  "source": {
    "blob": "b76383ad804eb07af67497f7f658ecbda6ffc5e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant04fddeb3c06d6ea1c739bdbd7a130b8561d91072416e7410119a3504de40cfda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:257526235ba5fe5cafee1262382434c897fdc20de4890025a6f5178e96727786",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant04fddeb3c06d6ea1c739bdbd7a130b8561d91072416e7410119a3504de40cfda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b11b8ff-676c-ee7a-b579-e9308626a311`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_eq_iSup_sigma_ι
    {ι : Type v} [HasColimitsOfShape (Discrete ι) (Type u)]
    {X : ι → SSet.{u}} {Y : SSet.{u}} [HasCoproduct X]
    (f : ∐ X ⟶ Y) :
    Subcomplex.range f = ⨆ (i : ι), Subcomplex.range (Sigma.ι X i ≫ f) := by
  rw [range_eq_iSup_of_isColimit (coproductIsCoproduct X) f]
  refine le_antisymm ?_ ?_
  · simp only [iSup_le_iff, Discrete.forall]
    intro i
    exact le_trans (by rfl) (le_iSup _ i)
  · simp only [iSup_le_iff]
    intro i
    exact le_trans (by rfl) (le_iSup _ ⟨i⟩)

end SSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant04fddeb3c06d6ea1c739bdbd7a130b8561d91072416e7410119a3504de40cfda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteColimits/Variant04fddeb3c06d6ea1c739bdbd7a130b8561d91072416e7410119a3504de40cfda.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b76383ad804eb07af67497f7f658ecbda6ffc5e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
