# exists_upcrossings_of_not_bounded_under

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4ab6cc0-ab48-6185-a4ea-468a71f349e1",
  "kind": "theorem",
  "lexical_name": "exists_upcrossings_of_not_bounded_under",
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
  "slug": "exists-upcrossings-of-not-bounded-under--eb4cc4e6f78053a36dbf29bc",
  "source": {
    "blob": "2b6ad1b40d452d54d1359a5cff20c3984b9d1240",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 541,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb4cc4e6f78053a36dbf29bcfcd5a45e50f1579b0908cc6ed39061e1ae96929d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4ab6cc0-ab48-6185-a4ea-468a71f349e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_upcrossings_of_not_bounded_under {ι : Type*} {l : Filter ι} {x : ι → ℝ}
    (hf : liminf (fun i => (Real.nnabs (x i) : ℝ≥0∞)) l ≠ ∞)
    (hbdd : ¬IsBoundedUnder (· ≤ ·) l fun i => |x i|) :
    ∃ a b : ℚ, a < b ∧ (∃ᶠ i in l, x i < a) ∧ ∃ᶠ i in l, ↑b < x i := by
  rw [isBoundedUnder_le_abs, not_and_or] at hbdd
  obtain hbdd | hbdd := hbdd
  · obtain ⟨R, hR⟩ := exists_frequently_lt_of_liminf_ne_top hf
    obtain ⟨q, hq⟩ := exists_rat_gt R
    refine ⟨q, q + 1, (lt_add_iff_pos_right _).2 zero_lt_one, ?_, ?_⟩
    · refine fun hcon => hR ?_
      filter_upwards [hcon] with x hx using not_lt.2 (lt_of_lt_of_le hq (not_lt.1 hx)).le
    · simp only [IsBoundedUnder, IsBounded, eventually_map, eventually_atTop, not_exists,
        not_forall, not_le, exists_prop] at hbdd
      refine fun hcon => hbdd ↑(q + 1) ?_
      filter_upwards [hcon] with x hx using not_lt.1 hx
  · obtain ⟨R, hR⟩ := exists_frequently_lt_of_liminf_ne_top' hf
    obtain ⟨q, hq⟩ := exists_rat_lt R
    refine ⟨q - 1, q, (sub_lt_self_iff _).2 zero_lt_one, ?_, ?_⟩
    · simp only [IsBoundedUnder, IsBounded, eventually_map, eventually_atTop, not_exists,
        not_forall, not_le, exists_prop] at hbdd
      refine fun hcon => hbdd ↑(q - 1) ?_
      filter_upwards [hcon] with x hx using not_lt.1 hx
    · refine fun hcon => hR ?_
      filter_upwards [hcon] with x hx using not_lt.2 ((not_lt.1 hx).trans hq.le)

end Liminf

section tsum

variable {f g : α → ℝ≥0∞}

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b6ad1b40d452d54d1359a5cff20c3984b9d1240` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
