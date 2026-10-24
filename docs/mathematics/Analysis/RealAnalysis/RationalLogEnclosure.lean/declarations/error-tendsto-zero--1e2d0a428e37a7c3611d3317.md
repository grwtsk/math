# error_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbd6ad29-baab-50d7-cbc8-e6c7ed60612f",
  "kind": "theorem",
  "lexical_name": "error_tendsto_zero",
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
  "slug": "error-tendsto-zero--1e2d0a428e37a7c3611d3317",
  "source": {
    "blob": "1b240a6bfa660e8396ad14beb4ef3948a21c4b09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 205,
    "path": "GRWTSK/Analysis/Real/RationalLogEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e2d0a428e37a7c3611d33178a3e352ca89c37507070bcaaef625a8b36c9abaf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RationalLogEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbd6ad29-baab-50d7-cbc8-e6c7ed60612f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem error_tendsto_zero (p : DyadicInput t) (hm : p.mantissa ≤ 2) :
    Tendsto (fun K : ℕ => ((p.withTerms K).error : ℝ)) atTop (𝓝 0) := by
  have hb (K : ℕ) : ((p.withTerms K).error : ℝ) ≤
      (((p.exponent : ℝ) + 1) * (3 / 8 : ℝ)) * (1 / 9 : ℝ) ^ K := by
    have h := (p.withTerms K).reduced_error_le hm
    change (p.withTerms K).error ≤ ((p.exponent : ℚ) + 1) * (3 / 8 : ℚ) * (1 / 9 : ℚ) ^ K at h
    have hcast := (Rat.cast_le (K := ℝ)).2 h
    simpa only [Rat.cast_mul, Rat.cast_add, Rat.cast_natCast, Rat.cast_one,
      Rat.cast_div, Rat.cast_ofNat, Rat.cast_pow] using hcast
  have ht := (tendsto_pow_atTop_nhds_zero_of_lt_one
    (by norm_num : (0 : ℝ) ≤ 1 / 9) (by norm_num : (1 / 9 : ℝ) < 1)).const_mul
      (((p.exponent : ℝ) + 1) * (3 / 8 : ℝ))
  exact squeeze_zero (fun K => by exact_mod_cast (p.withTerms K).error_nonneg)
    hb (by simpa using ht)

end DyadicInput
end GRWTSK.Analysis.Real.RationalLogEnclosure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/RationalLogEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/RationalLogEnclosure.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b240a6bfa660e8396ad14beb4ef3948a21c4b09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
