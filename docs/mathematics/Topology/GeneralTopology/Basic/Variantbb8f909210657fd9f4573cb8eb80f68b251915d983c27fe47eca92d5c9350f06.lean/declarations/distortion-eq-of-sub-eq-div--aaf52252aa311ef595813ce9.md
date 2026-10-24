# distortion_eq_of_sub_eq_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d592dd748122eaeb5064689ccc83ffa9ac803406",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 496,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb8f909210657fd9f4573cb8eb80f68b251915d983c27fe47eca92d5c9350f06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0dfd94e-344c-dba0-e239-2be65a96adbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:423e0f7f-a229-d3ef-fc4e-7cc6b147bf95",
  "kind": "theorem",
  "lexical_name": "distortion_eq_of_sub_eq_div",
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
  "slug": "distortion-eq-of-sub-eq-div--aaf52252aa311ef595813ce9",
  "source": {
    "blob": "d592dd748122eaeb5064689ccc83ffa9ac803406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 496,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantbb8f909210657fd9f4573cb8eb80f68b251915d983c27fe47eca92d5c9350f06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaf52252aa311ef595813ce9a4bfbab90bccbb836c7fb0261442c29558c43208",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantbb8f909210657fd9f4573cb8eb80f68b251915d983c27fe47eca92d5c9350f06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:423e0f7f-a229-d3ef-fc4e-7cc6b147bf95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distortion_eq_of_sub_eq_div {I J : Box ι} {r : ℝ}
    (h : ∀ i, I.upper i - I.lower i = (J.upper i - J.lower i) / r) :
    distortion I = distortion J := by
  simp only [distortion, nndist_pi_def, Real.nndist_eq', h, map_div₀]
  congr 1 with i
  have : 0 < r := by
    by_contra hr
    have := div_nonpos_of_nonneg_of_nonpos (sub_nonneg.2 <| J.lower_le_upper i) (not_lt.1 hr)
    rw [← h] at this
    exact this.not_lt (sub_pos.2 <| I.lower_lt_upper i)
  have hn0 := (map_ne_zero Real.nnabs).2 this.ne'
  simp_rw [NNReal.finset_sup_div, div_div_div_cancel_right _ hn0]
#align box_integral.box.distortion_eq_of_sub_eq_div BoxIntegral.Box.distortion_eq_of_sub_eq_div

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantbb8f909210657fd9f4573cb8eb80f68b251915d983c27fe47eca92d5c9350f06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantbb8f909210657fd9f4573cb8eb80f68b251915d983c27fe47eca92d5c9350f06.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d592dd748122eaeb5064689ccc83ffa9ac803406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
