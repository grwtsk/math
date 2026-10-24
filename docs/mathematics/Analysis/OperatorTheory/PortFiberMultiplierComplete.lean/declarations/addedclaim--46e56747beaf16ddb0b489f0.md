# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77acf0c07d4c418d8ab5a6190eb38791fa4139bd5d127cbddc0f85a6093cfd6a",
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
  "slug": "addedclaim--46e56747beaf16ddb0b489f0",
  "source": {
    "blob": "991e008037abb9c56c70856b5b88724b8c6f9fe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 43,
    "path": "GRWTSK/Interfaces/PortFiberMultiplierComplete.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46e56747beaf16ddb0b489f09c98fbec4d1dcc58713de23e8056f3f8e438409e",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/PortFiberMultiplierComplete.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77acf0c07d4c418d8ab5a6190eb38791fa4139bd5d127cbddc0f85a6093cfd6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .canonicalRecovery =>
      ∀ (X : Domain) (g : X.carrier →ᵇ ℂ),
        (g ∈ Set.range (boundedFunctionHom X) ↔
          ExtendsHolomorphically X (g : Section X)) ∧
        ∀ hg : ExtendsHolomorphically X (g : Section X),
          boundedFunctionHom X (ofBoundedFunction X g hg) = g
  | .uniformLimit =>
      ∀ (X : Domain), IsOpen X.carrier →
        ∀ (α : Type) (l : Filter α) [l.NeBot]
          (F : α → X.carrier →ᵇ ℂ) (g : X.carrier →ᵇ ℂ),
          Tendsto F l (𝓝 g) →
          (∀ᶠ a in l, ExtendsHolomorphically X (F a : Section X)) →
          ExtendsHolomorphically X (g : Section X)
  | .localDerivative =>
      ∀ (X : Domain), IsOpen X.carrier →
        ∀ (α : Type) (l : Filter α) [l.NeBot]
          (F : α → BoundedSymbol X) (f : BoundedSymbol X),
          Tendsto F l (𝓝 f) →
          TendstoLocallyUniformlyOn (fun a => deriv (ambientRepresentative X (F a).value))
            (deriv (ambientRepresentative X f.value)) l X.carrier
  | .completeClosedImage =>
      ∀ (X : Domain), IsOpen X.carrier →
        IsClosed (Set.range (boundedFunctionHom X)) ∧ CompleteSpace (BoundedSymbol X)
  | .uniqueLimit =>
      ∀ (X : Domain), IsOpen X.carrier →
        (∀ (α : Type) (l : Filter α) [l.NeBot] (F : α → BoundedSymbol X)
          (g : X.carrier →ᵇ ℂ),
          Tendsto (fun a => boundedFunctionHom X (F a)) l (𝓝 g) →
          ∃! f : BoundedSymbol X, boundedFunctionHom X f = g ∧ Tendsto F l (𝓝 f)) ∧
        (∀ (F : ℕ → BoundedSymbol X), CauchySeq F →
          ∃! f : BoundedSymbol X, Tendsto F atTop (𝓝 f))
  | .operatorLimit =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (F : ℕ → BoundedSymbol D.X), CauchySeq F →
        ∃! f : BoundedSymbol D.X,
          Tendsto F atTop (𝓝 f) ∧
          Tendsto (fun n => completedRepresentation M μ hOpen (F n)) atTop
            (𝓝 (completedRepresentation M μ hOpen f))
  | .kernelBoundary =>
      (CompleteSpace (BoundedSymbol
        GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.disk) ∧
        GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures.diskSymbol ≠ 0 ∧
        completedRepresentation
          (MetricWeights.identity
            GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover)
          (Measure.dirac GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center)
          GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen
          GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures.diskSymbol = 0) ∧
      (CompleteSpace (BoundedSymbol Fixtures.emptyDomain) ∧
        ∀ f : BoundedSymbol Fixtures.emptyDomain, f = 0 ∧ ‖f‖ = 0)
  | .filterBoundary =>
      let X := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.disk
      Tendsto (fun _ : ℕ => (0 : BoundedSymbol X)) ⊥ (𝓝 0) ∧
      Tendsto (fun _ : ℕ => (0 : BoundedSymbol X)) ⊥ (𝓝 1) ∧
      (0 : BoundedSymbol X) ≠ 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/PortFiberMultiplierComplete.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberMultiplierComplete.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991e008037abb9c56c70856b5b88724b8c6f9fe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
