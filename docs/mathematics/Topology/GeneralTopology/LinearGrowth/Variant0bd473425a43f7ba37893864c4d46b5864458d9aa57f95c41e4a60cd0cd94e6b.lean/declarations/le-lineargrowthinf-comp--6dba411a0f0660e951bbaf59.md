# le_linearGrowthInf_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28acaa665cef35aee63fcac75ec086d4c3ead33b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45a75cdf-65bd-f7dd-38c7-18aecc31ae4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87b15392-ae9f-2feb-36a8-cdd7f7cc49ac",
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
  "slug": "le-lineargrowthinf-comp--6dba411a0f0660e951bbaf59",
  "source": {
    "blob": "28acaa665cef35aee63fcac75ec086d4c3ead33b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 387,
    "path": "GRWTSK/Topology/GeneralTopology/LinearGrowth/Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dba411a0f0660e951bbaf59f1781c0c4a4f4aedac5bf6f816b77e736c377e91",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearGrowth/Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87b15392-ae9f-2feb-36a8-cdd7f7cc49ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–400.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearGrowth/Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearGrowth/Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28acaa665cef35aee63fcac75ec086d4c3ead33b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
