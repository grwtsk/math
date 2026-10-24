# countable_image_lt_image_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55a7510276f30c2bbe70b43993143d137ed0ed25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 590,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e2acc5a-2b46-0614-77ad-1786fbe579e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cd5c07a-53a0-6f49-c7b8-2e494e36a48b",
  "kind": "theorem",
  "lexical_name": "countable_image_lt_image_Ioi",
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
  "slug": "countable-image-lt-image-ioi--ee2b63db827f2b059695b914",
  "source": {
    "blob": "55a7510276f30c2bbe70b43993143d137ed0ed25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 625,
    "line": 590,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee2b63db827f2b059695b914d1c8fec3c42ab874315b8a8d9ed7cb198ccb30ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cd5c07a-53a0-6f49-c7b8-2e494e36a48b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–625.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_image_lt_image_Ioi [OrderTopology α] [LinearOrder β] (f : β → α)
    [SecondCountableTopology α] : Set.Countable {x | ∃ z, f x < z ∧ ∀ y, x < y → z ≤ f y} := by
  /- If the values of `f` are separated above on the right of `x`, there is an interval `(f x, z x)`
    which is not reached by `f`. This gives a family of disjoint open intervals in `α`. Such a
    family can only be countable as `α` is second-countable. -/
  nontriviality β
  have : Nonempty α := Nonempty.map f (by infer_instance)
  let s := {x | ∃ z, f x < z ∧ ∀ y, x < y → z ≤ f y}
  have : ∀ x, x ∈ s → ∃ z, f x < z ∧ ∀ y, x < y → z ≤ f y := fun x hx ↦ hx
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

/-- For a function taking values in a second countable space, the set of points `x` for
which the image under `f` of `(x, ∞)` is separated below from `f x` is countable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55a7510276f30c2bbe70b43993143d137ed0ed25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
