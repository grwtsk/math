# RecoverableFrom.eq_of_eq

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
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa8e1c1d-86a4-437b-3890-ada3915a2eac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:599379cc-a777-81e8-5a62-777fe5c1e40b",
  "kind": "theorem",
  "lexical_name": "RecoverableFrom.eq_of_eq",
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
  "slug": "recoverablefrom-eq-of-eq--8689a072cfa900dc1d815446",
  "source": {
    "blob": "f2559c83db7787d2479a69742fc811a00fb47ad1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8689a072cfa900dc1d815446117cb7e2c42877b0c466f33554478e244908891e",
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

Occurrence: `result:599379cc-a777-81e8-5a62-777fe5c1e40b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RecoverableFrom.eq_of_eq {q : α → Q} {F : α → β}
    (recoverable : RecoverableFrom q F) {x y : α} (same : q x = q y) :
    F x = F y := by
  obtain ⟨decode, exact⟩ := recoverable
  exact (exact x).symm.trans ((congrArg decode same).trans (exact y))

/-- A collision with distinct target values rules out every total decoder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bdf9a527ed73fee5c91d9be12867af90b98b89517e94bf6655f08d0f0f07082.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2559c83db7787d2479a69742fc811a00fb47ad1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
