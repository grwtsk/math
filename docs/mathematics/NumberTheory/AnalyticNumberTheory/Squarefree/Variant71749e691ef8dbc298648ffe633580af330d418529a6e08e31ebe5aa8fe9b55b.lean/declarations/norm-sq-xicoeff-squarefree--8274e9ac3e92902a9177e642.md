# norm_sq_xiCoeff_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8054697-26cf-ea93-c7ef-f1378aeeaee6",
  "kind": "theorem",
  "lexical_name": "norm_sq_xiCoeff_squarefree",
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
  "slug": "norm-sq-xicoeff-squarefree--8274e9ac3e92902a9177e642",
  "source": {
    "blob": "76d3a5d6eb42f86ed1f97f8a522fb4ecda4c5701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 228,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8274e9ac3e92902a9177e642dafe42830e30183845031e2a3e44f625d2632672",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8054697-26cf-ea93-c7ef-f1378aeeaee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sq_xiCoeff_squarefree {N : ℕ} (hN : Squarefree N) (hk : 2 ≤ ω N) (Λs : ℂ)
    (hΛ : Λs ≠ 0) :
    ‖xiCoeff Λs N‖ ^ 2 = (‖Λs‖ ^ 2)⁻¹ ^ (ω N) * ((((ω N - 1).factorial : ℝ) ^ 2) / (ω N).factorial)
                           * (lamLog ^ (ω N)) N * Real.log N ^ 2 := by
  have _ := hΛ
  rw [xiCoeff_squarefree hN hk, lamLogPow_apply_squarefree hN, if_pos rfl]
  rw [norm_mul, norm_mul, norm_mul, norm_pow, norm_inv, Complex.norm_natCast, Complex.norm_real,
    Complex.norm_real, Real.norm_eq_abs, Real.norm_eq_abs]
  have hfac : ((ω N).factorial : ℝ) ≠ 0 := by exact_mod_cast (Nat.factorial_pos _).ne'
  have hb : (‖Λs‖ ^ 2)⁻¹ ^ ω N = (‖Λs‖⁻¹ ^ ω N) ^ 2 := by
    rw [← inv_pow, ← pow_mul, ← pow_mul, mul_comm]
  rw [prod_pow, hb, mul_pow, mul_pow, mul_pow, sq_abs, sq_abs]
  field_simp

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Squarefree/Variant71749e691ef8dbc298648ffe633580af330d418529a6e08e31ebe5aa8fe9b55b.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76d3a5d6eb42f86ed1f97f8a522fb4ecda4c5701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
