# ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09bef132434bbd8e5f7fabfd160fa3d594270aedd016265bd63d30b1d46f9520",
  "kind": "abbrev",
  "lexical_name": "ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion",
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
  "slug": "clauseindexedpinnedprimeweightfixedcapacitycriterion--a59b050429afd973b94d5445",
  "source": {
    "blob": "1b4b7637f7adc1f37559e1aa11261b5d13929260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a59b050429afd973b94d544562bb0bcd32a38427d8d79f0c8d77591596aa836c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09bef132434bbd8e5f7fabfd160fa3d594270aedd016265bd63d30b1d46f9520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion
    (C : ℝ) {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PinnedPrimeWeightFixedCapacityCriterionAt C
    (countedSuccessFraction polarity)

/-- Every clause-indexed immutable-rule criterion satisfies the corresponding
source-independent capacity obstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b4b7637f7adc1f37559e1aa11261b5d13929260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
