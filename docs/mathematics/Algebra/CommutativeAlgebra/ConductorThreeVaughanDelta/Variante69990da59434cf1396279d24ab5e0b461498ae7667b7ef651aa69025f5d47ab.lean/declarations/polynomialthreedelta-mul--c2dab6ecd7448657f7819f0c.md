# polynomialThreeDelta_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e673403-7e1d-0b62-5462-ce046d9335c1",
  "kind": "theorem",
  "lexical_name": "polynomialThreeDelta_mul",
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
  "slug": "polynomialthreedelta-mul--c2dab6ecd7448657f7819f0c",
  "source": {
    "blob": "64b8769f0118dfed7d23d71b7ba9a43d316afd43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 400,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variante69990da59434cf1396279d24ab5e0b461498ae7667b7ef651aa69025f5d47ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2dab6ecd7448657f7819f0c0cfc5ebeee62cc6e20652b117e66dd01fe56a905",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variante69990da59434cf1396279d24ab5e0b461498ae7667b7ef651aa69025f5d47ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e673403-7e1d-0b62-5462-ce046d9335c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomialThreeDelta_mul {N : ℕ}
    (a b : VaughanDeltaPolynomial N) :
    polynomialThreeDelta (a * b) =
      a ^ 3 * polynomialThreeDelta b +
        b ^ 3 * polynomialThreeDelta a +
        3 * polynomialThreeDelta a * polynomialThreeDelta b := by
  apply mul_left_cancel₀ (show (3 : VaughanDeltaPolynomial N) ≠ 0 by norm_num)
  calc
    3 * polynomialThreeDelta (a * b) =
        a * b - (a * b) ^ 3 :=
      three_mul_polynomialThreeDelta (a * b)
    _ = a ^ 3 * (b - b ^ 3) + b ^ 3 * (a - a ^ 3) +
        (a - a ^ 3) * (b - b ^ 3) := by ring
    _ = a ^ 3 * (3 * polynomialThreeDelta b) +
        b ^ 3 * (3 * polynomialThreeDelta a) +
        (3 * polynomialThreeDelta a) *
          (3 * polynomialThreeDelta b) := by
      rw [three_mul_polynomialThreeDelta, three_mul_polynomialThreeDelta]
    _ = 3 * (a ^ 3 * polynomialThreeDelta b +
        b ^ 3 * polynomialThreeDelta a +
        3 * polynomialThreeDelta a * polynomialThreeDelta b) := by ring

@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variante69990da59434cf1396279d24ab5e0b461498ae7667b7ef651aa69025f5d47ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variante69990da59434cf1396279d24ab5e0b461498ae7667b7ef651aa69025f5d47ab.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b8769f0118dfed7d23d71b7ba9a43d316afd43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
