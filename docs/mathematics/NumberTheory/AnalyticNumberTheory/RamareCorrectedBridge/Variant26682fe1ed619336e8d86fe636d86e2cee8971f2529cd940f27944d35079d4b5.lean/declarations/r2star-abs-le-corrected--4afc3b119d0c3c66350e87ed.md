# r2Star_abs_le_corrected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66cb484d-da6a-4f82-e6b1-44cef878c2f6",
  "kind": "theorem",
  "lexical_name": "r2Star_abs_le_corrected",
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
  "slug": "r2star-abs-le-corrected--4afc3b119d0c3c66350e87ed",
  "source": {
    "blob": "3d0eef3f07450b8199acad938667e8229ec1654f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 569,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4afc3b119d0c3c66350e87ed87d778e440042d940d5cbe0e1d8503011c9ebbfd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66cb484d-da6a-4f82-e6b1-44cef878c2f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem r2Star_abs_le_corrected (N : Nat) (hN : 1 <= N) :
    |r2Star N| <= 1 + correctedR3 N + 2 * |correctedR4 N| := by
  rw [r2Star_eq_corrected N hN]
  let y := Real.sqrt (N : Real)
  let q := 2 * (N : Real) * firstMertensRemainder y -
    2 * y * chebyshevRemainder y
  let s := chebyshevRemainder y ^ 2
  let e := chebyshevRemainder (N : Real) * Real.log N
  let i := ∫ t in (1 : Real)..N, chebyshevRemainder t / t
  have hraw :
      |-1 + 2 * correctedR4 N + q - s - e + i| <=
        1 + 2 * |correctedR4 N| + |q| + |s| + |e| + |i| := by
    rw [abs_le]
    constructor <;>
      nlinarith [le_abs_self (correctedR4 N), neg_le_abs (correctedR4 N),
        le_abs_self q, neg_le_abs q, le_abs_self s, neg_le_abs s,
        le_abs_self e, neg_le_abs e, le_abs_self i, neg_le_abs i]
  have hNreal : (1 : Real) <= N := by exact_mod_cast hN
  have hlog0 : 0 <= Real.log (N : Real) := Real.log_nonneg hNreal
  have hy0 : 0 <= y := Real.sqrt_nonneg _
  have hy2 : y ^ 2 = (N : Real) := Real.sq_sqrt (by positivity)
  have hq : |q| =
      2 * y * |y * firstMertensRemainder y - chebyshevRemainder y| := by
    have hqeq : q =
        2 * y * (y * firstMertensRemainder y - chebyshevRemainder y) := by
      dsimp [q]
      rw [← hy2]
      ring
    rw [hqeq, abs_mul, abs_mul, abs_of_nonneg (by norm_num : (0 : Real) <= 2),
      abs_of_nonneg hy0]
  have hs : |s| = chebyshevRemainder y ^ 2 := by
    dsimp [s]
    exact abs_of_nonneg (sq_nonneg _)
  have he : |e| =
      |chebyshevRemainder (N : Real)| * Real.log N := by
    dsimp [e]
    rw [abs_mul, abs_of_nonneg hlog0]
  change
    |-1 + 2 * correctedR4 N + q - s - e + i| <=
      1 + correctedR3 N + 2 * |correctedR4 N|
  rw [hq, hs, he] at hraw
  unfold correctedR3
  dsimp [y, i]
  dsimp [y, q, s, e] at hraw
  nlinarith

#print axioms balanced_productCutoffSum
#print axioms vonMangoldt_convolution_hyperbola
#print axioms vonMangoldt_log_sum_eq
#print axioms vonMangoldt_convolution_eq_corrected
#print axioms integral_psi_div_eq_corrected
#print axioms r2Star_eq_corrected
#print axioms r2Star_abs_le_corrected

end MathExtras.RamareMertens2025
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0eef3f07450b8199acad938667e8229ec1654f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
