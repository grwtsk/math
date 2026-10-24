# goldbachRationalArcSum_eq_progressionModel_add_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6ba8d00-2f4e-e07d-d726-e4516cfeba6f",
  "kind": "theorem",
  "lexical_name": "goldbachRationalArcSum_eq_progressionModel_add_residual",
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
  "slug": "goldbachrationalarcsum-eq-progressionmodel-add-residual--3e98866451dba7f922cf4780",
  "source": {
    "blob": "6282342dcf45c447702dd5a10a68b519152a4304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 220,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e98866451dba7f922cf4780465da3eb925f11e941a884e32ec413adaca3786e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6ba8d00-2f4e-e07d-d726-e4516cfeba6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachRationalArcSum_eq_progressionModel_add_residual
    (Q N : ℕ) :
    (∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachSingleRationalArcContribution Q N aq) =
      goldbachProgressionArcModelMajorSum Q N +
        ∑ aq ∈ goldbachRationalArcIndices Q,
          goldbachProgressionArcResidual Q N aq := by
  simpa [goldbachProgressionArcModelMajorSum,
    goldbachProgressionArcResidual, goldbachArcModelResidualSum,
    goldbachProgressionArcModel] using
    (goldbachRationalArcSum_eq_model_add_residual
      Q N (goldbachProgressionArcModel N))

/-- A canonical progression-model lower bound, uniform residue discrepancy
budgets, and the complete signed minor bound imply a Goldbach count only under
one strict combined margin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6282342dcf45c447702dd5a10a68b519152a4304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
