# eventually_div_lt_of_div_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4bc0c78-9363-ea20-50fa-e7912d467124",
  "kind": "theorem",
  "lexical_name": "eventually_div_lt_of_div_lt",
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
  "slug": "eventually-div-lt-of-div-lt--2c8f97db50db9d47af46af4b",
  "source": {
    "blob": "ee5113a3258cafa515279c1c961d29123bfc2332",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c8f97db50db9d47af46af4b17a1c98260f3eb008275d3cb68d106564cd9a216",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4bc0c78-9363-ea20-50fa-e7912d467124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_div_lt_of_div_lt {L : ℝ} {n : ℕ} (hn : n ≠ 0) (hL : u n / n < L) :
    ∀ᶠ p in atTop, u p / p < L := by
  /- It suffices to prove the statement for each arithmetic progression `(n * · + r)`. -/
  refine .atTop_of_arithmetic hn fun r _ => ?_
  /- `(k * u n + u r) / (k * n + r)` tends to `u n / n < L`, hence
  `(k * u n + u r) / (k * n + r) < L` for sufficiently large `k`. -/
  have A : Tendsto (fun x : ℝ => (u n + u r / x) / (n + r / x)) atTop (𝓝 ((u n + 0) / (n + 0))) :=
    (tendsto_const_nhds.add <| tendsto_const_nhds.div_atTop tendsto_id).div
      (tendsto_const_nhds.add <| tendsto_const_nhds.div_atTop tendsto_id) <| by simpa
  have B : Tendsto (fun x => (x * u n + u r) / (x * n + r)) atTop (𝓝 (u n / n)) := by
    rw [add_zero, add_zero] at A
    refine A.congr' <| (eventually_ne_atTop 0).mono fun x hx => ?_
    simp only [add_div' _ _ _ hx, div_div_div_cancel_right₀ hx, mul_comm]
  refine ((B.comp tendsto_natCast_atTop_atTop).eventually (gt_mem_nhds hL)).mono fun k hk => ?_
  /- Finally, we use an upper estimate on `u (k * n + r)` to get an estimate on
  `u (k * n + r) / (k * n + r)`. -/
  rw [mul_comm]
  refine lt_of_le_of_lt ?_ hk
  simp only [(· ∘ ·), ← Nat.cast_add, ← Nat.cast_mul]
  gcongr
  apply h.apply_mul_add_le

/-- Fekete's lemma: a subadditive sequence which is bounded below converges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Subadditive/Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee5113a3258cafa515279c1c961d29123bfc2332` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
