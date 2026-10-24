# tendsto_support_normed_smallSets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8426243a8b556cc84511d1eacc240a612c0f661",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b1da575-bc77-60e2-4d19-cd25a2e4135d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ce91d80-9c75-12e5-92f2-025a53584fe7",
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
  "slug": "tendsto-support-normed-smallsets--0e441d4308bf1325a4446d78",
  "source": {
    "blob": "b8426243a8b556cc84511d1eacc240a612c0f661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e441d4308bf1325a4446d788fc0752a15db3c190522881f9849b0eb2e7ea02c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ce91d80-9c75-12e5-92f2-025a53584fe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–89.

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

variable (μ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8426243a8b556cc84511d1eacc240a612c0f661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
