# goldbachSingularDiagonalMain_sub_budget_le_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:796786b6-9125-e95f-9fce-bb32b15ead99",
  "kind": "theorem",
  "lexical_name": "goldbachSingularDiagonalMain_sub_budget_le_re",
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
  "slug": "goldbachsingulardiagonalmain-sub-budget-le-re--9069a4990de614e1830e64cc",
  "source": {
    "blob": "ebce207c21c404772dc3a7f87491ee18c58fbbae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 289,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9069a4990de614e1830e64cce1eb30d690ae22b401e883b07f2fe71a44cdb8dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:796786b6-9125-e95f-9fce-bb32b15ead99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachSingularDiagonalMain_sub_budget_le_re
    (Q N q : ℕ) :
    goldbachSingularDiagonalMain Q N q -
        goldbachSingularOscillatoryBudget Q N q ≤
      (goldbachSymmetricRealSingularIntegral Q N q).re := by
  have hnorm :=
    norm_goldbachSingularOscillatoryCorrection_le Q N q
  have hre :
      |(goldbachSingularOscillatoryCorrection Q N q).re| ≤
        goldbachSingularOscillatoryBudget Q N q :=
    (Complex.abs_re_le_norm
      (goldbachSingularOscillatoryCorrection Q N q)).trans hnorm
  have hlower :
      -goldbachSingularOscillatoryBudget Q N q ≤
        (goldbachSingularOscillatoryCorrection Q N q).re :=
    (abs_le.mp hre).1
  rw [goldbachSymmetricRealSingularIntegral_eq_main_add_correction,
    Complex.add_re, Complex.ofReal_re]
  linarith

/-- A strict finite oscillatory budget below the diagonal mass certifies a
positive symmetric singular integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebce207c21c404772dc3a7f87491ee18c58fbbae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
