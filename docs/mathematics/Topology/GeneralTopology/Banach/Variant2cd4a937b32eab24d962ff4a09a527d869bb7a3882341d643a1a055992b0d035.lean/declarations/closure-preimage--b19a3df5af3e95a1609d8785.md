# closure_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94269bae-3e8a-bee8-f893-0a4f634462d0",
  "kind": "theorem",
  "lexical_name": "closure_preimage",
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
  "slug": "closure-preimage--b19a3df5af3e95a1609d8785",
  "source": {
    "blob": "f41c04154ef103edb42079b4c3e5b7a20aa95615",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 284,
    "path": "GRWTSK/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b19a3df5af3e95a1609d8785f3440b2d898f36b9f74123a17a68ed9b5a6c975e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94269bae-3e8a-bee8-f893-0a4f634462d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_preimage (hsurj : Surjective f) (s : Set F) : closure (f ⁻¹' s) = f ⁻¹' closure s :=
  ((f.isOpenMap hsurj).preimage_closure_eq_closure_preimage f.continuous s).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Banach/Variant2cd4a937b32eab24d962ff4a09a527d869bb7a3882341d643a1a055992b0d035.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f41c04154ef103edb42079b4c3e5b7a20aa95615` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
