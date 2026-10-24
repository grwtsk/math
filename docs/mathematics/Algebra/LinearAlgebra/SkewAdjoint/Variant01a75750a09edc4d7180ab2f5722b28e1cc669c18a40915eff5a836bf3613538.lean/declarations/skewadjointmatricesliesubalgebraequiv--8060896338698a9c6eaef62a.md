# skewAdjointMatricesLieSubalgebraEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6245e43dbe086526b1b4bd5351ac5a7316db8c9379727bd1e16cc2772b6cc7bc",
  "kind": "def",
  "lexical_name": "skewAdjointMatricesLieSubalgebraEquiv",
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
  "slug": "skewadjointmatricesliesubalgebraequiv--8060896338698a9c6eaef62a",
  "source": {
    "blob": "a5223149d3cb0b0d822924679811b1871793dd9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 124,
    "path": "GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8060896338698a9c6eaef62a8040a5a0caf0a9de8d56a25141ddd1f10e1eeeef",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6245e43dbe086526b1b4bd5351ac5a7316db8c9379727bd1e16cc2772b6cc7bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def skewAdjointMatricesLieSubalgebraEquiv (P : Matrix n n R) (h : Invertible P) :
    skewAdjointMatricesLieSubalgebra J ≃ₗ⁅R⁆ skewAdjointMatricesLieSubalgebra (Pᵀ * J * P) :=
  LieEquiv.ofSubalgebras _ _ (P.lieConj h).symm <| by
    ext A
    suffices P.lieConj h A ∈ skewAdjointMatricesSubmodule J ↔
        A ∈ skewAdjointMatricesSubmodule (Pᵀ * J * P) by
      simp only [LieSubalgebra.mem_coe, Submodule.mem_map_equiv, LieSubalgebra.mem_map_submodule,
        LinearEquiv.coe_coe]
      exact this
    simp [Matrix.IsSkewAdjoint, J.isAdjointPair_equiv _ _ P (isUnit_of_invertible P)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant01a75750a09edc4d7180ab2f5722b28e1cc669c18a40915eff5a836bf3613538.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5223149d3cb0b0d822924679811b1871793dd9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
