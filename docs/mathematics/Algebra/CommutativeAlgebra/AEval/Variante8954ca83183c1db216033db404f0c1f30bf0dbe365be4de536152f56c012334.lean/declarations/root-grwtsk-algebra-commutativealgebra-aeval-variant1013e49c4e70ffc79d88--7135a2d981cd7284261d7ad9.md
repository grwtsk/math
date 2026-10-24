# _root_.GRWTSK.Algebra.CommutativeAlgebra.AEval.Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.LinearEquiv.ofAEval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:629f57ba01b71546cf83e2bf10d19731575be0b765e17c960f01034029ebb5ee",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.AEval.Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.LinearEquiv.ofAEval",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-aeval-variant1013e49c4e70ffc79d88--7135a2d981cd7284261d7ad9",
  "source": {
    "blob": "c704f8f9ebecd3bdc1df9ce28eededa035da060f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 115,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AEval/Variante8954ca83183c1db216033db404f0c1f30bf0dbe365be4de536152f56c012334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7135a2d981cd7284261d7ad9740a4b02c250b83bb940782a7a87ddf70e3c8cc2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AEval/Variante8954ca83183c1db216033db404f0c1f30bf0dbe365be4de536152f56c012334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:629f57ba01b71546cf83e2bf10d19731575be0b765e17c960f01034029ebb5ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.CommutativeAlgebra.AEval.Variant1013e49c4e70ffc79d887f70f5b287e0b4f0017ad5668026ae74f784b5903f52.LinearEquiv.ofAEval {N} [AddCommMonoid N] [Module R N] [Module R[X] N]
    [IsScalarTower R R[X] N] (f : M ≃ₗ[R] N) (hf : ∀ m : M, f (a • m) = (X : R[X]) • f m) :
    AEval R M a ≃ₗ[R[X]] N where
  __ := LinearMap.ofAEval a f hf
  invFun := (of R M a) ∘ f.symm
  left_inv x := by simp [LinearMap.ofAEval]
  right_inv x := by simp [LinearMap.ofAEval]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AEval/Variante8954ca83183c1db216033db404f0c1f30bf0dbe365be4de536152f56c012334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AEval/Variante8954ca83183c1db216033db404f0c1f30bf0dbe365be4de536152f56c012334.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c704f8f9ebecd3bdc1df9ce28eededa035da060f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
