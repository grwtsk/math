# Archimedean.floorRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d9daa70f3b5bbc179b3ec98ca58cada9d3bec6dd97a7fbd71b4ded91cde08fc",
  "kind": "def",
  "lexical_name": "Archimedean.floorRing",
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
  "slug": "archimedean-floorring--b3b4b6088adb72f69885786b",
  "source": {
    "blob": "2a2bec0e40694328e8405bc489abef27f6a24a1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 525,
    "path": "GRWTSK/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3b4b6088adb72f69885786b6eb7e2445de5385b098fa0eb0716ceaeb38b7b43",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d9daa70f3b5bbc179b3ec98ca58cada9d3bec6dd97a7fbd71b4ded91cde08fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Archimedean.floorRing (R) [Ring R] [LinearOrder R] [IsStrictOrderedRing R]
    [Archimedean R] : FloorRing R :=
  .ofFloor R (fun a => Classical.choose (exists_floor a)) fun z a =>
    (Classical.choose_spec (exists_floor a) z).symm

-- see Note [lower instance priority]
/-- A linear ordered field that is a floor ring is archimedean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant498c81ead49ff6226b9968b6d263de3731cd5411b7050bdc6c98465085048f9c.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a2bec0e40694328e8405bc489abef27f6a24a1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
