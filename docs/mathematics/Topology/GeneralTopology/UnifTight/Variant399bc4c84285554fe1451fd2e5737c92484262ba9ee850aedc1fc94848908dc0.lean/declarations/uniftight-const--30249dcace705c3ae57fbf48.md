# unifTight_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e891a5aed639042759ae1e0754704392cd00f26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee9a1e40-8ead-d133-60b6-0537f2bc8aff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65b37aef-8214-380d-e93b-4f32f6d7a65f",
  "kind": "theorem",
  "lexical_name": "unifTight_const",
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
  "slug": "uniftight-const--30249dcace705c3ae57fbf48",
  "source": {
    "blob": "6e891a5aed639042759ae1e0754704392cd00f26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 141,
    "path": "GRWTSK/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30249dcace705c3ae57fbf482755fa0d30e1bc00b938cc27b4cdeee2b30602f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65b37aef-8214-380d-e93b-4f32f6d7a65f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unifTight_const {g : α → β} (hp_ne_top : p ≠ ∞) (hg : MemLp g p μ) :
    UnifTight (fun _ : ι => g) p μ := by
  intro ε hε
  by_cases hε_top : ε = ∞
  · exact ⟨∅, (by measurability), fun _ => hε_top.symm ▸ le_top⟩
  obtain ⟨s, _, hμs, hgε⟩ := hg.exists_eLpNorm_indicator_compl_lt hp_ne_top (coe_ne_zero.mpr hε.ne')
  exact ⟨s, ne_of_lt hμs, fun _ => hgε.le⟩

/-- A single function is tight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnifTight/Variant399bc4c84285554fe1451fd2e5737c92484262ba9ee850aedc1fc94848908dc0.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e891a5aed639042759ae1e0754704392cd00f26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
