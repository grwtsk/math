# dyadicShell_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9ccce00-6689-4687-54d3-ded44ec6cc71",
  "kind": "theorem",
  "lexical_name": "dyadicShell_card_le",
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
  "slug": "dyadicshell-card-le--f9cdc57ed322a8ed1c89c5c2",
  "source": {
    "blob": "45b7dc87611831c52cfd902ad80de71c58f773cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 151,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9cdc57ed322a8ed1c89c5c25a7440a34371a6f9e080959c3a5717ffa5a3f0ae",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9ccce00-6689-4687-54d3-ded44ec6cc71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicShell_card_le {C T : ℝ} (hc : PositiveCountBound C) (hT : 2 ≤ T)
    (k : ℕ) :
    (Nat.card (DyadicShell T (by linarith) k) : ℝ) ≤
      4*C*(2:ℝ)^k*T*((k:ℝ)+2)*Real.log T := by
  have hp : 0 < T := by linarith
  have hC : 0 < C := hc.1
  have hu : 2 ≤ (2:ℝ)^(k+1)*T := by
    have hw : (1:ℝ) ≤ (2:ℝ)^(k+1) := one_le_pow₀ (by norm_num)
    nlinarith
  have := nonzeroPrefix_finite ((2:ℝ)^(k+1)*T)
  have hcard : (Nat.card (DyadicShell T hp k) : ℝ) ≤
      Nat.card (NonzeroPrefix ((2:ℝ)^(k+1)*T)) := by
    exact_mod_cast Nat.card_le_card_of_injective
      (shellToPrefix T hp k) (shellToPrefix_injective T hp k)
  have hb := hcard.trans (nonzeroPrefix_card_le ((2:ℝ)^(k+1)*T))
  have hcount := mul_le_mul_of_nonneg_left (hc.2 _ hu) (by norm_num : (0:ℝ)≤2)
  have hlog : Real.log 2 ≤ Real.log T := Real.log_le_log (by norm_num) hT
  have hlogu : Real.log ((2:ℝ)^(k+1)*T) =
      Real.log T+((k:ℝ)+1)*Real.log 2 := by
    rw [Real.log_mul (by positivity) hp.ne', Real.log_pow]
    push_cast
    ring
  have hl : Real.log ((2:ℝ)^(k+1)*T) ≤ ((k:ℝ)+2)*Real.log T := by
    rw [hlogu]
    have hm := mul_le_mul_of_nonneg_left hlog (by positivity : (0:ℝ)≤(k:ℝ)+1)
    linarith
  calc
    _ ≤ 2*(C*((2:ℝ)^(k+1)*T)*Real.log ((2:ℝ)^(k+1)*T)) := hb.trans hcount
    _ ≤ 2*(C*((2:ℝ)^(k+1)*T)*(((k:ℝ)+2)*Real.log T)) := by
      gcongr
    _ = _ := by rw [pow_succ]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variante227a82f4118312ba4e4726827b0b2e9ab0b1adcec807088ec7ea9195fc86765.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45b7dc87611831c52cfd902ad80de71c58f773cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
