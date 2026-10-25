# Presentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b50d6f9310bd91129f7f8b2d009931051ee44498fdde557477733a0d8fc332f4",
  "kind": "structure",
  "lexical_name": "Presentation",
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
  "slug": "presentation--a4759d6c19b9786c3776bc7b",
  "source": {
    "blob": "d1442dd46f08f83ab7219c8da40d9acc6de674d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presentation/Variantcdfa404c1ff46ff7986a3ba29e78244a4eb870e18499d41f56e1ba238986ec58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4759d6c19b9786c3776bc7b4d1b2e0b71e127c1eab1ac80192801daeaf7f91b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Presentation/Variantcdfa404c1ff46ff7986a3ba29e78244a4eb870e18499d41f56e1ba238986ec58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b50d6f9310bd91129f7f8b2d009931051ee44498fdde557477733a0d8fc332f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Presentation where
  system : DAF.System
  invariant : system.State → Prop
  invariant_step :
    ∀ input state,
      invariant state →
        invariant (system.step input state)
  name : Lean.Name
  version : DAF.Version

namespace Presentation

/-- The state space restricted to states satisfying the declared invariant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Presentation/Variantcdfa404c1ff46ff7986a3ba29e78244a4eb870e18499d41f56e1ba238986ec58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presentation/Variantcdfa404c1ff46ff7986a3ba29e78244a4eb870e18499d41f56e1ba238986ec58.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1442dd46f08f83ab7219c8da40d9acc6de674d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
