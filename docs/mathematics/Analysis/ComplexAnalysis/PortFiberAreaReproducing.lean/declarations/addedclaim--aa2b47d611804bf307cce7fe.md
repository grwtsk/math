# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf1947ede7d500c55342bdf54ad9503a830c1a3218f2041b9bb9e77b1af95b8a",
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
  "slug": "addedclaim--aa2b47d611804bf307cce7fe",
  "source": {
    "blob": "f5c17e78682f6043d9c06f46eb54b892ee220a60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 45,
    "path": "GRWTSK/Interfaces/PortFiberAreaReproducing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa2b47d611804bf307cce7fecb6ff7eed17167830094195dc205b1b64d144a56",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberAreaReproducing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf1947ede7d500c55342bdf54ad9503a830c1a3218f2041b9bb9e77b1af95b8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .evaluationBinding => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (W : CircleWindow D.X) (v : AreaCompletion hOpen),
      completedEvaluation W hOpen v =
        (completedRealization hOpen v : Section D.X) W.centerPoint
  | .multiplierAction => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (f : BoundedSymbol D.X) (v : AreaCompletion hOpen),
      completedRealization hOpen
        (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f v) =
          f.1 * completedRealization hOpen v
  | .reproducingVector => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (x : D.X.carrier), ∃! k : AreaCompletion hOpen,
        ∀ v, inner ℂ k v = (completedRealization hOpen v : Section D.X) x
  | .gramKernel => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      (∀ z w : D.X.carrier, star (kernel hOpen z w) = kernel hOpen w z) ∧
      ∀ (κ : Type) (S : Finset κ) (p : κ → D.X.carrier) (c : κ → ℂ),
        0 ≤ (∑ i ∈ S, ∑ j ∈ S, star (c i) * c j * kernel hOpen (p i) (p j)).re
  | .diagonalControl => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (W : CircleWindow D.X),
      kernel hOpen W.centerPoint W.centerPoint = (‖evaluationAt hOpen W.centerPoint‖ : ℂ) ^ 2 ∧
      (kernel hOpen W.centerPoint W.centerPoint).re ≤
        ((Real.sqrt (Real.pi * W.radius ^ 2))⁻¹) ^ 2
  | .finiteAreaPositivity => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      (volume : Measure ℂ) D.X.carrier < ∞ →
      ∀ x : D.X.carrier, 0 < (kernel hOpen x x).re
  | .adjointBinding => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (f : BoundedSymbol D.X) (x : D.X.carrier),
      (ContinuousLinearMap.adjoint
        (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f))
          (kernelVector hOpen x) = star (f.value x) • kernelVector hOpen x
  | .phaseBoundary => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      (volume : Measure ℂ) D.X.carrier < ∞ → ∀ x : D.X.carrier,
      (ContinuousLinearMap.adjoint (completedRepresentation (MetricWeights.identity D)
        (areaMeasure D.X) hOpen (BoundedSymbol.constants D.X Complex.I)))
          (kernelVector hOpen x) ≠ Complex.I • kernelVector hOpen x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberAreaReproducing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberAreaReproducing.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5c17e78682f6043d9c06f46eb54b892ee220a60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
