# no_field_only_recovery_from_collision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d59e2ae-c239-eb58-c5a3-dd3adef45f25",
  "kind": "theorem",
  "lexical_name": "no_field_only_recovery_from_collision",
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
  "slug": "no-field-only-recovery-from-collision--2e39862d29e9139fb55760cc",
  "source": {
    "blob": "7e3177b557702afd2c3fec722ca0eceb5c3de608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 366,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variantc9518e2665e5aae2f19a54401b9760ae2e7948addeb44ae253837526f97cf016.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e39862d29e9139fb55760cc12c50740552ff4cae529a675b181f663a1539d61",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variantc9518e2665e5aae2f19a54401b9760ae2e7948addeb44ae253837526f97cf016.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d59e2ae-c239-eb58-c5a3-dd3adef45f25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_field_only_recovery_from_collision
    (C : ArithmeticCollision)
    (A : FieldOnlyArithmeticAlgorithm) :
    ¬ (CorrectArithmeticRecovery A C.left ∧
        CorrectArithmeticRecovery A C.right) := by
  intro h
  rcases h with ⟨hLeft, hRight⟩
  have hTor : C.left.rationalTorsion = C.right.rationalTorsion := by
    calc
      C.left.rationalTorsion = A C.left.fieldTDAObservation := hLeft.symm
      _ = A C.right.fieldTDAObservation := by rw [C.sameObservation]
      _ = C.right.rationalTorsion := hRight
  exact C.distinctArithmeticTorsion hTor

/-- Non-identifiability, rather than undecidability, is the corrected obstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variantc9518e2665e5aae2f19a54401b9760ae2e7948addeb44ae253837526f97cf016.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variantc9518e2665e5aae2f19a54401b9760ae2e7948addeb44ae253837526f97cf016.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e3177b557702afd2c3fec722ca0eceb5c3de608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
