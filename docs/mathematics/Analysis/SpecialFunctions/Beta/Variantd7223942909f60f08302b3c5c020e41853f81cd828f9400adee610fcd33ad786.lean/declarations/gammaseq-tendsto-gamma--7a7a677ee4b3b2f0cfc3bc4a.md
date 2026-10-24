# GammaSeq_tendsto_Gamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:775db44f-9c7d-d6f3-1247-098fd1508ef3",
  "kind": "theorem",
  "lexical_name": "GammaSeq_tendsto_Gamma",
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
  "slug": "gammaseq-tendsto-gamma--7a7a677ee4b3b2f0cfc3bc4a",
  "source": {
    "blob": "759ae5f8971be63fe142c316a5312b1e18c65dc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 344,
    "path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a7a677ee4b3b2f0cfc3bc4afc88eeea74c863570f6e1a4a5178e5dfbc6cea9c",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:775db44f-9c7d-d6f3-1247-098fd1508ef3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GammaSeq_tendsto_Gamma (s : ℂ) : Tendsto (GammaSeq s) atTop (𝓝 <| Gamma s) := by
  suffices ∀ m : ℕ, -↑m < re s → Tendsto (GammaSeq s) atTop (𝓝 <| GammaAux m s) by
    rw [Gamma]
    apply this
    rw [neg_lt]
    rcases lt_or_le 0 (re s) with (hs | hs)
    · exact (neg_neg_of_pos hs).trans_le (Nat.cast_nonneg _)
    · refine (Nat.lt_floor_add_one _).trans_le ?_
      rw [sub_eq_neg_add, Nat.floor_add_one (neg_nonneg.mpr hs), Nat.cast_add_one]
  intro m
  induction' m with m IH generalizing s
  · -- Base case: `0 < re s`, so Gamma is given by the integral formula
    intro hs
    rw [Nat.cast_zero, neg_zero] at hs
    rw [← Gamma_eq_GammaAux]
    · refine Tendsto.congr' ?_ (approx_Gamma_integral_tendsto_Gamma_integral hs)
      refine (eventually_ne_atTop 0).mp (Eventually.of_forall fun n hn => ?_)
      exact (GammaSeq_eq_approx_Gamma_integral hs hn).symm
    · rwa [Nat.cast_zero, neg_lt_zero]
  · -- Induction step: use recurrence formulae in `s` for Gamma and GammaSeq
    intro hs
    rw [Nat.cast_succ, neg_add, ← sub_eq_add_neg, sub_lt_iff_lt_add, ← one_re, ← add_re] at hs
    rw [GammaAux]
    have := @Tendsto.congr' _ _ _ ?_ _ _
      ((eventually_ne_atTop 0).mp (Eventually.of_forall fun n hn => ?_)) ((IH _ hs).div_const s)
    pick_goal 3; · exact GammaSeq_add_one_left s hn -- doesn't work if inlined?
    conv at this => arg 1; intro n; rw [mul_comm]
    rwa [← mul_one (GammaAux m (s + 1) / s), tendsto_mul_iff_of_ne_zero _ (one_ne_zero' ℂ)] at this
    simp_rw [add_assoc]
    exact tendsto_natCast_div_add_atTop (1 + s)

end Complex

end LimitFormula

section GammaReflection

/-! ## The reflection formula -/


namespace Complex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `759ae5f8971be63fe142c316a5312b1e18c65dc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
