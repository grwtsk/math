# IncidenceAnchorNetwork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d2af4a9fa680968a808808979d51f0ce182db36a53af033e0e79c0cf035371e",
  "kind": "structure",
  "lexical_name": "IncidenceAnchorNetwork",
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
  "slug": "incidenceanchornetwork--6d3986ea4c0ce64fa72e3fbc",
  "source": {
    "blob": "4822e9466b65089f001bdce678b8f95812da5eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IncidenceAnchorNetwork/Variant095c1e0f1792c9df8461c0978b366dca69eb5c6dd3d13cecdabaf6979bef4526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d3986ea4c0ce64fa72e3fbc47904ae7300e60e7950a08108f46ec32736f76f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IncidenceAnchorNetwork/Variant095c1e0f1792c9df8461c0978b366dca69eb5c6dd3d13cecdabaf6979bef4526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d2af4a9fa680968a808808979d51f0ce182db36a53af033e0e79c0cf035371e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IncidenceAnchorNetwork
    {Object : Type u} [DecidableEq Object]
    {width : Nat}
    (encode : Object → FiniteIncidenceCode width) where
  Point : Type v
  point : Point → CertifiedIncidenceSingleton encode
  routeKeyInjective :
    Function.Injective fun index ↦ (point index).routeKey
  objectInjective :
    Function.Injective fun index ↦ (point index).object
  connected :
    ∀ left right,
      Nonempty
        (CertifiedIncidenceWalk encode (point left) (point right))

/--
One midpoint candidate promoted into a separated mathematical element.  The
realization and generation certificates are explicit; the midpoint equation
alone grants no identity or name.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IncidenceAnchorNetwork/Variant095c1e0f1792c9df8461c0978b366dca69eb5c6dd3d13cecdabaf6979bef4526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IncidenceAnchorNetwork/Variant095c1e0f1792c9df8461c0978b366dca69eb5c6dd3d13cecdabaf6979bef4526.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4822e9466b65089f001bdce678b8f95812da5eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
