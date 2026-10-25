# EffectiveResidualMotionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07c319357285057f57df0eca3f13c9a31451cd153c7fdec93cfe630ca7f64f22",
  "kind": "structure",
  "lexical_name": "EffectiveResidualMotionCertificate",
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
  "slug": "effectiveresidualmotioncertificate--1eef2186ea9d25a8ebef628a",
  "source": {
    "blob": "aef33b3529f6513f9a08045056f8b648c60d9ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 702,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1eef2186ea9d25a8ebef628ad3e9bc7d7a1e49c7a6fc112edcc16cc0b10ebf11",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07c319357285057f57df0eca3f13c9a31451cd153c7fdec93cfe630ca7f64f22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 702–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EffectiveResidualMotionCertificate
    (State Residual : Type*) [NormedAddCommGroup State]
    [NormedAddCommGroup Residual] where
  transition : State → Residual → State
  effectiveProjection : Residual → Residual
  kernelDirection : Residual → Prop
  gain : ℝ
  gainPositive : 0 < gain
  lowerMotion : ∀ state residual,
    gain * ‖effectiveProjection residual‖ ≤
      ‖transition state residual - state‖
  kernelCharacterization : ∀ residual,
    effectiveProjection residual = 0 ↔ kernelDirection residual

/-- PRD-09: a fixed transition can only arise from an effective null direction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean#L702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aef33b3529f6513f9a08045056f8b648c60d9ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
