# actualXiComplexMellinTailSeven_at_one_eq_physical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c91ecf43-1bcc-2805-1a84-fc6ad5bf3133",
  "kind": "theorem",
  "lexical_name": "actualXiComplexMellinTailSeven_at_one_eq_physical",
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
  "slug": "actualxicomplexmellintailseven-at-one-eq-physical--c9646b5d208ce8a778d4c414",
  "source": {
    "blob": "56b66a899ec08fbbd13e71fae22b8553db9cb12c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 24,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant775c1b0a58e723dbc47d0f9c635f53e7d35f95db49fa5dfdab6b0ce9ff305591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9646b5d208ce8a778d4c414cc44c9825b3c3e8c59cfd9c34ff8a99576fc1a14",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant775c1b0a58e723dbc47d0f9c635f53e7d35f95db49fa5dfdab6b0ce9ff305591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c91ecf43-1bcc-2805-1a84-fc6ad5bf3133`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexMellinTailSeven_at_one_eq_physical :
    actualXiComplexMellinTailSeven 1 =
      ((∫ y in Ioi (7 : ℝ), shiftedActualChebyshev y / y ^ 2 : ℝ) : ℂ) := by
  unfold actualXiComplexMellinTailSeven
  rw [← integral_complex_ofReal]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro y _
  simp only [show -((1 : ℂ) + 1) = -(2 : ℂ) by norm_num, cpow_neg, cpow_two,
    div_eq_mul_inv, ofReal_mul, ofReal_inv, ofReal_pow]

/-- Actual full L1 justifies dominated convergence from the genuine initial domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant775c1b0a58e723dbc47d0f9c635f53e7d35f95db49fa5dfdab6b0ce9ff305591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant775c1b0a58e723dbc47d0f9c635f53e7d35f95db49fa5dfdab6b0ce9ff305591.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56b66a899ec08fbbd13e71fae22b8553db9cb12c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
