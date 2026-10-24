# tendsto_of_subseq_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ff8636a-5f5b-aa2b-4918-fa9f4419f566",
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
  "slug": "tendsto-of-subseq-tendsto--a49bc30dad25482095ecf07d",
  "source": {
    "blob": "c70e5a942ad8e89fcf7f4271da633bc93b3c0507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 142,
    "path": "GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a49bc30dad25482095ecf07dbf5706cb50e70419443ecd55956cfd313b4e8155",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ff8636a-5f5b-aa2b-4918-fa9f4419f566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–154.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c70e5a942ad8e89fcf7f4271da633bc93b3c0507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
