# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f13ae9a2975fbef37e52077df0254aaae1506dc0f0cbeac52e4f9cafd82a80f2",
  "kind": "def",
  "lexical_name": "AddedClaim",
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
  "slug": "addedclaim--82820b9b0bfad46f56349fd2",
  "source": {
    "blob": "c4eb2831f018f2f4b2674dce246c28ec6f69ab6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 45,
    "path": "GRWTSK/Interfaces/PortFiberAreaComplete.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82820b9b0bfad46f56349fd2336914abe546f448a7a107633837b4bb94a92a0c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberAreaComplete.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f13ae9a2975fbef37e52077df0254aaae1506dc0f0cbeac52e4f9cafd82a80f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .exactEnergy => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (q : AreaQuotient hOpen),
      scalarEnergy hOpen (realization hOpen q) =
        quotientEnergy (MetricWeights.identity D) (areaMeasure D.X) hOpen q
  | .lowerSemicontinuity => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → HolomorphicSection D.X) (f : HolomorphicSection D.X),
      (∀ x : D.X.carrier, Tendsto (fun n => (F n : Section D.X) x) atTop
        (𝓝 ((f : Section D.X) x))) →
      scalarEnergy hOpen f ≤ liminf (fun n => scalarEnergy hOpen (F n)) atTop
  | .finiteLimit => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen) (hF : CauchySeq F),
      scalarEnergy hOpen (holomorphicLimit hOpen F hF) < ∞ ∧
        realization hOpen (limitClass hOpen F hF) = holomorphicLimit hOpen F hF
  | .tailControl => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen) (hF : CauchySeq F) (n : ℕ) (ε : ℝ), 0 ≤ ε →
      (∀ᶠ m in atTop, dist (F n) (F m) ≤ ε) →
      dist (F n) (limitClass hOpen F hF) ≤ ε
  | .normConvergence => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen) (hF : CauchySeq F),
      Tendsto F atTop (𝓝 (limitClass hOpen F hF)) ∧
        ∃! q : AreaQuotient hOpen, Tendsto F atTop (𝓝 q)
  | .quotientComplete => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      CompleteSpace (AreaQuotient hOpen) ∧
        Function.Surjective (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen)
  | .completionBinding => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      (∀ q : AreaQuotient hOpen,
        areaCompletionEquiv hOpen q =
          toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen q ∧
        completedRealization hOpen
          (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen q) =
          realization hOpen q) ∧
      (∀ v : SectionCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen,
        scalarEnergy hOpen (completedRealization hOpen v) =
          completionEnergy (MetricWeights.identity D) (areaMeasure D.X) hOpen v ∧
        scalarEnergy hOpen (completedRealization hOpen v) < ∞) ∧
      Function.Injective (completedRealization hOpen)
  | .failureBoundaries =>
      (∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
        (q : AreaQuotient hOpen),
        limitClass hOpen (fun _ : ℕ => q)
          (GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform.Fixtures.constant_cauchy hOpen q) = q) ∧
      (∀ k : ℕ, Tendsto (fun n =>
        GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.escapingPulse n k) atTop (𝓝 0)) ∧
      (∀ n : ℕ, (∫⁻ k,
        GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.escapingPulse n k ∂Measure.count) = 1) ∧
      (∫⁻ _k : ℕ, (0 : ℝ≥0∞) ∂Measure.count) <
        liminf (fun n => ∫⁻ k,
          GRWTSK.Analysis.Complex.HolomorphicAreaComplete.Fixtures.escapingPulse n k ∂Measure.count) atTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberAreaComplete.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberAreaComplete.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4eb2831f018f2f4b2674dce246c28ec6f69ab6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
