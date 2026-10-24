# FiniteKummerSelmerData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a4d2bb07a66cddf328b34c7948f1a4e5d042284122ca8f30ffbd1f809761c96",
  "kind": "structure",
  "lexical_name": "FiniteKummerSelmerData",
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
  "slug": "finitekummerselmerdata--fefa2fbf966d66036ad17a57",
  "source": {
    "blob": "6bf8c6021699c4c6a6bc19174d0c3c64dc07d658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fefa2fbf966d66036ad17a5719d267e8ae1beb06faaeae6895292940dfc791ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a4d2bb07a66cddf328b34c7948f1a4e5d042284122ca8f30ffbd1f809761c96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteKummerSelmerData
    (P : FiniteSelmerProblem.{u, u, u}) where
  globalKummer :
    FiniteH1Map P.G P.A P.ρG
  localKummer :
    (place : P.V) →
      FiniteH1Map (P.Gv place) P.A (P.ρv place)
  localizeDomain :
    (place : P.V) →
      globalKummer.Domain → (localKummer place).Domain
  compatibility :
    ∀ (place : P.V) (x : globalKummer.Domain),
      resFiniteH1 (P.ιv place) (globalKummer.toH1 x) =
        (localKummer place).toH1 (localizeDomain place x)
  localKummer_mem :
    ∀ (place : P.V) (x : globalKummer.Domain),
      (P.localCondition place).carrier
        ((localKummer place).toH1 (localizeDomain place x))
  boundary : List String

namespace FiniteKummerSelmerData

/-- The global-to-local compatibility equations are visible as a named proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bf8c6021699c4c6a6bc19174d0c3c64dc07d658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
