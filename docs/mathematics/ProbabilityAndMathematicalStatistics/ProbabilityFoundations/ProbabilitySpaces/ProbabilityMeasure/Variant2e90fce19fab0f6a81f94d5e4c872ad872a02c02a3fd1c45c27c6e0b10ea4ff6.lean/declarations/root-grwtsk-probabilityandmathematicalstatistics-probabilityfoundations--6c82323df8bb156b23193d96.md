# _root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.ProbabilityMeasure.Variantb17f8dc9a9fb066f3fe9ccecbfbfebfe522181ca896977c078bef5f4e62a6705.ProbabilityMeasure.toFiniteMeasure_normalize_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3899f890-746d-b8d9-05cb-a5018b7d0dca",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.ProbabilityMeasure.Variantb17f8dc9a9fb066f3fe9ccecbfbfebfe522181ca896977c078bef5f4e62a6705.ProbabilityMeasure.toFiniteMeasure_normalize_eq_self",
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
  "slug": "root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--6c82323df8bb156b23193d96",
  "source": {
    "blob": "9dcd944ac71f1e139e8baba7e4dba96d2cdbf1eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 521,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant2e90fce19fab0f6a81f94d5e4c872ad872a02c02a3fd1c45c27c6e0b10ea4ff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c82323df8bb156b23193d9603c13c256e45a8decda4b84faa604b1338813b83",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant2e90fce19fab0f6a81f94d5e4c872ad872a02c02a3fd1c45c27c6e0b10ea4ff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3899f890-746d-b8d9-05cb-a5018b7d0dca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.ProbabilityMeasure.Variantb17f8dc9a9fb066f3fe9ccecbfbfebfe522181ca896977c078bef5f4e62a6705.ProbabilityMeasure.toFiniteMeasure_normalize_eq_self {m0 : MeasurableSpace Ω}
    (μ : ProbabilityMeasure Ω) : μ.toFiniteMeasure.normalize = μ := by
  apply ProbabilityMeasure.eq_of_forall_apply_eq
  intro s _s_mble
  rw [μ.toFiniteMeasure.normalize_eq_of_nonzero μ.toFiniteMeasure_nonzero s]
  simp only [ProbabilityMeasure.mass_toFiniteMeasure, inv_one, one_mul, μ.coeFn_toFiniteMeasure]

/-- Averaging with respect to a finite measure is the same as integrating against
`MeasureTheory.FiniteMeasure.normalize`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant2e90fce19fab0f6a81f94d5e4c872ad872a02c02a3fd1c45c27c6e0b10ea4ff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant2e90fce19fab0f6a81f94d5e4c872ad872a02c02a3fd1c45c27c6e0b10ea4ff6.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dcd944ac71f1e139e8baba7e4dba96d2cdbf1eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
