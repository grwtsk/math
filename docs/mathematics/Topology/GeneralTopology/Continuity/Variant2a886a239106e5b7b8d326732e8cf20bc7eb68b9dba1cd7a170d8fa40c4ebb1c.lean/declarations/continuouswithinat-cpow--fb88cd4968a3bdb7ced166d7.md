# ContinuousWithinAt.cpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21a01184-b1d7-e2bb-eb2c-47367a643d55",
  "kind": "theorem",
  "lexical_name": "ContinuousWithinAt.cpow",
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
  "slug": "continuouswithinat-cpow--fb88cd4968a3bdb7ced166d7",
  "source": {
    "blob": "bdd10ff27c78ae0cf56be8a1a70368b8baa4f4ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 123,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb88cd4968a3bdb7ced166d746d123fe2ca43a8db8b405123253feb2ed80c795",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21a01184-b1d7-e2bb-eb2c-47367a643d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem ContinuousWithinAt.cpow (hf : ContinuousWithinAt f s a)
    (hg : ContinuousWithinAt g s a) (h0 : 0 < (f a).re ∨ (f a).im ≠ 0) :
    ContinuousWithinAt (fun x => f x ^ g x) s a :=
  hf.cpow hg h0
#align continuous_within_at.cpow ContinuousWithinAt.cpow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd10ff27c78ae0cf56be8a1a70368b8baa4f4ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
