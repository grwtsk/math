# RetentionRangeCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad2fd62f52b73b8918e3a15d55c6a83cd9350a046a114c292a0559ab62971741",
  "kind": "structure",
  "lexical_name": "RetentionRangeCertificate",
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
  "slug": "retentionrangecertificate--c9e4b21a5bea3cb80cbcff4c",
  "source": {
    "blob": "361a53b253ce4f6e0dfbc75f3a6068bdce6db09b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 23,
    "path": "GRWTSK/Analysis/SpecialFunctions/Retention/Variantc8903f8379bbc869a93c876e7cd6ae2eaad676d2250d1211de0d467cf67d75b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9e4b21a5bea3cb80cbcff4c92b530ec663176afff384980736e78cdbb4840d9",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Retention/Variantc8903f8379bbc869a93c876e7cd6ae2eaad676d2250d1211de0d467cf67d75b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad2fd62f52b73b8918e3a15d55c6a83cd9350a046a114c292a0559ab62971741`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RetentionRangeCertificate
    (tileLength channelCount : Nat) where
  minimum : ℝ
  retention : Fin tileLength → Fin channelCount → ℝ
  minimumPositive : 0 < minimum
  bounded :
    ∀ token channel,
      minimum ≤ retention token channel ∧
      retention token channel < 1
  tileProduct : Fin channelCount → ℝ
  productExact :
    ∀ channel,
      tileProduct channel =
        ∏ token : Fin tileLength, retention token channel
  lowerBound :
    ∀ channel,
      minimum ^ tileLength ≤ tileProduct channel
  upperBound :
    ∀ channel,
      tileProduct channel < 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Retention/Variantc8903f8379bbc869a93c876e7cd6ae2eaad676d2250d1211de0d467cf67d75b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Retention/Variantc8903f8379bbc869a93c876e7cd6ae2eaad676d2250d1211de0d467cf67d75b2.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `361a53b253ce4f6e0dfbc75f3a6068bdce6db09b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
