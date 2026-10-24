# eventually_pow_one_div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:672ff697-e223-9d38-75b7-ffb7134b4dbc",
  "kind": "theorem",
  "lexical_name": "eventually_pow_one_div_le",
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
  "slug": "eventually-pow-one-div-le--9631080ff3551cb865337e56",
  "source": {
    "blob": "c54a8b36b1b4f089573b6e94688f49ca23065f36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 401,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantd2e6b4100aa6a65e18265bdfbec8068a8588e7c2c78e4cdb082ab5191953a817.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9631080ff3551cb865337e5658a935f59fb2ca8f5c0608e810f6d07bf5cea8fa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantd2e6b4100aa6a65e18265bdfbec8068a8588e7c2c78e4cdb082ab5191953a817.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:672ff697-e223-9d38-75b7-ffb7134b4dbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_pow_one_div_le (x : ℝ≥0) {y : ℝ≥0} (hy : 1 < y) :
    ∀ᶠ n : ℕ in atTop, x ^ (1 / n : ℝ) ≤ y := by
  obtain ⟨m, hm⟩ := add_one_pow_unbounded_of_pos x (tsub_pos_of_lt hy)
  rw [tsub_add_cancel_of_le hy.le] at hm
  refine eventually_atTop.2 ⟨m + 1, fun n hn => ?_⟩
  simp only [one_div]
  simpa only [NNReal.rpow_inv_le_iff (Nat.cast_pos.2 <| m.succ_pos.trans_le hn),
    NNReal.rpow_natCast] using hm.le.trans (pow_right_mono₀ hy.le (m.le_succ.trans hn))

end NNReal

open Filter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantd2e6b4100aa6a65e18265bdfbec8068a8588e7c2c78e4cdb082ab5191953a817.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantd2e6b4100aa6a65e18265bdfbec8068a8588e7c2c78e4cdb082ab5191953a817.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c54a8b36b1b4f089573b6e94688f49ca23065f36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
