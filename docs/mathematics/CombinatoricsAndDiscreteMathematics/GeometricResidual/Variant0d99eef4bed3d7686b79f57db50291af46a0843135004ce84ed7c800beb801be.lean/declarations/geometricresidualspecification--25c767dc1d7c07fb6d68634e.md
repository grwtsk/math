# GeometricResidualSpecification

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b71c78e84e2afac3118f0144abc4807a35decbf8b54bceca38da4bfe3e5f5d29",
  "kind": "structure",
  "lexical_name": "GeometricResidualSpecification",
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
  "slug": "geometricresidualspecification--25c767dc1d7c07fb6d68634e",
  "source": {
    "blob": "7f2ce383ceebe262c0f674b4267a6a28c9364b00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25c767dc1d7c07fb6d68634e1639707f13ed10d6db3d834ef7e4da39639d64a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b71c78e84e2afac3118f0144abc4807a35decbf8b54bceca38da4bfe3e5f5d29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GeometricResidualSpecification
    (Left Right : Type*)
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) where
  localizedIncrement : ℕ → Matrix Left Right ℂ
  /-- Localization never moves an arithmetic pair to a different moment. -/
  localizedIncrement_support : ∀ n left right,
    leftIndex left * rightIndex right ≠ n →
      localizedIncrement n left right = 0

  Carrier : ℕ → Left → Right → Prop
  carrierDecidable : ∀ n left right, Decidable (Carrier n left right)
  offCarrierEnvelope : ℕ → Left → Right → ℝ
  offCarrierEnvelope_nonneg : ∀ n left right,
    0 ≤ offCarrierEnvelope n left right
  offCarrierDecay : ∀ n left right,
    ¬ Carrier n left right →
      ‖localizedIncrement n left right‖ ≤
        offCarrierEnvelope n left right

attribute [instance] GeometricResidualSpecification.carrierDecidable

/-- Prefix kernel assembled from the prescribed localized increments. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f2ce383ceebe262c0f674b4267a6a28c9364b00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
