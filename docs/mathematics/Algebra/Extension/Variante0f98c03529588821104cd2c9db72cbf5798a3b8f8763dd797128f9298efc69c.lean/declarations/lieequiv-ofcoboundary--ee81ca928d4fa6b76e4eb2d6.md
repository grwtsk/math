# LieEquiv.ofCoboundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ada3f5fdd6744c2997e45591608dcc9647be21c9f5fdf1dd8b2900b10e36bfe",
  "kind": "def",
  "lexical_name": "LieEquiv.ofCoboundary",
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
  "slug": "lieequiv-ofcoboundary--ee81ca928d4fa6b76e4eb2d6",
  "source": {
    "blob": "3004ea302df468384135cd2540eb5c44bba4a8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 216,
    "path": "GRWTSK/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee81ca928d4fa6b76e4eb2d6cd15c23d3f0fbbde3515a8f279d9412244f3af30",
  "verification": {
    "reference": "docs/verification/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ada3f5fdd6744c2997e45591608dcc9647be21c9f5fdf1dd8b2900b10e36bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LieEquiv.ofCoboundary (c' : twoCocycle R L M) (x : oneCochain R L M)
    (h : c' = c + d₁₂ R L M x) :
    ofTwoCocycle c ≃ₗ⁅R⁆ ofTwoCocycle c' where
  toFun y :=
    letI z := (ofProd c).symm y
    ofProd c' (z.1, z.2 - x z.1)
  invFun z :=
    letI y := (ofProd c').symm z
    ofProd c (y.1, y.2 + x y.1)
  map_add' _ _ := by simp [← of_add]; abel
  map_smul' := by simp [← of_smul, smul_sub]
  map_lie' := ((ofProd c').eq_symm_apply).1 <| by simp [bracket_ofTwoCocycle, h]; abel
  left_inv y := by simp
  right_inv z := by simp

end Algebra

namespace Extension

open LieModule.Cohomology

variable [CommRing R] [LieRing L] [LieAlgebra R L] [LieRing M] [LieAlgebra R M]

section TwoCocycle

variable [IsLieAbelian M] [LieRingModule L M] [LieModule R L M] (c : twoCocycle R L M)

/-- The extension of Lie algebras defined by a 2-cocycle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Extension/Variante0f98c03529588821104cd2c9db72cbf5798a3b8f8763dd797128f9298efc69c.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3004ea302df468384135cd2540eb5c44bba4a8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
