# LimitSpectralOperatorCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4b757f36a3cbf782739c5c0f1c0990e7a7889f7fb010b48a91ca1e7a70408b2",
  "kind": "structure",
  "lexical_name": "LimitSpectralOperatorCertificate",
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
  "slug": "limitspectraloperatorcertificate--f7aede34970970cdc5220b64",
  "source": {
    "blob": "34efabf6e25466f91f78f810999c194385024795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/LimitObservable/Variantd2971de30f75a2ad2843dad68c4551db4f84c03112c760bf2983fae4e95161f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7aede34970970cdc5220b64e7a5db09b8f1e784adc2d2ebd667597cde9fe19a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LimitObservable/Variantd2971de30f75a2ad2843dad68c4551db4f84c03112c760bf2983fae4e95161f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4b757f36a3cbf782739c5c0f1c0990e7a7889f7fb010b48a91ca1e7a70408b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LimitSpectralOperatorCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  Hilbert : Nat → Type uHilbert
  LimitHilbert : Type uLimitHilbert
  embed :
    ∀ {high low},
      low ≤ high →
      Hilbert low → Hilbert high
  embedLimit :
    ∀ stage,
      Hilbert stage → LimitHilbert
  embeddingsAreIsometric : Prop
  isometryProof :
    embeddingsAreIsometric
  resolvent :
    ∀ stage,
      ℂ → Hilbert stage → Hilbert stage
  limitResolvent :
    ℂ → LimitHilbert → LimitHilbert
  finiteResolventCompatible :
    ∀ {high low}
      (low_le : low ≤ high)
      (z : ℂ)
      (vector : Hilbert low),
      embed low_le (resolvent low z vector) =
        resolvent high z (embed low_le vector)
  limitResolventCompatible :
    ∀ stage z vector,
      embedLimit stage (resolvent stage z vector) =
        limitResolvent z (embedLimit stage vector)
  representsFiniteSpectralOperators : Prop
  representationProof :
    representsFiniteSpectralOperators
  selfAdjointOrAffiliatedLimitOperator : Prop
  limitOperatorProof :
    selfAdjointOrAffiliatedLimitOperator

end Mathematics.StratifiedBoundary.Trace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LimitObservable/Variantd2971de30f75a2ad2843dad68c4551db4f84c03112c760bf2983fae4e95161f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LimitObservable/Variantd2971de30f75a2ad2843dad68c4551db4f84c03112c760bf2983fae4e95161f6.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34efabf6e25466f91f78f810999c194385024795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
