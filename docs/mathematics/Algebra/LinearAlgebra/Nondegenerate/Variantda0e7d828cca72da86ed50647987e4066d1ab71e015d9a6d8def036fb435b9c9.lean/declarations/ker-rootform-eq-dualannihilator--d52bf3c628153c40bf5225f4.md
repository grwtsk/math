# ker_rootForm_eq_dualAnnihilator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7350c3ff-6c0d-da3b-99de-a2528e5b5b1b",
  "kind": "lemma",
  "lexical_name": "ker_rootForm_eq_dualAnnihilator",
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
  "slug": "ker-rootform-eq-dualannihilator--d52bf3c628153c40bf5225f4",
  "source": {
    "blob": "e684e6d8e8cf9fb4e017f847098a6fe3ef0bfe93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d52bf3c628153c40bf5225f41ae5646259fe7fdc42d6e9d6d8732e99b294e632",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7350c3ff-6c0d-da3b-99de-a2528e5b5b1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_rootForm_eq_dualAnnihilator :
    P.RootForm.ker =
      (P.corootSpan R).dualAnnihilator.map (P.toPerfPair.symm : Dual R N →ₗ[R] M) := by
  have : IsReflexive R M := .of_isPerfPair P.toLinearMap
  have : IsReflexive R N := .of_isPerfPair P.flip.toLinearMap
  suffices finrank R (LinearMap.ker P.RootForm) = finrank R (P.corootSpan R).dualAnnihilator by
    refine (Submodule.eq_of_le_of_finrank_eq P.corootSpan_dualAnnihilator_le_ker_rootForm ?_).symm
    rw [this]
    apply LinearEquiv.finrank_map_eq
  have aux0 := Subspace.finrank_add_finrank_dualAnnihilator_eq (P.corootSpan R)
  have aux1 := Submodule.finrank_add_eq_of_isCompl P.isCompl_rootSpan_ker_rootForm
  rw [← P.finrank_corootSpan_eq', P.toPerfPair.finrank_eq, Subspace.dual_finrank_eq] at aux1
  lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e684e6d8e8cf9fb4e017f847098a6fe3ef0bfe93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
