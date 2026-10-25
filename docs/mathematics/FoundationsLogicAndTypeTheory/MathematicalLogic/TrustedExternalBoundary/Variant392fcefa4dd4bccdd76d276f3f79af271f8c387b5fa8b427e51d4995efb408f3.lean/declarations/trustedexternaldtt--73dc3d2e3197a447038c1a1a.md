# TrustedExternalDTT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ae5461d6b0b27fe6d09e479098f5d77d4f7206ab71edb6436991c283e877c47",
  "kind": "structure",
  "lexical_name": "TrustedExternalDTT",
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
  "slug": "trustedexternaldtt--73dc3d2e3197a447038c1a1a",
  "source": {
    "blob": "71910e652726296de9255938e9521eb498e17bd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variant392fcefa4dd4bccdd76d276f3f79af271f8c387b5fa8b427e51d4995efb408f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73dc3d2e3197a447038c1a1a38e78f8a877b7c32d5e80c0ccdb53b314b43f38e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variant392fcefa4dd4bccdd76d276f3f79af271f8c387b5fa8b427e51d4995efb408f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ae5461d6b0b27fe6d09e479098f5d77d4f7206ab71edb6436991c283e877c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TrustedExternalDTT where
  base : BoundaryCalculus.DTT.{u, v, w, x, y}

  TrustedExternalFor :
    (Γ : base.Context) →
    (b : base.Boundary) →
    base.Claim Γ b →
    Type z

  trustedExternalSound :
    {Γ : base.Context} →
    {b : base.Boundary} →
    {q : base.Claim Γ b} →
    TrustedExternalFor Γ b q →
    base.Holds q

  OwnsExt :
    (Γ : base.Context) →
    (b : base.Boundary) →
    base.Claim Γ b →
    Prop

  DirectOwnsExt :
    (Γ : base.Context) →
    (b : base.Boundary) →
    base.Claim Γ b →
    Prop

  ownsExtFactors :
    {Γ : base.Context} →
    {b : base.Boundary} →
    {q : base.Claim Γ b} →
    OwnsExt Γ b q →
      Nonempty
        (Sum
          (base.CertificateFor Γ b q)
          (TrustedExternalFor Γ b q))

  noDirectExt :
    {Γ : base.Context} →
    {b : base.Boundary} →
    {q : base.Claim Γ b} →
    ¬ DirectOwnsExt Γ b q

/-- A claim is certified-or-trusted when it has an internal certificate or a
trusted external certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variant392fcefa4dd4bccdd76d276f3f79af271f8c387b5fa8b427e51d4995efb408f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variant392fcefa4dd4bccdd76d276f3f79af271f8c387b5fa8b427e51d4995efb408f3.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71910e652726296de9255938e9521eb498e17bd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
