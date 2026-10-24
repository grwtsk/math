# vertical_inverse_power_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba255f59-354c-ab3e-7045-2b6478cac052",
  "kind": "theorem",
  "lexical_name": "vertical_inverse_power_integrable",
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
  "slug": "vertical-inverse-power-integrable--33469003d281bc9d9b9969e7",
  "source": {
    "blob": "c9bc39a09c98479ee5189965ddd77a914a1ef502",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 275,
    "path": "GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant2144586cf608775f0afc69142afff56c652e5fe5b83ccc78ab9bcd4368bf2707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33469003d281bc9d9b9969e75c73e640c1da68f2c025195401ab884286c075ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant2144586cf608775f0afc69142afff56c652e5fe5b83ccc78ab9bcd4368bf2707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba255f59-354c-ab3e-7045-2b6478cac052`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vertical_inverse_power_integrable (c : ℝ) (hc : 0 < c) (n : ℕ) (hn : 2 ≤ n) :
    Integrable (fun t : ℝ ↦ (((c : ℂ) + (t : ℂ) * Complex.I) ^ n)⁻¹) := by
  have hn2 : n = 2 + (n - 2) := by omega
  rw [hn2]
  simp_rw [pow_add, mul_inv_rev]
  have hi : Integrable (fun t : ℝ ↦ (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2)⁻¹) := by
    apply (vertical_inverse_square_integrable c hc.ne').mono' (by fun_prop)
    filter_upwards [] with t
    simp [norm_inv, norm_pow]
  have hb : ∀ t : ℝ, ‖(((c : ℂ) + (t : ℂ) * Complex.I) ^ (n - 2))⁻¹‖ ≤
      c⁻¹ ^ (n - 2) := by
    intro t
    rw [norm_inv, norm_pow, ← inv_pow]
    apply pow_le_pow_left₀ (by positivity)
    have hnorm : 0 < ‖(c : ℂ) + (t : ℂ) * Complex.I‖ := by
      apply norm_pos_iff.mpr
      intro hz
      have hre := congrArg Complex.re hz
      simp at hre
      linarith
    apply (inv_le_inv₀ hnorm hc).mpr
    simpa [abs_of_pos hc] using Complex.abs_re_le_norm ((c : ℂ) + (t : ℂ) * Complex.I)
  exact hi.bdd_mul (c := c⁻¹ ^ (n - 2)) (by fun_prop) (Filter.Eventually.of_forall hb)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant2144586cf608775f0afc69142afff56c652e5fe5b83ccc78ab9bcd4368bf2707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/40f450946a68f4d1083774f2c91b5a29ae8b32ea5282850bccde68e9bef9285dPrimePowerPerron/Variant2144586cf608775f0afc69142afff56c652e5fe5b83ccc78ab9bcd4368bf2707.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9bc39a09c98479ee5189965ddd77a914a1ef502` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
