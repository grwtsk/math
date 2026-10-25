# DeltaRicciSurgeryTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8814b62549f934817bfbde38aedaaef2f2219bf6f299a07bae040e07c1fce812",
  "kind": "inductive",
  "lexical_name": "DeltaRicciSurgeryTree",
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
  "slug": "deltariccisurgerytree--87c51159cafe83c47b3e6eb6",
  "source": {
    "blob": "3ae6f9136955cd5add69a226b84bde01ac743263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87c51159cafe83c47b3e6eb6d2b2c60fde1f738b03ab3238bc2193500a535036",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8814b62549f934817bfbde38aedaaef2f2219bf6f299a07bae040e07c1fce812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive DeltaRicciSurgeryTree : State → Type (u + 1)
  | finiteLeaf (state : State) :
      FiniteTerminalCertificate state → DeltaRicciSurgeryTree state
  | transverseLeaf (state : State) :
      TransverseTerminalCertificate state → DeltaRicciSurgeryTree state
  | diffuseLeaf (state : State) :
      DiffuseTerminalCertificate state → DeltaRicciSurgeryTree state
  | flow {before after : State} :
      RicciFlowNodeControl before after →
      DeltaRicciSurgeryTree after → DeltaRicciSurgeryTree before
  | split {parent left right : State} :
      SphericalNeckCutCertificate parent →
      BinarySurgeryControl parent left right →
      DeltaRicciSurgeryTree left → DeltaRicciSurgeryTree right →
      DeltaRicciSurgeryTree parent

namespace DeltaRicciSurgeryTree

/-- Total terminal energy plus every explicitly recorded local flow and
surgery cost. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciTypeII/Variante6bb5b0c4a5e866ec9234faa37bc897cae2c291e629f2a1916fb1b89d8d0dc75.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ae6f9136955cd5add69a226b84bde01ac743263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
