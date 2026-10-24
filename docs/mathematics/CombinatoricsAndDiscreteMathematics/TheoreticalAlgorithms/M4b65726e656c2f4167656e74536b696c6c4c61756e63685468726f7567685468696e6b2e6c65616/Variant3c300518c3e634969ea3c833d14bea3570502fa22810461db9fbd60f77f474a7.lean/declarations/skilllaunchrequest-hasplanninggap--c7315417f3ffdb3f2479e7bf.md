# SkillLaunchRequest.hasPlanningGap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5db612768d2a25aab6c796ff08b6647622830be77180b324d278582dc7133c90",
  "kind": "def",
  "lexical_name": "SkillLaunchRequest.hasPlanningGap",
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
  "slug": "skilllaunchrequest-hasplanninggap--c7315417f3ffdb3f2479e7bf",
  "source": {
    "blob": "60e85f5a7a1a1587005a866532377ebb130537c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f4167656e74536b696c6c4c61756e63685468726f7567685468696e6b2e6c65616/Variant3c300518c3e634969ea3c833d14bea3570502fa22810461db9fbd60f77f474a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7315417f3ffdb3f2479e7bffd6a6c0f9ed1d08d77a5232ea08d713fcebc4880",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f4167656e74536b696c6c4c61756e63685468726f7567685468696e6b2e6c65616/Variant3c300518c3e634969ea3c833d14bea3570502fa22810461db9fbd60f77f474a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5db612768d2a25aab6c796ff08b6647622830be77180b324d278582dc7133c90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SkillLaunchRequest.hasPlanningGap (request : SkillLaunchRequest) : Bool :=
  (!request.finiteInputPresent) ||
    (!request.endpointKnown) ||
    (!request.publicWitnessExpected)

/-- Deterministic planning-only skill launch adapter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f4167656e74536b696c6c4c61756e63685468726f7567685468696e6b2e6c65616/Variant3c300518c3e634969ea3c833d14bea3570502fa22810461db9fbd60f77f474a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f4167656e74536b696c6c4c61756e63685468726f7567685468696e6b2e6c65616/Variant3c300518c3e634969ea3c833d14bea3570502fa22810461db9fbd60f77f474a7.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60e85f5a7a1a1587005a866532377ebb130537c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
