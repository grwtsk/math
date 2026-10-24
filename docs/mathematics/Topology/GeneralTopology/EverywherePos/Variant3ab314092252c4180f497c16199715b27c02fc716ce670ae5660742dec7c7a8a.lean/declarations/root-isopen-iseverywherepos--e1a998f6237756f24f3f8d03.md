# _root_.IsOpen.isEverywherePos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a90149218799648593ee2c80984825d7b65add78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fea45eb-49a3-9bcb-9bd4-a351a8cc4a39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8035ce4e-a6e7-2591-2e7c-b4c88f0f884f",
  "kind": "lemma",
  "lexical_name": "_root_.IsOpen.isEverywherePos",
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
  "slug": "root-isopen-iseverywherepos--e1a998f6237756f24f3f8d03",
  "source": {
    "blob": "a90149218799648593ee2c80984825d7b65add78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1a998f6237756f24f3f8d037102bd588b8d0b018258c3707cc99007e2c4a032",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8035ce4e-a6e7-2591-2e7c-b4c88f0f884f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.IsOpen.isEverywherePos [IsOpenPosMeasure μ] (hs : IsOpen s) : IsEverywherePos μ s := by
  intro x xs n hn
  rcases mem_nhdsWithin.1 hn with ⟨u, u_open, xu, hu⟩
  apply lt_of_lt_of_le _ (measure_mono hu)
  exact (u_open.inter hs).measure_pos μ ⟨x, ⟨xu, xs⟩⟩

section IsTopologicalGroup

variable {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  [LocallyCompactSpace G] [MeasurableSpace G] [BorelSpace G] {μ : Measure G}
  [IsMulLeftInvariant μ] [IsFiniteMeasureOnCompacts μ] [InnerRegularCompactLTTop μ]

open Pointwise

/-- If a compact closed set is everywhere positive with respect to a left-invariant measure on a
topological group, then it is a Gδ set. This is nontrivial, as there is no second-countability or
metrizability assumption in the statement, so a general compact closed set has no reason to be
a countable intersection of open sets. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90149218799648593ee2c80984825d7b65add78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
