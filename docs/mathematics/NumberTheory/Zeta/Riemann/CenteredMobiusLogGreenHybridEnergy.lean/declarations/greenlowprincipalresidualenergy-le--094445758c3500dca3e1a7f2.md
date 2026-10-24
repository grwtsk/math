# greenLowPrincipalResidualEnergy_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed0e32b2-52a9-3549-9853-68283a44e866",
  "kind": "theorem",
  "lexical_name": "greenLowPrincipalResidualEnergy_le",
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
  "slug": "greenlowprincipalresidualenergy-le--094445758c3500dca3e1a7f2",
  "source": {
    "blob": "6151e9a9a0e9b27580e5cc24e3984af2a31089f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 24,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:094445758c3500dca3e1a7f28034a9387d561cfd3b07dd6a656f8a411a4c526e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed0e32b2-52a9-3549-9853-68283a44e866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenLowPrincipalResidualEnergy_le
    {X : ℕ} (hX : 1 ≤ X) :
    greenLowPrincipalResidualEnergy X ≤
      (1 + 1 / Real.pi)^2 / (X : ℝ) := by
  unfold greenLowPrincipalResidualEnergy
  have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
  calc
    _ ≤ ∑ _k ∈ greenLowPrincipalHead X,
        (((1 + 1 / Real.pi) / (X : ℝ)) ^ 2) := by
      apply Finset.sum_le_sum
      intro k hk
      have hk0 : k ≠ 0 := Finset.ne_of_mem_erase hk
      have h := norm_greenCenteringResidual_le_explicit hX hk0
      have hkone : (1 : ℝ) ≤ |(k : ℝ)| := by
        exact_mod_cast Int.one_le_abs hk0
      have hfreq :
          1 + 1 / (Real.pi * |(k : ℝ)|) ≤ 1 + 1 / Real.pi := by
        gcongr
        exact one_div_le_one_div_of_le Real.pi_pos (by nlinarith)
      have hnorm := h.trans (div_le_div_of_nonneg_right hfreq hXr.le)
      nlinarith [sq_nonneg ‖greenCenteringResidual X k‖]
    _ = (greenLowPrincipalHead X).card *
        (((1 + 1 / Real.pi) / (X : ℝ)) ^ 2) := by
      rw [Finset.sum_const_nat]
    _ ≤ (X : ℝ) * (((1 + 1 / Real.pi) / (X : ℝ)) ^ 2) := by
      gcongr
      exact_mod_cast card_greenLowPrincipalHead_le X
    _ = (1 + 1 / Real.pi)^2 / (X : ℝ) := by
      field_simp
      ring
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHybridEnergy.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6151e9a9a0e9b27580e5cc24e3984af2a31089f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
