# filter_le_of_le_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25136a1b3a16066820c7d4aeff034a6cc835f3e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed7faa13-a228-3786-4dac-02c48165f015",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39d97231-bbdf-58f4-618d-e4566f85bebc",
  "kind": "theorem",
  "lexical_name": "filter_le_of_le_bot",
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
  "slug": "filter-le-of-le-bot--7c9f5e0df9f636ff1b057f92",
  "source": {
    "blob": "25136a1b3a16066820c7d4aeff034a6cc835f3e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c9f5e0df9f636ff1b057f92c440cb92d912495d442aec07d69abe02216f272c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39d97231-bbdf-58f4-618d-e4566f85bebc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_le_of_le_bot {n m l : ℕ} (hln : l ≤ n) :
    ((Ico n m).filter fun x => l ≤ x) = Ico n m :=
  filter_eq_self.2 fun k hk => by
    rw [decide_eq_true_eq]
    exact le_trans hln (mem.1 hk).1
#align list.Ico.filter_le_of_le_bot List.Ico.filter_le_of_le_bot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25136a1b3a16066820c7d4aeff034a6cc835f3e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
