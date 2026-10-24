# _root_.GRWTSK.Algebra.CommutativeAlgebra.AEval.Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.LinearEquiv.ofAEval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd86db10ea6ac3d583119dc7788bee6e5c522668006af7863a01b809e93aee5e",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.AEval.Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.LinearEquiv.ofAEval",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-aeval-variant7433ea4b87f91bffd139--e45a4b984e1d3d94cb0c2f43",
  "source": {
    "blob": "35d5eee323d63cd154a91f5820a4b79f9d744306",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 109,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e45a4b984e1d3d94cb0c2f4388d43c3213aebe438523d9da6f73d6a39a04379b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd86db10ea6ac3d583119dc7788bee6e5c522668006af7863a01b809e93aee5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.CommutativeAlgebra.AEval.Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.LinearEquiv.ofAEval {N} [AddCommMonoid N] [Module R N] [Module R[X] N]
    [IsScalarTower R R[X] N] (f : M ≃ₗ[R] N) (hf : ∀ m : M, f (a • m) = (X : R[X]) • f m) :
    AEval R M a ≃ₗ[R[X]] N where
  __ := LinearMap.ofAEval a f hf
  invFun := (of R M a) ∘ f.symm
  left_inv x := by simp [LinearMap.ofAEval]
  right_inv x := by simp [LinearMap.ofAEval]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35d5eee323d63cd154a91f5820a4b79f9d744306` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
