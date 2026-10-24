# RecoverableFrom.of_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2559c83db7787d2479a69742fc811a00fb47ad1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6dc86d9-ba5e-aa96-45ef-7d9d08730a51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f66a5994-2190-562f-dccb-9f327d536f9c",
  "kind": "theorem",
  "lexical_name": "RecoverableFrom.of_factorization",
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
  "slug": "recoverablefrom-of-factorization--3339f053c9814ee5d8a8e67e",
  "source": {
    "blob": "f2559c83db7787d2479a69742fc811a00fb47ad1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3339f053c9814ee5d8a8e67ef8f2961ca0d51a59cf82c56c994d9c2949d553f9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f66a5994-2190-562f-dccb-9f327d536f9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RecoverableFrom.of_factorization {R : Type*} {q : α → Q} {F : α → β}
    (recoverable : RecoverableFrom q F) (refined : α → R) (factor : R → Q)
    (factorization : ∀ x, factor (refined x) = q x) : RecoverableFrom refined F := by
  obtain ⟨decode, exact⟩ := recoverable
  exact ⟨decode ∘ factor, fun x => (congrArg decode (factorization x)).trans (exact x)⟩

/-- A target descends through the actual quotient exactly when it respects its relation.
The decoder is `Quotient.lift`; no default target value or representative choice is needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2559c83db7787d2479a69742fc811a00fb47ad1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
