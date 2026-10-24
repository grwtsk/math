# clauseIndexedFeatureNorm_to_previous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8637d5a-b2fa-1320-ad67-4134422e5d55",
  "kind": "theorem",
  "lexical_name": "clauseIndexedFeatureNorm_to_previous",
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
  "slug": "clauseindexedfeaturenorm-to-previous--78e28fab2d12d96247e0bca4",
  "source": {
    "blob": "0bda12c7ce8190ef2b087b8f7efd175a156eb223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 54,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaFeatureNorm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78e28fab2d12d96247e0bca4a0c4f6eb6fe71d3403d9ce713b31ba793b9f89f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaFeatureNorm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8637d5a-b2fa-1320-ad67-4134422e5d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clauseIndexedFeatureNorm_to_previous
    {k : ℕ}
    (nextPolarity : ClausePolarity (k + 1))
    (currentPolarity : ClausePolarity k)
    (hlower :
      (3 : ℝ) / 4 ≤ countedSuccessFraction nextPolarity)
    (hcriterion :
      ClauseIndexedPrimeThetaFeatureNormCriterion nextPolarity)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction nextPolarity)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction currentPolarity) :=
  clauseIndexedRecurrence_to_previous
    nextPolarity currentPolarity hlower
    (clauseIndexedFeatureNorm_to_recurrence hcriterion)
    htheta

/-- Arity three names exactly the norm-certified feature criterion at `7/8`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaFeatureNorm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaFeatureNorm.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bda12c7ce8190ef2b087b8f7efd175a156eb223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
