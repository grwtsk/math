# hasSum_Λ_of_qExpansion_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9995dc693a71fb7685eef934df0b0978f7519f7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c500bce1e6133ca276cca6a6addb39849a9253bcc7be130a52a4fb6bc9e4741.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d9a8797-0f53-0392-d5d5-812c0c54dd65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f79e020-b63c-be1e-1d40-ef67589cc843",
  "kind": "lemma",
  "lexical_name": "hasSum_Λ_of_qExpansion_isBigO",
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
  "slug": "hassum-of-qexpansion-isbigo--9fb5a92c42d8bffa941900a5",
  "source": {
    "blob": "9995dc693a71fb7685eef934df0b0978f7519f7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 94,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LFunction/Variant9c500bce1e6133ca276cca6a6addb39849a9253bcc7be130a52a4fb6bc9e4741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fb5a92c42d8bffa941900a540bcdaeeedf6f4f131ed0b40d99545348d19bb21",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LFunction/Variant9c500bce1e6133ca276cca6a6addb39849a9253bcc7be130a52a4fb6bc9e4741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f79e020-b63c-be1e-1d40-ef67589cc843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma hasSum_Λ_of_qExpansion_isBigO {r : ℝ}
    (hpos : 0 < s.re) (hs : r + 1 < s.re)
    (hΛ : Λ hk f s = mellin (fun t ↦ (weakFEPair hk f).f t - (weakFEPair hk f).f₀) s)
    (hcoeff : (fun n ↦ (qExpansion (h Γ) f).coeff n) =O[atTop] fun n ↦ (n : ℝ) ^ r) :
    HasSum (fun n ↦ π ^ (-s) * Gamma s * (qExpansion (h Γ) f).coeff n /
      ↑(2 * n / h Γ : ℝ) ^ s) (Λ hk f s) := by
  rw [hΛ]
  have hh := Γ.strictWidthInfty_pos
  have hΓ := Γ.strictWidthInfty_mem_strictPeriods
  refine hasSum_mellin_pi_mul₀ (fun _ ↦ by positivity) hpos ?_ ?_
  · -- show `q`-expansion converges to `f` on positive imaginary axis
    intro t (ht : 0 < t)
    have := hasSum_qExpansion f hh hΓ (ofComplex (I * t))
    convert! hasSum_ite_sub_hasSum this 0 using 2 with n
    · rcases Nat.eq_zero_or_pos n with rfl | hn
      · simp
      · simp [hn.ne', Function.Periodic.qParam, ofComplex_apply_eq_ite, ht, ← exp_nat_mul]
        grind [I_sq]
    · simp only [weakFEPair]
      rw [qExpansion_coeff_zero hh, pow_zero, mul_one]
      · exact ModularFormClass.analyticAt_cuspFunction_zero f hh hΓ
      · exact SlashInvariantFormClass.periodic_comp_ofComplex f hΓ
  · -- show summability of Dirichlet series
    simp_rw [mul_comm (2 : ℝ), mul_div_assoc,
      Real.mul_rpow (Nat.cast_nonneg _) (show 0 ≤ 2 / h Γ by positivity), ← div_div]
    apply Summable.div_const
    apply summable_of_isBigO_nat (Real.summable_nat_rpow.mpr <| show r - s.re < -1 by linarith)
    simp only [Real.rpow_sub' (Nat.cast_nonneg _) (show r - s.re ≠ 0 by linarith)]
    apply IsBigO.mul _ (isBigO_refl _ _)
    simpa using hcoeff.norm_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LFunction/Variant9c500bce1e6133ca276cca6a6addb39849a9253bcc7be130a52a4fb6bc9e4741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LFunction/Variant9c500bce1e6133ca276cca6a6addb39849a9253bcc7be130a52a4fb6bc9e4741.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9995dc693a71fb7685eef934df0b0978f7519f7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
