# exists_finset_piecewise_mem_of_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:357ef4af-a96e-0a55-b117-f93d35fef0dd",
  "kind": "theorem",
  "lexical_name": "exists_finset_piecewise_mem_of_mem_nhds",
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
  "slug": "exists-finset-piecewise-mem-of-mem-nhds--aefda0fbf9899afa2a6d2b88",
  "source": {
    "blob": "ad260d583f2d60ca9a6d9b358f550a8ebd6d220b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 939,
    "line": 933,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aefda0fbf9899afa2a6d2b88cf28fb0afa7d80ff5275c07413c9b08a954ea10f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:357ef4af-a96e-0a55-b117-f93d35fef0dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 933–939.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finset_piecewise_mem_of_mem_nhds [DecidableEq ι] {s : Set (∀ a, π a)} {x : ∀ a, π a}
    (hs : s ∈ 𝓝 x) (y : ∀ a, π a) : ∃ I : Finset ι, I.piecewise x y ∈ s := by
  simp only [nhds_pi, Filter.mem_pi'] at hs
  rcases hs with ⟨I, t, htx, hts⟩
  refine ⟨I, hts fun i hi => ?_⟩
  simpa [Finset.mem_coe.1 hi] using mem_of_mem_nhds (htx i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean#L933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad260d583f2d60ca9a6d9b358f550a8ebd6d220b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
