# isSheaf_pointwiseColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d720c0d-5802-53f3-241d-68f62a129aaf",
  "kind": "lemma",
  "lexical_name": "isSheaf_pointwiseColimit",
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
  "slug": "issheaf-pointwisecolimit--a86f98a5dce92d136e6ec7dd",
  "source": {
    "blob": "a8aa5077d767120dcf7f565669e31abd777c7391",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 39,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveColimits/Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a86f98a5dce92d136e6ec7dd23fb6229f1b73f49d3524e089beff5906e4212a1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveColimits/Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d720c0d-5802-53f3-241d-68f62a129aaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSheaf_pointwiseColimit [PreservesFiniteProducts (colim (J := J) (C := A))]
    (G : J ⥤ Sheaf (extensiveTopology C) A) :
    Presheaf.IsSheaf (extensiveTopology C) (pointwiseCocone (G ⋙ sheafToPresheaf _ A)).pt := by
  rw [Presheaf.isSheaf_iff_preservesFiniteProducts]
  dsimp only [pointwiseCocone_pt]
  apply (config := { allowSynthFailures := true } ) comp_preservesFiniteProducts
  have : ∀ (i : J), PreservesFiniteProducts ((G ⋙ sheafToPresheaf _ A).obj i) := fun i ↦ by
    rw [← Presheaf.isSheaf_iff_preservesFiniteProducts]
    exact Sheaf.cond _
  exact ⟨fun _ ↦ preservesLimitsOfShape_of_evaluation _ _ fun d ↦
    inferInstanceAs (PreservesLimitsOfShape _ ((G ⋙ sheafToPresheaf _ _).obj d))⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveColimits/Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveColimits/Variant84d9c0dc2feb73f69e49f610d8fe9e9747fdde38555fff215326e4c36bebb86d.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8aa5077d767120dcf7f565669e31abd777c7391` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
