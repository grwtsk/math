# tendsto_support_normed_smallSets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4554af89c4cdc09d029ed2e1df6e7c9f3ebbeda1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e016d743-55e3-f728-e8c0-55944a096d39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30e23b8e-89eb-9cdf-7c03-59697d658361",
  "kind": "theorem",
  "lexical_name": "tendsto_support_normed_smallSets",
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
  "slug": "tendsto-support-normed-smallsets--d46fc4ff2c94180efdfb9447",
  "source": {
    "blob": "4554af89c4cdc09d029ed2e1df6e7c9f3ebbeda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d46fc4ff2c94180efdfb9447668a506fb56193fc5a41d33d0aaf2a690b391353",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30e23b8e-89eb-9cdf-7c03-59697d658361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_support_normed_smallSets {ι} {φ : ι → ContDiffBump c} {l : Filter ι}
    (hφ : Tendsto (fun i => (φ i).rOut) l (𝓝 0)) :
    Tendsto (fun i => Function.support fun x => (φ i).normed μ x) l (𝓝 c).smallSets := by
  simp_rw [NormedAddCommGroup.tendsto_nhds_zero, Real.norm_eq_abs,
    abs_eq_self.mpr (φ _).rOut_pos.le] at hφ
  rw [nhds_basis_ball.smallSets.tendsto_right_iff]
  refine fun ε hε ↦ (hφ ε hε).mono fun i hi ↦ ?_
  rw [(φ i).support_normed_eq]
  exact ball_subset_ball hi.le
#align cont_diff_bump.tendsto_support_normed_small_sets ContDiffBump.tendsto_support_normed_smallSets

variable (μ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4554af89c4cdc09d029ed2e1df6e7c9f3ebbeda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
