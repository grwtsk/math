# convs_toEuler_of_forall_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b083f00-032a-a106-0e44-833a9d9d8701",
  "kind": "theorem",
  "lexical_name": "convs_toEuler_of_forall_le",
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
  "slug": "convs-toeuler-of-forall-le--c34a3572ab2fe6c0339f7956",
  "source": {
    "blob": "f52dc96cc0a8c1503ec18c1e119429dbf2a0a4da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 275,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c34a3572ab2fe6c0339f7956405d3b3df4e3edeae98396034cff4986d1234815",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b083f00-032a-a106-0e44-833a9d9d8701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convs_toEuler_of_forall_le (hB : ∀ m ≤ n, g.dens m ≠ 0) :
    ∀ m ≤ n, g.toEuler.convs m = g.convs m := by
  intro m hm
  conv_lhs => simp [convs]
  induction m using Nat.strong_induction_on with | h m ih =>
  match m with
  | 0 => simp [toEuler, euler_h]
  | m + 1 =>
  replace ih := fun m hm => ih m hm <| by omega
  rw [← sub_left_inj (a := g.convs m), ← ih m m.lt_add_one]
  rcases Decidable.em <| TerminatedAt g m with terminatedAt_m | not_terminatedAt_m
  · rw [nums_stable_of_terminated m.le_succ <| terminatedAt_toEuler.mpr terminatedAt_m,
      sub_self, ih m m.lt_add_one,
      g.convs_stable_of_terminated m.lt_add_one.le terminatedAt_m, sub_self]
  obtain ⟨⟨a, b⟩, g_mth_eq⟩ : ∃ gp, g.s.get? m = some gp :=
    Option.ne_none_iff_exists'.mp not_terminatedAt_m
  match m with
  | 0 =>
    have g_toEuler_zeroth_eq : g.toEuler.s.get? 0 = some ⟨a / b, 1⟩ := by
      simp [toEuler_s_zero, g_mth_eq]
    simp only [zero_add, zeroth_num_eq_h, sub_left_inj]
    simp only [convs, first_num_eq g_mth_eq, first_den_eq g_mth_eq,
      first_num_eq g_toEuler_zeroth_eq, one_mul]
    rw [add_div, mul_div_cancel_left₀ _ fun nh => hB 1 hm
      (first_den_eq g_mth_eq ▸ nh), toEuler, euler_h]
  | m + 1 =>
    have g_toEuler_mth_eq : g.toEuler.s.get? (m + 1) =
        some ⟨a * g.dens m / g.dens (m + 2), 1 - a * g.dens m / g.dens (m + 2)⟩ := by
      simp only [toEuler_s_succ, g_mth_eq, Option.map_some]
    grind [nums_recurrence g_mth_eq rfl rfl, dens_recurrence g_mth_eq rfl rfl,
      nums_recurrence g_toEuler_mth_eq rfl rfl, convs, hB m, hB (m + 1), hB (m + 2)]

/-- The transformation `toEuler` preserves the convergents. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f52dc96cc0a8c1503ec18c1e119429dbf2a0a4da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
