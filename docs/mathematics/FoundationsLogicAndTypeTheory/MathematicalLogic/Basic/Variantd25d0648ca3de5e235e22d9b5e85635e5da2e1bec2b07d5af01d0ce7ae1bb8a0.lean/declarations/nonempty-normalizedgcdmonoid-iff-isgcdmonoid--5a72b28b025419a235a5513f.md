# nonempty_normalizedGCDMonoid_iff_isGCDMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74d46526-f3ea-f5ee-d0ea-568e028bb613",
  "kind": "theorem",
  "lexical_name": "nonempty_normalizedGCDMonoid_iff_isGCDMonoid",
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
  "slug": "nonempty-normalizedgcdmonoid-iff-isgcdmonoid--5a72b28b025419a235a5513f",
  "source": {
    "blob": "1f975a898c9caaaf40b3737fcbeb2a9ea6490c79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1309,
    "line": 1303,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd25d0648ca3de5e235e22d9b5e85635e5da2e1bec2b07d5af01d0ce7ae1bb8a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a72b28b025419a235a5513f3fba9eda0ba8b37743a3582c2fa0a071dd3f6e2c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd25d0648ca3de5e235e22d9b5e85635e5da2e1bec2b07d5af01d0ce7ae1bb8a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74d46526-f3ea-f5ee-d0ea-568e028bb613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1303–1309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_normalizedGCDMonoid_iff_isGCDMonoid {α} [CommMonoidWithZero α] :
    Nonempty (NormalizedGCDMonoid α) ↔ IsGCDMonoid α where
  mp := fun ⟨_⟩ ↦ inferInstance
  mpr := fun ⟨_⟩ ↦ by
    have := Classical.arbitrary (NormalizationMonoid α)
    classical exact ⟨normalizedGCDMonoidOfExistsGCD fun _ _ ↦ ⟨_, fun _ ↦ (dvd_gcd_iff ..).symm⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd25d0648ca3de5e235e22d9b5e85635e5da2e1bec2b07d5af01d0ce7ae1bb8a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd25d0648ca3de5e235e22d9b5e85635e5da2e1bec2b07d5af01d0ce7ae1bb8a0.lean#L1303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f975a898c9caaaf40b3737fcbeb2a9ea6490c79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
