# SeminormedRing.toRingSeminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ce97ff36c2ca772bc98891790d7cc2de60637aeb6b008dda5f32eae85dd6736",
  "kind": "def",
  "lexical_name": "SeminormedRing.toRingSeminorm",
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
  "slug": "seminormedring-toringseminorm--0087e4f3a824689b497403a0",
  "source": {
    "blob": "46ef9c90e2c064234c1d4e70bf5d09bb1319628c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 486,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant8b3bca36b1ee1cee010f520996eeea8b2e7926bb14007f70d9ae5452cd880b01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0087e4f3a824689b497403a0e7d718bf83c7fb535f170c1615ffbb49914110fe",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant8b3bca36b1ee1cee010f520996eeea8b2e7926bb14007f70d9ae5452cd880b01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ce97ff36c2ca772bc98891790d7cc2de60637aeb6b008dda5f32eae85dd6736`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SeminormedRing.toRingSeminorm (R : Type*) [SeminormedRing R] : RingSeminorm R where
  toFun     := norm
  map_zero' := norm_zero
  add_le'   := norm_add_le
  mul_le'   := norm_mul_le
  neg'      := norm_neg

/-- The norm on a `NormedRing`, as a `RingNorm`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant8b3bca36b1ee1cee010f520996eeea8b2e7926bb14007f70d9ae5452cd880b01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant8b3bca36b1ee1cee010f520996eeea8b2e7926bb14007f70d9ae5452cd880b01.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46ef9c90e2c064234c1d4e70bf5d09bb1319628c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
