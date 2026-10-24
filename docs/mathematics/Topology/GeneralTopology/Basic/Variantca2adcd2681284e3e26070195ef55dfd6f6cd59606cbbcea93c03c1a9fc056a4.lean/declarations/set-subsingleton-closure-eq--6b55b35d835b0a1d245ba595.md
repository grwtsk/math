# Set.Subsingleton.closure_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:603d0bd9-d7de-9f9b-57d6-e4b188a8b54b",
  "kind": "theorem",
  "lexical_name": "Set.Subsingleton.closure_eq",
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
  "slug": "set-subsingleton-closure-eq--6b55b35d835b0a1d245ba595",
  "source": {
    "blob": "0c592c2fa323e46713beb19aa30831ced6a00d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 613,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b55b35d835b0a1d245ba5952cc73ef3a911a6283eb72eb970f36c4676b9803f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:603d0bd9-d7de-9f9b-57d6-e4b188a8b54b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.Subsingleton.closure_eq [T1Space X] {s : Set X} (hs : s.Subsingleton) :
    closure s = s :=
  hs.isClosed.closure_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c592c2fa323e46713beb19aa30831ced6a00d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
