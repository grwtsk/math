# RoutingResidue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d0f805ef12641938bb6656ac4b7de6ede3816cd7c3cb4a276dbc80910c0f62a",
  "kind": "structure",
  "lexical_name": "RoutingResidue",
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
  "slug": "routingresidue--c949e12ed86503c36a9ca1c7",
  "source": {
    "blob": "5fa5903bf5552c6b56431f1db9e387ccd74b2267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c949e12ed86503c36a9ca1c73f59531e72154667d61f4e198ecd5ce647a12e21",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d0f805ef12641938bb6656ac4b7de6ede3816cd7c3cb4a276dbc80910c0f62a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RoutingResidue
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element] where
  query : IncidenceCode Probe
  candidateFiber : Finset Element
  obstruction : RoutingObstruction
  notIncidenceSingleton :
    ¬ ∃ element, candidateFiber = {element}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variant896a9d41bf2b2c9a6f77b3c7481d1d351cbb1d1d08671d1ffa7db8b9aa7e50fa.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa5903bf5552c6b56431f1db9e387ccd74b2267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
