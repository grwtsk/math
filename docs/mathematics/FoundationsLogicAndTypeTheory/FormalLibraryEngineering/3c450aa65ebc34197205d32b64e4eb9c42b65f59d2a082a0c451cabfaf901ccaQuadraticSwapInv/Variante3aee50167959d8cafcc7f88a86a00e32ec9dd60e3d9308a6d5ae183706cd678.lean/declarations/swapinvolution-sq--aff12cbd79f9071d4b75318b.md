# swapInvolution_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52104f12-7314-20a6-f822-73382f6d3861",
  "kind": "theorem",
  "lexical_name": "swapInvolution_sq",
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
  "slug": "swapinvolution-sq--aff12cbd79f9071d4b75318b",
  "source": {
    "blob": "78e88de176be3cdcd6cdc6c71938299c987810a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aff12cbd79f9071d4b75318b784c3af058601ccc1e949fbcf990ed0ea5e5b347",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52104f12-7314-20a6-f822-73382f6d3861`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem swapInvolution_sq (z : V × V) :
    swapInvolution (swapInvolution z) = z := by
  rfl

/-- The swap squares to the identity as a linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78e88de176be3cdcd6cdc6c71938299c987810a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
