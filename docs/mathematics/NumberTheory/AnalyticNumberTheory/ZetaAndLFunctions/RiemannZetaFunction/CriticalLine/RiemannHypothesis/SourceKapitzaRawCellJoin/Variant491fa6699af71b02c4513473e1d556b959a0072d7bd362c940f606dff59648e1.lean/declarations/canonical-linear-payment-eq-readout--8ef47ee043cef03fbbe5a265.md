# canonical_linear_payment_eq_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:791c2b8c-e541-9ca4-75e6-e947bae23fff",
  "kind": "theorem",
  "lexical_name": "canonical_linear_payment_eq_readout",
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
  "slug": "canonical-linear-payment-eq-readout--8ef47ee043cef03fbbe5a265",
  "source": {
    "blob": "4efb7784db57887dd1caba73c49b078b5deafe28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 209,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant491fa6699af71b02c4513473e1d556b959a0072d7bd362c940f606dff59648e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ef47ee043cef03fbbe5a2651d29e543767e952b0e2d587d7880a9da61e2e4d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant491fa6699af71b02c4513473e1d556b959a0072d7bd362c940f606dff59648e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:791c2b8c-e541-9ca4-75e6-e947bae23fff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonical_linear_payment_eq_readout (A : ℝ) (hA : 1 ≤ A) :
    canonicalLinearSignedPayment A =
      ∑ j ∈ Finset.range (rawCutoff A), rawCellReadout A j := by
  let P := fun j => canonicalLinearCoefficient A j * physicalState A j
  have he : (∑ j ∈ Finset.range (rawCutoff A),
      (rawCellOffset A j + canonicalLinearCoefficient A (j + 1) * physicalForcing A j)) =
      ∑ j ∈ Finset.range (rawCutoff A), (rawCellReadout A j + (P (j + 1) - P j)) := by
    apply Finset.sum_congr rfl
    intro j hj
    have hl := canonical_linear_subaction_exact A hA j (Finset.mem_range.mp hj)
    rw [← physical_recurrence A (by linarith) j (Finset.mem_range.mp hj)] at hl
    dsimp only [P]
    linarith only [hl]
  rw [canonicalLinearSignedPayment, he, Finset.sum_add_distrib, linear_potential_telescope]
  dsimp only [P]
  rw [canonicalLinearCoefficient_terminal, canonicalLinearCoefficient_initial A hA,
    physicalState_initial A (by linarith)]
  ring

/-- A uniform bound on the canonical linear payment merely restates the residual cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant491fa6699af71b02c4513473e1d556b959a0072d7bd362c940f606dff59648e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant491fa6699af71b02c4513473e1d556b959a0072d7bd362c940f606dff59648e1.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4efb7784db57887dd1caba73c49b078b5deafe28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
