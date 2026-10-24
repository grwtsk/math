# _root_.LinearEquiv.ofAEval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f378fb034adc72f66c8fa683a198c881686e72448c6b61a9a296e7dbb5a9e6ee",
  "kind": "def",
  "lexical_name": "_root_.LinearEquiv.ofAEval",
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
  "slug": "root-linearequiv-ofaeval--d87bab88162c8c2f87aad86f",
  "source": {
    "blob": "62253978f2166e83ba083d90768a574e9546361d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 101,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d87bab88162c8c2f87aad86f58c7581aa009e8965f73d651ec051cad079218d6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f378fb034adc72f66c8fa683a198c881686e72448c6b61a9a296e7dbb5a9e6ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.LinearEquiv.ofAEval {N} [AddCommMonoid N] [Module R N] [Module R[X] N]
    [IsScalarTower R R[X] N] (f : M ≃ₗ[R] N) (hf : ∀ m : M, f (a • m) = (X : R[X]) • f m) :
    AEval R M a ≃ₗ[R[X]] N where
  __ := LinearMap.ofAEval a f hf
  invFun := (of R M a) ∘ f.symm
  left_inv x := by simp [LinearMap.ofAEval]
  right_inv x := by simp [LinearMap.ofAEval]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62253978f2166e83ba083d90768a574e9546361d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
