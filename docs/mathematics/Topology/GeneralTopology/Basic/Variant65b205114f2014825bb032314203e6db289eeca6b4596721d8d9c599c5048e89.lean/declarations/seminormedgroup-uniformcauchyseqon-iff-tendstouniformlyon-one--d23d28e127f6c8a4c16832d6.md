# SeminormedGroup.uniformCauchySeqOn_iff_tendstoUniformlyOn_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11333086a01308793fd4e828669c952f211ad1e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc50dc19-8119-1082-b3d2-2943df625ff4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b59921ae-2ef5-c848-44f4-2ceb7de821e8",
  "kind": "theorem",
  "lexical_name": "SeminormedGroup.uniformCauchySeqOn_iff_tendstoUniformlyOn_one",
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
  "slug": "seminormedgroup-uniformcauchyseqon-iff-tendstouniformlyon-one--d23d28e127f6c8a4c16832d6",
  "source": {
    "blob": "11333086a01308793fd4e828669c952f211ad1e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1376,
    "line": 1356,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d23d28e127f6c8a4c16832d6aec580bf34b73e3507b7af391185cf5b57893486",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b59921ae-2ef5-c848-44f4-2ceb7de821e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1356–1376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SeminormedGroup.uniformCauchySeqOn_iff_tendstoUniformlyOn_one {f : ι → κ → G} {s : Set κ}
    {l : Filter ι} :
    UniformCauchySeqOn f l s ↔
      TendstoUniformlyOn (fun n : ι × ι => fun z => f n.fst z / f n.snd z) 1 (l ×ˢ l) s := by
  rw [tendstoUniformlyOn_iff_tendstoUniformlyOnFilter,
    uniformCauchySeqOn_iff_uniformCauchySeqOnFilter,
    SeminormedGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_one]
#align seminormed_group.uniform_cauchy_seq_on_iff_tendsto_uniformly_on_one SeminormedGroup.uniformCauchySeqOn_iff_tendstoUniformlyOn_one
#align seminormed_add_group.uniform_cauchy_seq_on_iff_tendsto_uniformly_on_zero SeminormedAddGroup.uniformCauchySeqOn_iff_tendstoUniformlyOn_zero

end SeminormedGroup

section Induced

variable (E F)

-- See note [reducible non-instances]
/-- A group homomorphism from a `Group` to a `SeminormedGroup` induces a `SeminormedGroup`
structure on the domain. -/
@[to_additive (attr := reducible) "A group homomorphism from an `AddGroup` to a
`SeminormedAddGroup` induces a `SeminormedAddGroup` structure on the domain."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant65b205114f2014825bb032314203e6db289eeca6b4596721d8d9c599c5048e89.lean#L1356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11333086a01308793fd4e828669c952f211ad1e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
