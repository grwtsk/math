# long_diagonal_prime_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37dd3318-cd61-c70b-803b-d1907c38ce06",
  "kind": "theorem",
  "lexical_name": "long_diagonal_prime_coefficient",
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
  "slug": "long-diagonal-prime-coefficient--d179b6242501f9bae5ded35e",
  "source": {
    "blob": "654db9426a80c64ded724f1934761f27fb97fa01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variantc475eac5b4afca7182b8c58d9f0d95b98ddc11ae4a977ab00ab6fb156ac07db6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d179b6242501f9bae5ded35e79ebd0cc737c9cea3a169e255352d794971a9b82",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variantc475eac5b4afca7182b8c58d9f0d95b98ddc11ae4a977ab00ab6fb156ac07db6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37dd3318-cd61-c70b-803b-d1907c38ce06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem long_diagonal_prime_coefficient (U p : ℕ) (hU : 1 ≤ U)
    (hp : p.Prime) (hUp : U < p) :
    vonMangoldt p * beta U p = -Real.log (p : ℝ) := by
  have hb := beta_prime_pow U p 1 hU hp (by omega)
  simp only [pow_one, if_pos hUp] at hb
  rw [hb, vonMangoldt_apply_prime hp]
  ring

/-- The combined three short arithmetic coefficients, before the actual source weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variantc475eac5b4afca7182b8c58d9f0d95b98ddc11ae4a977ab00ab6fb156ac07db6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variantc475eac5b4afca7182b8c58d9f0d95b98ddc11ae4a977ab00ab6fb156ac07db6.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `654db9426a80c64ded724f1934761f27fb97fa01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
