# bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db188ca6-cd6a-7ffb-935f-61a148a3a9fc",
  "kind": "theorem",
  "lexical_name": "bounds",
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
  "slug": "bounds--78eb2082fadb49ce775f9fb1",
  "source": {
    "blob": "1b240a6bfa660e8396ad14beb4ef3948a21c4b09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 145,
    "path": "GRWTSK/Analysis/Real/RationalLogEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78eb2082fadb49ce775f9fb150ace8221f7b88ce526a25db62698b544825b420",
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

Occurrence: `result:db188ca6-cd6a-7ffb-935f-61a148a3a9fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bounds (p : DyadicInput t) :
    (p.lowerValue : ℝ) ≤ Real.log t ∧
      Real.log t ≤ (p.lowerValue : ℝ) + (p.totalWidth : ℝ) := by
  have hm := log_bounds p.mantissa p.mantissa_ge_one p.terms
  have h2 := log_bounds 2 (by norm_num) p.terms
  have hmp : (0 : ℝ) < p.mantissa := by
    have h : (1 : ℝ) ≤ p.mantissa := by exact_mod_cast p.mantissa_ge_one
    linarith
  have he : Real.log t = (p.exponent : ℝ) * Real.log 2 + Real.log (p.mantissa : ℝ) := by
    calc
      Real.log t = Real.log ((2 : ℝ) ^ p.exponent * (p.mantissa : ℝ)) :=
        congrArg Real.log p.source_eq
      _ = _ := by rw [Real.log_mul (by positivity) hmp.ne', Real.log_pow]
  have hl := mul_le_mul_of_nonneg_left h2.1 (Nat.cast_nonneg p.exponent : (0 : ℝ) ≤ p.exponent)
  have hu := mul_le_mul_of_nonneg_left h2.2 (Nat.cast_nonneg p.exponent : (0 : ℝ) ≤ p.exponent)
  simp only [Rat.cast_ofNat] at hl hu
  rw [he]
  simp only [lowerValue, totalWidth, Rat.cast_add, Rat.cast_mul, Rat.cast_natCast]
  constructor <;> nlinarith [hm.1, hm.2]

/-- Midpoint conversion uses half the COMPLETE width, not half a next term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/RationalLogEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/RationalLogEnclosure.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b240a6bfa660e8396ad14beb4ef3948a21c4b09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
