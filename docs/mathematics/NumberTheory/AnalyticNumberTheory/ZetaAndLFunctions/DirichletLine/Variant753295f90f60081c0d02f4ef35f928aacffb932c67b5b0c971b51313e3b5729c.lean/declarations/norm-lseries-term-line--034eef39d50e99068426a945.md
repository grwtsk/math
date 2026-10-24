# norm_LSeries_term_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7249f2c-1360-9c79-f96f-2e88dcffd829",
  "kind": "theorem",
  "lexical_name": "norm_LSeries_term_line",
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
  "slug": "norm-lseries-term-line--034eef39d50e99068426a945",
  "source": {
    "blob": "7ab24618853daeb6c2ef5214ca2f76f0f75a906f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:034eef39d50e99068426a945b38ee73f73c7b7dc3fc601ade1f9d2f7f0766677",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7249f2c-1360-9c79-f96f-2e88dcffd829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_LSeries_term_line (a : ℕ → ℂ) (c t : ℝ) (n : ℕ) :
    ‖LSeries.term a ((c : ℂ) + t * I) n‖ = if n = 0 then (0:ℝ) else ‖a n‖ * ((n:ℝ) ^ (-c)) := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp [LSeries.term_zero]
  · have hre : ((c:ℂ) + t * I).re = c := by simp
    rw [LSeries.term_of_ne_zero hn, norm_div,
      Complex.norm_natCast_cpow_of_pos (Nat.pos_of_ne_zero hn), hre, if_neg hn,
      Real.rpow_neg (Nat.cast_nonneg n), div_eq_mul_inv]

/-- Step 1 (pointwise): H(c+it) · L(a, c+it) = Σ' paperFT(tilt k (c−1/2)) t · term_N. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ab24618853daeb6c2ef5214ca2f76f0f75a906f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
