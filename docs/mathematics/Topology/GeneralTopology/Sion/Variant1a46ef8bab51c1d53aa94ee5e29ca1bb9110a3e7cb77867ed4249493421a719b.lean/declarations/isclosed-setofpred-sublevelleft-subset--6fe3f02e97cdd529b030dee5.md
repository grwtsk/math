# isClosed_setOfPred_sublevelLeft_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ddcfb8abece24797f880719f1a12a51e23dfd148",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3c4f275-76f7-69be-7eb1-0af84ae12e85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08e498c9-f494-8bd6-9dd4-e2bc510020c5",
  "kind": "theorem",
  "lexical_name": "isClosed_setOfPred_sublevelLeft_subset",
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
  "slug": "isclosed-setofpred-sublevelleft-subset--6fe3f02e97cdd529b030dee5",
  "source": {
    "blob": "ddcfb8abece24797f880719f1a12a51e23dfd148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fe3f02e97cdd529b030dee5ca5eaf1c3f1227fca93a54253450000dea9add16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08e498c9-f494-8bd6-9dd4-e2bc510020c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_setOfPred_sublevelLeft_subset
    (a : E) (b b' : β) (y y' : Y)
    (ha : ∀ x ∈ X, f a y ⊔ f a y' ≤ f x y ⊔ f x y')
    (hb : ∀ y ∈ Y, ∃ x ∈ X, f x y ≤ b)
    (hb' : b' < f a y ⊔ f a y')
    (hbb' : b < b') :
    IsClosed (setOfPred_sublevelLeft_subset X Y f b b' y y') := by
  set J := setOfPred_sublevelLeft_subset X Y f b b' y y'
  -- Write `J` for `setOfPred_sublevelLeft_subset X Y f b b' y y'`.
  rw [isClosed_iff_clusterPt]
  /- Let `z in segment ℝ y y'` be a cluster point of `J`;
     we have to show that `z ∈ J`, i.e `sublevelLeft t z ⊆ sublevelLeft t' y1`.
     Let `x ∈ sublevelLeft t z` and let us prove that `x ∈ sublevelLeft X f b' y`. -/
  intro z hz x hx
  suffices ∃ z' ∈ setOfPred_sublevelLeft_subset X Y f b b' y y', x ∈ sublevelLeft X f b' (z' : F) by
    obtain ⟨z', hz', hxz'⟩ := this
    /- We need to prove `x ∈ sublevelLeft X f b' y`.
       Assume that there is `z' ∈ J` such that `x ∈ sublevelLeft b' z'`.
       It suffices to prove that `sublevelLeft X f b' z' ⊆ sublevelLeft X f b' y`.` -/
    suffices sublevelLeft X f b' z' ⊆ sublevelLeft X f b' y from this hxz'
    /- Otherwise, using `sublevelLeft_subset_or`, we see that
       `sublevelLeft X f b' z' ⊆ sublevelLeft t' y'`
       hence `x ∈ sublevelLeft t' y ∩ sublevelLeft t' y' = ∅`, a contradiction. -/
    apply (sublevelLeft_subset_or hfx' hfy hfy' cY a b' y y' ha hb' z').resolve_right
    intro hz'2
    have hz'Y : (z' : F) ∈ Y := (convex_iff_segment_subset.mp cY) y.prop y'.prop z'.prop
    apply (nonempty_sublevelLeft ne_X kX hfy ⟨z', hz'Y⟩ hb).not_subset_empty
    rw [← (disjoint_sublevelLeft ha hb').inter_eq]
    apply subset_inter hz'
    grw [monotone_sublevelLeft _ hbb'.le, hz'2]
  /- In sequential language, pretend that `z = lim z n`, with `z n ∈ J`.
     Since `x ∈ sublevelLeft X f b z`, we have `f x z ≤ b < b'`.
     Since `f x ·` is upper semicontinuous, we would have `f x (z n) < b'` for `n` large enough,
     hence `x ∈ sublevelLeft X f b' (z n)` for `n` large enough. -/
  -- The first step is to rewrite `hfy` (lower semicontinuity of `f (⬝, y)`) into an `∀ᶠ`-form
  simp_rw [upperSemicontinuousOn_iff, upperSemicontinuousWithinAt_iff] at hfx
  specialize hfx x.val x.prop z (cY.segment_subset y.prop y'.prop z.prop) b' (hx.trans_lt hbb')
  -- We rewrite the assumption that `z` is a cluster point of `J` into an `∃ᶠ`-form
  rw [clusterPt_principal_subtype_iff_frequently (cY.segment_subset y.prop y'.prop)] at hz
  suffices ∀ᶠ z' : F in nhdsWithin z Y,
    (∃ hz' : z' ∈ segment ℝ y.val y'.val,
      (⟨z', hz'⟩ : segment ℝ y.val y'.val) ∈ setOfPred_sublevelLeft_subset X Y f b b' y y') →
      ∃ hz' : z' ∈ segment ℝ y.val y'.val, x ∈ sublevelLeft X f b' z'
        ∧ (⟨z', hz'⟩ : segment ℝ y.val y'.val) ∈ setOfPred_sublevelLeft_subset X Y f b b' y y' by
    obtain ⟨z', hz', hxz'1, hxz'2⟩ := hz.mp this |>.exists
    exact ⟨⟨z', hz'⟩, ⟨hxz'2, hxz'1⟩⟩
  exact hfx.mp <| .of_forall fun z hzt' ⟨hz, hz'⟩ ↦ ⟨hz, ⟨hzt'.le, hz'⟩⟩

@[deprecated (since := "2026-07-09")]
alias isClosed_setOf_sublevelLeft_subset := isClosed_setOfPred_sublevelLeft_subset

variable [DenselyOrdered β]
variable [IsTopologicalAddGroup F] [ContinuousSMul ℝ F]

include ne_X kX hfx hfx' cY hfy hfy' in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcfb8abece24797f880719f1a12a51e23dfd148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
