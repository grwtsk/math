# tendsto_of_subseq_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dee22d8610652f104f5b42b7c2b238903abc2763",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19f895a8-06f8-0588-093b-3012ba9af6e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a58da9c-5a9f-aa18-be99-15a39af40bab",
  "kind": "theorem",
  "lexical_name": "tendsto_of_subseq_tendsto",
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
  "slug": "tendsto-of-subseq-tendsto--478c3a0b7eb659fa3282ee8d",
  "source": {
    "blob": "dee22d8610652f104f5b42b7c2b238903abc2763",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:478c3a0b7eb659fa3282ee8df61343fc5ff52f758dc87443a9fc5e48846d4575",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a58da9c-5a9f-aa18-be99-15a39af40bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_of_subseq_tendsto {ι : Type*} {x : ι → α} {f : Filter α} {l : Filter ι}
    [l.IsCountablyGenerated]
    (hxy : ∀ ns : ℕ → ι, Tendsto ns atTop l →
      ∃ ms : ℕ → ℕ, Tendsto (fun n => x (ns <| ms n)) atTop f) :
    Tendsto x l f := by
  contrapose! hxy
  obtain ⟨s, hs, hfreq⟩ : ∃ s ∈ f, ∃ᶠ n in l, x n ∉ s := by
    rwa [not_tendsto_iff_exists_frequently_notMem] at hxy
  obtain ⟨y, hy_tendsto, hy_freq⟩ := exists_seq_forall_of_frequently hfreq
  refine ⟨y, hy_tendsto, fun ms hms_tendsto ↦ ?_⟩
  rcases (hms_tendsto.eventually_mem hs).exists with ⟨n, hn⟩
  exact absurd hn <| hy_freq _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dee22d8610652f104f5b42b7c2b238903abc2763` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
