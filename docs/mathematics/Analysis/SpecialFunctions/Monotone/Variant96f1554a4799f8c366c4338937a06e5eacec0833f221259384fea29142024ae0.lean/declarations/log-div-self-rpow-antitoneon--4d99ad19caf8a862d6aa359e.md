# log_div_self_rpow_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0d84714-c7c8-1267-d002-4a4fb7f41864",
  "kind": "theorem",
  "lexical_name": "log_div_self_rpow_antitoneOn",
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
  "slug": "log-div-self-rpow-antitoneon--4d99ad19caf8a862d6aa359e",
  "source": {
    "blob": "28c2fee670b81c2d4a328ec89d339144e3bf2e12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 65,
    "path": "GRWTSK/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d99ad19caf8a862d6aa359ecf9dfe0e6e6c08a7db7914c57b137f64901809e5",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0d84714-c7c8-1267-d002-4a4fb7f41864`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_div_self_rpow_antitoneOn {a : ℝ} (ha : 0 < a) :
    AntitoneOn (fun x : ℝ => log x / x ^ a) { x | exp (1 / a) ≤ x } := by
  simp only [AntitoneOn, mem_setOf_eq]
  intro x hex y _ hxy
  have x_pos : 0 < x := lt_of_lt_of_le (exp_pos (1 / a)) hex
  have y_pos : 0 < y := by linarith
  have x_nonneg : 0 ≤ x := le_trans (le_of_lt (exp_pos (1 / a))) hex
  have y_nonneg : 0 ≤ y := by linarith
  nth_rw 1 [← rpow_one y]
  nth_rw 1 [← rpow_one x]
  rw [← div_self (ne_of_lt ha).symm, div_eq_mul_one_div a a, rpow_mul y_nonneg, rpow_mul x_nonneg,
    log_rpow (rpow_pos_of_pos y_pos a), log_rpow (rpow_pos_of_pos x_pos a), mul_div_assoc,
    mul_div_assoc, mul_le_mul_left (one_div_pos.mpr ha)]
  · refine' log_div_self_antitoneOn _ _ _
    · simp only [Set.mem_setOf_eq]
      convert rpow_le_rpow _ hex (le_of_lt ha) using 1
      rw [← exp_mul]
      simp only [Real.exp_eq_exp]
      field_simp [(ne_of_lt ha).symm]
      exact le_of_lt (exp_pos (1 / a))
    · simp only [Set.mem_setOf_eq]
      convert rpow_le_rpow _ (_root_.trans hex hxy) (le_of_lt ha) using 1
      rw [← exp_mul]
      simp only [Real.exp_eq_exp]
      field_simp [(ne_of_lt ha).symm]
      exact le_of_lt (exp_pos (1 / a))
    exact rpow_le_rpow x_nonneg hxy (le_of_lt ha)
#align real.log_div_self_rpow_antitone_on Real.log_div_self_rpow_antitoneOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c2fee670b81c2d4a328ec89d339144e3bf2e12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
