# FiniteLocalSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3e8cd9ecac2fed16938f6c26b2723620dfb620593a7c4d71087c65eb53a98ad",
  "kind": "structure",
  "lexical_name": "FiniteLocalSystem",
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
  "slug": "finitelocalsystem--9d8a62a073f8d6e929e873d5",
  "source": {
    "blob": "c782c5c9df42a46edfcc23d272ec9313fb26b5e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 50,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d8a62a073f8d6e929e873d587f245a2b5140319fbbc78776091348d1a3f8ef4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3e8cd9ecac2fed16938f6c26b2723620dfb620593a7c4d71087c65eb53a98ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteLocalSystem
    {manifest : UniverseManifest}
    (terrain : ActiveTerrain manifest) where
  FiberIndex : Type
  instFintypeFiberIndex : Fintype FiberIndex
  instDecidableEqFiberIndex : DecidableEq FiberIndex
  edgeTransport : (edge : TerrainEdgeId) →
    CertifiedPartialIsometry FiberIndex
  edgeAuthority : ∀ edge ∈ terrain.edges, manifest.HasEdge edge

attribute [instance] FiniteLocalSystem.instFintypeFiberIndex
  FiniteLocalSystem.instDecidableEqFiberIndex

namespace FiniteLocalSystem

/-- Every selected local-system edge resolves in the pinned manifest. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c782c5c9df42a46edfcc23d272ec9313fb26b5e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
