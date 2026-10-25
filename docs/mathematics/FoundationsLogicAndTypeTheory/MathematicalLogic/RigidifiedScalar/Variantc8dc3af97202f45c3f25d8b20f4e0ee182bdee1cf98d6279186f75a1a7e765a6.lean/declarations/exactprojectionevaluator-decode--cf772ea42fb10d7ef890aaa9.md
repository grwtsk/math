# ExactProjectionEvaluator.decode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f646376522b96a3c0ddb28bbc9abffeae791dc4a99d6a4ddff77fa824df5dae1",
  "kind": "def",
  "lexical_name": "ExactProjectionEvaluator.decode",
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
  "slug": "exactprojectionevaluator-decode--cf772ea42fb10d7ef890aaa9",
  "source": {
    "blob": "e6d895fdaff73155f5460d71ba44bf0dc3237c84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf772ea42fb10d7ef890aaa93ae68628d068b6aefba07bd8f6cb8c6c725d9ea2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f646376522b96a3c0ddb28bbc9abffeae791dc4a99d6a4ddff77fa824df5dae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExactProjectionEvaluator.decode
    {Projection : Type u}
    (evaluator : ExactProjectionEvaluator Projection)
    (scalar : Nat) : Projection :=
  match evaluator.encoding.decode scalar with
  | some input => evaluator.project input
  | none => evaluator.fallback

/--
The exact augmented scalar determines the selected labeled projection.  This is
an executable equality for every encoded finite stage, not a digest claim.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6d895fdaff73155f5460d71ba44bf0dc3237c84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
