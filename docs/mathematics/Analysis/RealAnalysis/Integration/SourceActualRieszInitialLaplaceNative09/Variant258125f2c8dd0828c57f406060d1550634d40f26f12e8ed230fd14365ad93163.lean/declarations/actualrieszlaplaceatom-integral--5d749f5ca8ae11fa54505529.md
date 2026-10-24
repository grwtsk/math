# actualRieszLaplaceAtom_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5668e2d6-f73a-3da7-2eee-29fb5b61a19b",
  "kind": "theorem",
  "lexical_name": "actualRieszLaplaceAtom_integral",
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
  "slug": "actualrieszlaplaceatom-integral--5d749f5ca8ae11fa54505529",
  "source": {
    "blob": "b2d31de645b729bf5a5471216944468ddb4d7a9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 367,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d749f5ca8ae11fa545055298b7ebfa5c1994b622fbfdf6e18814efa69aa2db7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5668e2d6-f73a-3da7-2eee-29fb5b61a19b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszLaplaceAtom_integral {z : ℂ} (hz : 0 < z.re) (n : ℕ) :
    (∫ t in Ioi 0, actualRieszLaplaceAtom z n t) =
      LSeries.term (fun n => (ArithmeticFunction.vonMangoldt n : ℂ)) (z + 1 / 2) n /
        z^2 := by
  by_cases hn : n = 0
  · subst n
    simp [actualRieszLaplaceAtom]
  · have hn0 : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
    have ha : 0 ≤ Real.log (n : ℝ) :=
      Real.log_nonneg (by exact_mod_cast Nat.one_le_iff_ne_zero.mpr hn)
    simp_rw [atom_factor]
    rw [integral_const_mul, actualSingleRieszRamp_integral hz ha,
      LSeries.term_def₀ (by simp)]
    have hsqrt : (Real.sqrt (n : ℝ) : ℂ) = Complex.exp ((Real.log n : ℂ) / 2) := by
      rw [← Complex.ofReal_ofNat 2, ← Complex.ofReal_div, ← Complex.ofReal_exp]
      congr 1
      symm
      rw [Real.exp_half, Real.exp_log hn0]
    rw [Complex.ofReal_div, hsqrt, Complex.cpow_def_of_ne_zero (by exact_mod_cast hn),
      ← Complex.natCast_log]
    rw [div_eq_mul_inv, ← Complex.exp_neg, mul_assoc, ← mul_div_assoc, ← Complex.exp_add]
    have he : -((Real.log n : ℂ) / 2) + -z * (Real.log n : ℂ) =
        (Real.log n : ℂ) * -(z + 1 / 2) := by ring
    rw [he, mul_div_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variant258125f2c8dd0828c57f406060d1550634d40f26f12e8ed230fd14365ad93163.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d31de645b729bf5a5471216944468ddb4d7a9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
