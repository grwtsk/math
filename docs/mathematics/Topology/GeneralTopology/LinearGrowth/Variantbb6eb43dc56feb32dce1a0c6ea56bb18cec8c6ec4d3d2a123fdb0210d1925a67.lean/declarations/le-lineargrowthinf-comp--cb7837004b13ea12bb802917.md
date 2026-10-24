# le_linearGrowthInf_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55fa36cf-1219-c9dd-04bb-4860324ce432",
  "kind": "lemma",
  "lexical_name": "le_linearGrowthInf_comp",
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
  "slug": "le-lineargrowthinf-comp--cb7837004b13ea12bb802917",
  "source": {
    "blob": "b774387bd86b480da7def0ce1e8f3857fbbdf837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 395,
    "path": "GRWTSK/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb7837004b13ea12bb802917d72344b46658b79883831c0fc7d1bcac31d63bff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55fa36cf-1219-c9dd-04bb-4860324ce432`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_linearGrowthInf_comp (hu : 0 ≤ᶠ[atTop] u) (hv : Tendsto v atTop atTop) :
    (linearGrowthInf fun n ↦ v n : EReal) * linearGrowthInf u ≤ linearGrowthInf (u ∘ v) := by
  have uv_0 : 0 ≤ linearGrowthInf (u ∘ v) := by
    rw [← linearGrowthInf_const zero_ne_bot zero_ne_top]
    exact linearGrowthInf_eventually_monotone (hv.eventually hu)
  apply EReal.mul_le_of_forall_lt_of_nonneg (linearGrowthInf_natCast_nonneg v) uv_0
  refine fun a ⟨_, a_v⟩ b ⟨b_0, b_u⟩ ↦ Eventually.le_linearGrowthInf ?_
  have b_uv := eventually_map.1 ((eventually_mul_le b_u).filter_mono hv)
  filter_upwards [b_uv, eventually_lt_of_lt_liminf a_v, eventually_gt_atTop 0]
    with n b_uvn a_vn n_0
  replace a_vn := ((lt_div_iff (Nat.cast_pos'.2 n_0) (natCast_ne_top n)).1 a_vn).le
  rw [comp_apply, mul_comm a b, mul_assoc b a]
  exact b_uvn.trans' <| by gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b774387bd86b480da7def0ce1e8f3857fbbdf837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
