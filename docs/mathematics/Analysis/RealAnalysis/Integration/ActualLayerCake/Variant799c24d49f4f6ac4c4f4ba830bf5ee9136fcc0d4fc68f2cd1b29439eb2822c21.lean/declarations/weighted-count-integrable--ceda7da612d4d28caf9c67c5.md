# weighted_count_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2751bf13-196c-504f-851f-5feb63ac696c",
  "kind": "theorem",
  "lexical_name": "weighted_count_integrable",
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
  "slug": "weighted-count-integrable--ceda7da612d4d28caf9c67c5",
  "source": {
    "blob": "071047e19e2ccf471739af1dae3abb109c8bea98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ceda7da612d4d28caf9c67c5885c8276fb41d419da2bc8ec1b224a7fe9f26491",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2751bf13-196c-504f-851f-5feb63ac696c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_count_integrable (A T a b : ℝ) :
    IntervalIntegrable (fun σ => densityWeight A σ * nT T σ) volume a b := by
  have heq : (fun σ => densityWeight A σ * nT T σ) =
      (fun σ => ∑ o : DyadicOccurrence T,
        if σ < beta o then densityWeight A σ else 0) := by
    funext σ
    simp only [nT, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro o _
    split_ifs <;> simp
  rw [heq]
  convert! IntervalIntegrable.sum Finset.univ
    (fun (o : DyadicOccurrence T) _ => strict_indicator_integrable A (beta o) a b) using 1
  ext σ
  simp

/-- The requested actual finite layer-cake, in the positive −dn orientation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualLayerCake/Variant799c24d49f4f6ac4c4f4ba830bf5ee9136fcc0d4fc68f2cd1b29439eb2822c21.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `071047e19e2ccf471739af1dae3abb109c8bea98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
