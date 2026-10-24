# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9f0bd54589e1a62b05ebff6e1f44ef084f504dccf7adb69ac6c552c956dc587",
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
  "slug": "addedclaim--a8c1fd806d293d96a987aa8e",
  "source": {
    "blob": "96fd6f7d2c6670492fe9006722bc7994f606f4a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 44,
    "path": "GRWTSK/Interfaces/PortFiberAreaLocalUniform.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8c1fd806d293d96a987aa8ecae71991af6762c9b2f7e112d2d8636540fe61c9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberAreaLocalUniform.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9f0bd54589e1a62b05ebff6e1f44ef084f504dccf7adb69ac6c552c956dc587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .exactRealization => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      Function.Injective (realization hOpen) ∧
      ∀ s : FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen,
        realization hOpen (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen s) =
          identitySymbol hOpen s.1
  | .evaluationBinding => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (W : CircleWindow D.X) (q : AreaQuotient hOpen),
      functional W hOpen q = (realization hOpen q : Section D.X) W.centerPoint
  | .compactEstimate => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (K : Set ℂ), IsCompact K → K ⊆ D.X.carrier →
      ∃ δ > 0, cthickening δ K ⊆ D.X.carrier ∧
        ∀ (q r : AreaQuotient hOpen) (z : ℂ), z ∈ K →
          dist (ambient hOpen q z) (ambient hOpen r z) ≤
            (Real.sqrt (Real.pi * δ ^ 2))⁻¹ * dist q r
  | .uniformCauchy => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen), CauchySeq F →
      ∀ K : Set ℂ, IsCompact K → K ⊆ D.X.carrier →
        UniformCauchySeqOn (fun n => ambient hOpen (F n)) atTop K
  | .holomorphicLimit => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen), CauchySeq F →
      ∃! f : HolomorphicSection D.X,
        TendstoLocallyUniformlyOn (fun n => ambient hOpen (F n))
          (ambientRepresentative D.X (f : Section D.X)) atTop D.X.carrier
  | .derivativeLimit => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen) (hF : CauchySeq F),
      TendstoLocallyUniformlyOn (fun n => deriv (ambient hOpen (F n)))
        (deriv (ambientRepresentative D.X (holomorphicLimit hOpen F hF : Section D.X)))
        atTop D.X.carrier
  | .constantRecovery => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (q : AreaQuotient hOpen),
      holomorphicLimit hOpen (fun _ : ℕ => q)
        (GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform.Fixtures.constant_cauchy hOpen q) =
          realization hOpen q
  | .emptyCompact => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (F : ℕ → AreaQuotient hOpen), CauchySeq F →
      UniformCauchySeqOn (fun n => ambient hOpen (F n)) atTop ∅

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberAreaLocalUniform.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberAreaLocalUniform.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96fd6f7d2c6670492fe9006722bc7994f606f4a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
