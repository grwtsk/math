# aevalAevalEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11c60ad7d0c5e5d06b61494d07c3bb00d94db4d581491cd76ca8704bed437f9f",
  "kind": "def",
  "lexical_name": "aevalAevalEquiv",
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
  "slug": "aevalaevalequiv--641bfb2869357a4669805c16",
  "source": {
    "blob": "b7b6952f5e49eaa9c71f8efa4be56a0a5677cb44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 221,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Bivariate/Variant8819789b9bf91cef22c40ffd06b9e337b35ad4a681f3ce625691109e079baba3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:641bfb2869357a4669805c16c75fbf4e5109fd056aa3a9209b69d0c7816c9825",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Bivariate/Variant8819789b9bf91cef22c40ffd06b9e337b35ad4a681f3ce625691109e079baba3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11c60ad7d0c5e5d06b61494d07c3bb00d94db4d581491cd76ca8704bed437f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def aevalAevalEquiv : A × A ≃ (R[X][Y] →ₐ[R] A) where
  toFun xy := aeval xy.fst |>.restrictScalars R |>.comp <|
    let := Polynomial.algebra; aeval (R := R[X]) (C xy.snd) |>.restrictScalars R
  invFun f := ⟨f <| C X, f Y⟩
  left_inv f := by simp
  right_inv f := algHom_ext' (by ext; simp) (by simp)

/-- Given valuations `x` and `y` of the variables in an `R`-algebra `A`, `aevalAeval x y` is
the unique `R`-algebra homomorphism from `R[X][Y]` to `A` sending `X` to `x` and `Y` to `y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Bivariate/Variant8819789b9bf91cef22c40ffd06b9e337b35ad4a681f3ce625691109e079baba3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Bivariate/Variant8819789b9bf91cef22c40ffd06b9e337b35ad4a681f3ce625691109e079baba3.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7b6952f5e49eaa9c71f8efa4be56a0a5677cb44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
