# frequently_exists_num

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff4a7de7-71ee-c682-9adb-af17ce9b8bd9",
  "kind": "theorem",
  "lexical_name": "frequently_exists_num",
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
  "slug": "frequently-exists-num--c375b14169e1c77e68be376d",
  "source": {
    "blob": "8eaa0268978e44ebd8e6dff557bcde313a85b349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 352,
    "path": "GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c375b14169e1c77e68be376d1bd07d9ed5f200e3638b991503c88a804822728c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff4a7de7-71ee-c682-9adb-af17ce9b8bd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequently_exists_num (hx : Liouville x) (n : ℕ) :
    ∃ᶠ b : ℕ in atTop, ∃ a : ℤ, x ≠ a / b ∧ |x - a / b| < 1 / (b : ℝ) ^ n := by
  refine Classical.not_not.1 fun H => ?_
  simp only [Liouville, not_forall, not_exists, not_frequently, not_and, not_lt,
    eventually_atTop] at H
  rcases H with ⟨N, hN⟩
  have : ∀ b > (1 : ℕ), ∀ᶠ m : ℕ in atTop, ∀ a : ℤ, 1 / (b : ℝ) ^ m ≤ |x - a / b| := by
    intro b hb
    replace hb : (1 : ℝ) < b := Nat.one_lt_cast.2 hb
    have H : Tendsto (fun m => 1 / (b : ℝ) ^ m : ℕ → ℝ) atTop (𝓝 0) := by
      simp only [one_div]
      exact tendsto_inv_atTop_zero.comp (tendsto_pow_atTop_atTop_of_one_lt hb)
    refine (H.eventually (hx.irrational.eventually_forall_le_dist_cast_div b)).mono ?_
    exact fun m hm a => hm a
  have : ∀ᶠ m : ℕ in atTop, ∀ b < N, 1 < b → ∀ a : ℤ, 1 / (b : ℝ) ^ m ≤ |x - a / b| :=
    (finite_lt_nat N).eventually_all.2 fun b _hb => eventually_imp_distrib_left.2 (this b)
  rcases(this.and (eventually_ge_atTop n)).exists with ⟨m, hm, hnm⟩
  rcases hx m with ⟨a, b, hb, hne, hlt⟩
  lift b to ℕ using zero_le_one.trans hb.le; norm_cast at hb; push_cast at hne hlt
  cases' le_or_lt N b with h h
  · refine' (hN b h a hne).not_lt (hlt.trans_le _)
    replace hb : (1 : ℝ) < b := Nat.one_lt_cast.2 hb
    have hb0 : (0 : ℝ) < b := zero_lt_one.trans hb
    exact one_div_le_one_div_of_le (pow_pos hb0 _) (pow_le_pow hb.le hnm)
  · exact (hm b h hb _).not_lt hlt
#align liouville.frequently_exists_num Liouville.frequently_exists_num

/-- A Liouville number is a Liouville number with any real exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eaa0268978e44ebd8e6dff557bcde313a85b349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
