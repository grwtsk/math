# AnalyticGammaSpindleCapability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54acf696d42e0fe9c3951dbd4175d5ed70f313baf2e3678426005a788dc348ee",
  "kind": "structure",
  "lexical_name": "AnalyticGammaSpindleCapability",
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
  "slug": "analyticgammaspindlecapability--fb3e4ec072e92fab60fb4235",
  "source": {
    "blob": "3830ee6d5869dd3e096bccfadb544f35a63125f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 285,
    "path": "GRWTSK/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb3e4ec072e92fab60fb423504d0ccbaee8ea1a5c33ca11f2a896b158f0a8fbc",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54acf696d42e0fe9c3951dbd4175d5ed70f313baf2e3678426005a788dc348ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AnalyticGammaSpindleCapability (chi : PrimitiveCharacter) where
  HilbertCarrier : Type
  Domain : Set HilbertCarrier
  dirac : HilbertCarrier → HilbertCarrier
  square : HilbertCarrier → HilbertCarrier
  phaseDelay : HilbertCarrier → HilbertCarrier
  maximalDomainSelfAdjoint : Prop
  maximalDomainSelfAdjoint_certified : maximalDomainSelfAdjoint
  squareLaw : Prop
  squareLaw_certified : squareLaw
  phaseDelayLaw : Prop
  phaseDelayLaw_certified : phaseDelayLaw

end DAF.Arithmetic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3830ee6d5869dd3e096bccfadb544f35a63125f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
