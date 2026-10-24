# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c4b7a5140828510431c29b05978b6deef9b08e4abadf76780616097ca69c9d1",
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
  "slug": "addedclaim--939c07b2cdc713c3e23adcb5",
  "source": {
    "blob": "e2efbb4e4121500784ea0ec9106e8a725d3bf3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 44,
    "path": "GRWTSK/Interfaces/PortFiberAreaL2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:939c07b2cdc713c3e23adcb5a06a968813ec32ceee9da2656a971cccc73d217b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c4b7a5140828510431c29b05978b6deef9b08e4abadf76780616097ca69c9d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .l2Membership => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (v : AreaCompletion hOpen),
      MemLp (realizedValue hOpen v) 2 (areaMeasure D.X) ∧
        (toL2 hOpen v : Section D.X) =ᵐ[areaMeasure D.X] realizedValue hOpen v
  | .integralPairing => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (v w : AreaCompletion hOpen),
      Integrable (fun x => star (realizedValue hOpen v x) * realizedValue hOpen w x)
        (areaMeasure D.X) ∧
      inner ℂ v w = ∫ x, star (realizedValue hOpen v x) * realizedValue hOpen w x
        ∂areaMeasure D.X
  | .isometricBinding => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (v w : AreaCompletion hOpen),
      inner ℂ (toL2 hOpen v) (toL2 hOpen w) = inner ℂ v w ∧
        ‖toL2 hOpen v‖ = ‖v‖ ∧
        Set.range (originalL2Embedding hOpen) = Set.range (l2Embedding hOpen)
  | .imageCharacterization => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (hOpen : D.IsOpenCover) (g : Lp ℂ 2 (areaMeasure D.X)),
      g ∈ holomorphicSubspace hOpen ↔ ∃ f : HolomorphicSection D.X,
        scalarEnergy hOpen f < ∞ ∧ (g : Section D.X) =ᵐ[areaMeasure D.X] (f : Section D.X)
  | .closedImage => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      IsClosed (holomorphicSubspace hOpen : Set (Lp ℂ 2 (areaMeasure D.X)))
  | .integralReproduction => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (hOpen : D.IsOpenCover) (x : D.X.carrier) (v : AreaCompletion hOpen),
      Integrable (fun z => kernel hOpen x z * realizedValue hOpen v z) (areaMeasure D.X) ∧
      (∫ z, kernel hOpen x z * realizedValue hOpen v z ∂areaMeasure D.X) =
        realizedValue hOpen v x
  | .multiplierBinding => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) (v : AreaCompletion hOpen),
      (l2Embedding hOpen (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X)
        hOpen f v) : Section D.X) =ᵐ[areaMeasure D.X]
          fun x => f.value x * (l2Embedding hOpen v : Section D.X) x
  | .nullPointBoundary =>
      GRWTSK.Analysis.Complex.HolomorphicAreaL2.Fixtures.spikeClass = 0 ∧
      let X := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.disk
      let x := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center
      ¬ ∃ E : Lp ℂ 2 (areaMeasure X) → ℂ,
        ∀ (f : Section X) (hf : MemLp f 2 (areaMeasure X)), E (hf.toLp f) = f x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberAreaL2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberAreaL2.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2efbb4e4121500784ea0ec9106e8a725d3bf3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
