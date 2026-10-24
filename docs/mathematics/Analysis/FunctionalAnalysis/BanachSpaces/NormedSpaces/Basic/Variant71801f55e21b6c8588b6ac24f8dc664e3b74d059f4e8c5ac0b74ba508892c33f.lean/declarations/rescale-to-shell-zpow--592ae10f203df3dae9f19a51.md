# rescale_to_shell_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6888bb3-5193-16eb-b464-7be6e71891eb",
  "kind": "lemma",
  "lexical_name": "rescale_to_shell_zpow",
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
  "slug": "rescale-to-shell-zpow--592ae10f203df3dae9f19a51",
  "source": {
    "blob": "9a21947520209d1952d4e4cdb6de9a5ea55a06c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1269,
    "line": 1242,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:592ae10f203df3dae9f19a51abf766b481ec0bedb837453253110894997d422a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6888bb3-5193-16eb-b464-7be6e71891eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1242–1269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rescale_to_shell_zpow (p : Seminorm 𝕜 E) {c : 𝕜} (hc : 1 < ‖c‖) {ε : ℝ}
    (εpos : 0 < ε) {x : E} (hx : p x ≠ 0) : ∃ n : ℤ, c ^ n ≠ 0 ∧
    p (c ^ n • x) < ε ∧ (ε / ‖c‖ ≤ p (c ^ n • x)) ∧ (‖c ^ n‖⁻¹ ≤ ε⁻¹ * ‖c‖ * p x) := by
  have xεpos : 0 < (p x) / ε := by positivity
  rcases exists_mem_Ico_zpow xεpos hc with ⟨n, hn⟩
  have cpos : 0 < ‖c‖ := by positivity
  have cnpos : 0 < ‖c ^ (n + 1)‖ := by rw [norm_zpow]; exact xεpos.trans hn.2
  refine ⟨-(n + 1), ?_, ?_, ?_, ?_⟩
  · show c ^ (-(n + 1)) ≠ 0; exact zpow_ne_zero _ (norm_pos_iff.1 cpos)
  · show p ((c ^ (-(n + 1))) • x) < ε
    rw [map_smul_eq_mul, zpow_neg, norm_inv, ← div_eq_inv_mul, div_lt_iff₀ cnpos, mul_comm,
        norm_zpow]
    exact (div_lt_iff₀ εpos).1 (hn.2)
  · show ε / ‖c‖ ≤ p (c ^ (-(n + 1)) • x)
    rw [zpow_neg, div_le_iff₀ cpos, map_smul_eq_mul, norm_inv, norm_zpow, zpow_add₀ (ne_of_gt cpos),
        zpow_one, mul_inv_rev, mul_comm, ← mul_assoc, ← mul_assoc, mul_inv_cancel₀ (ne_of_gt cpos),
        one_mul, ← div_eq_inv_mul, le_div_iff₀ (zpow_pos cpos _), mul_comm]
    exact (le_div_iff₀ εpos).1 hn.1
  · show ‖(c ^ (-(n + 1)))‖⁻¹ ≤ ε⁻¹ * ‖c‖ * p x
    have : ε⁻¹ * ‖c‖ * p x = ε⁻¹ * p x * ‖c‖ := by ring
    rw [zpow_neg, norm_inv, inv_inv, norm_zpow, zpow_add₀ (ne_of_gt cpos), zpow_one, this,
        ← div_eq_inv_mul]
    gcongr; exact hn.1

/-- Let `p` be a seminorm on a vector space over a `NormedField`.
If there is a scalar `c` with `‖c‖>1`, then any `x` such that `p x ≠ 0` can be
moved by scalar multiplication to any `p`-shell of width `‖c‖`. Also recap information on the
value of `p` on the rescaling element that shows up in applications. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean#L1242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a21947520209d1952d4e4cdb6de9a5ea55a06c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
