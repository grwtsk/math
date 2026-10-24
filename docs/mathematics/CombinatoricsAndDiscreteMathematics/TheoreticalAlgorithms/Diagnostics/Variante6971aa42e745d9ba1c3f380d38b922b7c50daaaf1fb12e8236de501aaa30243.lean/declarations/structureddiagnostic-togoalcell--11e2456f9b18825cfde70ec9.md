# StructuredDiagnostic.toGoalCell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb4533f4b101fb743eb0c5d30d4ae9a9f71d113b68884ab59f5d2916d2f45432",
  "kind": "def",
  "lexical_name": "StructuredDiagnostic.toGoalCell",
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
  "slug": "structureddiagnostic-togoalcell--11e2456f9b18825cfde70ec9",
  "source": {
    "blob": "bfca430ce1d3434f5c3678428c9a35b51478ac42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Diagnostics/Variante6971aa42e745d9ba1c3f380d38b922b7c50daaaf1fb12e8236de501aaa30243.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11e2456f9b18825cfde70ec95042e9b086a5ce3a96cf324e9e79586981f92cca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Diagnostics/Variante6971aa42e745d9ba1c3f380d38b922b7c50daaaf1fb12e8236de501aaa30243.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb4533f4b101fb743eb0c5d30d4ae9a9f71d113b68884ab59f5d2916d2f45432`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def StructuredDiagnostic.toGoalCell
    (diagnostic : StructuredDiagnostic) (fallbackId : GoalCellId) : GoalCell where
  id := diagnostic.goalId?.getD fallbackId
  targetType := diagnostic.messageCode
  localContext := [diagnostic.humanMessage]
  kind := diagnostic.kind.toObligationKind
  status := diagnostic.severity.toGoalStatus
  sourceDeclaration? := diagnostic.declarationIdentity?

@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Diagnostics/Variante6971aa42e745d9ba1c3f380d38b922b7c50daaaf1fb12e8236de501aaa30243.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Diagnostics/Variante6971aa42e745d9ba1c3f380d38b922b7c50daaaf1fb12e8236de501aaa30243.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfca430ce1d3434f5c3678428c9a35b51478ac42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
