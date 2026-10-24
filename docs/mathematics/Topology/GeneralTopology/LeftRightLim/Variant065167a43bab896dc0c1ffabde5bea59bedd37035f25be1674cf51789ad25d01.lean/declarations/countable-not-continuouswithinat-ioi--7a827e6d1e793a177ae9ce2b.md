# countable_not_continuousWithinAt_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:598ec7d9-5feb-0f57-5653-e778c398c0fe",
  "kind": "theorem",
  "lexical_name": "countable_not_continuousWithinAt_Ioi",
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
  "slug": "countable-not-continuouswithinat-ioi--7a827e6d1e793a177ae9ce2b",
  "source": {
    "blob": "12d452910bbfd935ce0bf2621137b6c9c89e7957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 248,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a827e6d1e793a177ae9ce2b2aebb04bf9fc7a765689722b5cebf91351aaa2f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:598ec7d9-5feb-0f57-5653-e778c398c0fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_not_continuousWithinAt_Ioi [TopologicalSpace.SecondCountableTopology β] :
    Set.Countable { x | ¬ContinuousWithinAt f (Ioi x) x } := by
  /- If `f` is not continuous on the right at `x`, there is an interval `(f x, z x)` which is not
    reached by `f`. This gives a family of disjoint open intervals in `β`. Such a family can only
    be countable as `β` is second-countable. -/
  nontriviality α
  let s := { x | ¬ContinuousWithinAt f (Ioi x) x }
  have : ∀ x, x ∈ s → ∃ z, f x < z ∧ ∀ y, x < y → z ≤ f y := by
    rintro x (hx : ¬ContinuousWithinAt f (Ioi x) x)
    contrapose! hx
    refine' tendsto_order.2 ⟨fun m hm => _, fun u hu => _⟩
    · filter_upwards [@self_mem_nhdsWithin _ _ x (Ioi x)] with y hy using hm.trans_le
        (hf (le_of_lt hy))
    rcases hx u hu with ⟨v, xv, fvu⟩
    have : Ioo x v ∈ 𝓝[>] x := Ioo_mem_nhdsWithin_Ioi ⟨le_refl _, xv⟩
    filter_upwards [this]with y hy
    apply (hf hy.2.le).trans_lt fvu
  -- choose `z x` such that `f` does not take the values in `(f x, z x)`.
  choose! z hz using this
  have I : InjOn f s := by
    apply StrictMonoOn.injOn
    intro x hx y _ hxy
    calc
      f x < z x := (hz x hx).1
      _ ≤ f y := (hz x hx).2 y hxy

  -- show that `f s` is countable by arguing that a disjoint family of disjoint open intervals
  -- (the intervals `(f x, z x)`) is at most countable.
  have fs_count : (f '' s).Countable := by
    have A : (f '' s).PairwiseDisjoint fun x => Ioo x (z (invFunOn f s x)) := by
      rintro _ ⟨u, us, rfl⟩ _ ⟨v, vs, rfl⟩ huv
      wlog hle : u ≤ v generalizing u v
      · exact (this v vs u us huv.symm (le_of_not_le hle)).symm
      have hlt : u < v := hle.lt_of_ne (ne_of_apply_ne _ huv)
      apply disjoint_iff_forall_ne.2
      rintro a ha b hb rfl
      simp only [I.leftInvOn_invFunOn us, I.leftInvOn_invFunOn vs] at ha hb
      exact lt_irrefl _ ((ha.2.trans_le ((hz u us).2 v hlt)).trans hb.1)
    apply Set.PairwiseDisjoint.countable_of_Ioo A
    rintro _ ⟨y, ys, rfl⟩
    simpa only [I.leftInvOn_invFunOn ys] using (hz y ys).1
  exact MapsTo.countable_of_injOn (mapsTo_image f s) I fs_count
#align monotone.countable_not_continuous_within_at_Ioi Monotone.countable_not_continuousWithinAt_Ioi

/-- In a second countable space, the set of points where a monotone function is not left-continuous
is at most countable. Superseded by `countable_not_continuousAt` which gives the two-sided
version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12d452910bbfd935ce0bf2621137b6c9c89e7957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
