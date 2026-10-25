# exact_projection_from_rigidifiedScalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1020a49-b505-bb65-6213-52bc21db1fde",
  "kind": "theorem",
  "lexical_name": "exact_projection_from_rigidifiedScalar",
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
  "slug": "exact-projection-from-rigidifiedscalar--e53980c051e5fbfa96f2555c",
  "source": {
    "blob": "e6d895fdaff73155f5460d71ba44bf0dc3237c84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e53980c051e5fbfa96f2555c25da975060dc84a1f6c4dcdc081821f1d3334e18",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1020a49-b505-bb65-6213-52bc21db1fde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_projection_from_rigidifiedScalar
    {Projection : Type u}
    (evaluator : ExactProjectionEvaluator Projection) :
    ∃ reconstruct : Nat → Projection,
      ∀ input,
        evaluator.project input =
          reconstruct
            (rigidifiedScalar evaluator.encoding input) := by
  refine ⟨evaluator.decode, ?_⟩
  intro input
  simp [
    ExactProjectionEvaluator.decode,
    rigidifiedScalar,
    evaluator.encoding.decode_encode,
  ]

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantc8dc3af97202f45c3f25d8b20f4e0ee182bdee1cf98d6279186f75a1a7e765a6.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6d895fdaff73155f5460d71ba44bf0dc3237c84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
