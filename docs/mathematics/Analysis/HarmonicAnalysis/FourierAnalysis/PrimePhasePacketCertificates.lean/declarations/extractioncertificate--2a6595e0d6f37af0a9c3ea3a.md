# ExtractionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:249ac917b2d733a60d41ff1ac6e7a6840cf276cefd9ae08f1b145952b3ca2e16",
  "kind": "structure",
  "lexical_name": "ExtractionCertificate",
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
  "slug": "extractioncertificate--2a6595e0d6f37af0a9c3ea3a",
  "source": {
    "blob": "067ed635f13b06de091f788f403bba214f5a5dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 136,
    "path": "GRWTSK/Analysis/Fourier/PrimePhasePacketCertificates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a6595e0d6f37af0a9c3ea3a250696324b3ab80ff57f3490650a18d9490f09da",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:249ac917b2d733a60d41ff1ac6e7a6840cf276cefd9ae08f1b145952b3ca2e16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExtractionCertificate (α : Type*) [DecidableEq α]
    (B : Finset ℕ) (κ c₀ T C : ℝ) (q : ℕ) (g : ℝ → ℂ) where
  threshold_pos : 0 < κ
  coherence_pos : 0 < c₀
  scale_nonneg : 0 ≤ T
  cost_nonneg : 0 ≤ C
  prime_block : ∀ p ∈ B, Nat.Prime p
  indices : Finset α
  charts : α → Chart B κ c₀ g
  overlapConstant : ℝ
  overlapConstant_nonneg : 0 ≤ overlapConstant
  overlap : ∀ ξ, ∑ i ∈ indices, ‖(charts i).cutoff ξ‖ ^ 2 ≤ overlapConstant
  coverError : ℝ
  packetError : ℝ
  returnError : ℝ
  coverError_nonneg : 0 ≤ coverError
  packetError_nonneg : 0 ≤ packetError
  returnError_nonneg : 0 ≤ returnError
  residual : ℝ → ℂ
  reconstruction : ∀ ξ ∈ narrowSet B κ,
    spectrum g ξ = (∑ i ∈ indices, (charts i).packet ξ) + residual ξ
  coverage : narrowEnergy B κ (spectrum g) ≤
    (∑ i ∈ indices, packetEnergy B (charts i).packet) + coverError
  lossLedger : coverError + packetError + returnError ≤ C * PPNC.harmonicMass B * (1 + T) ^ q

/-- Conditional aggregate return contract. This structure does not construct a reserve. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/PrimePhasePacketCertificates.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `067ed635f13b06de091f788f403bba214f5a5dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
