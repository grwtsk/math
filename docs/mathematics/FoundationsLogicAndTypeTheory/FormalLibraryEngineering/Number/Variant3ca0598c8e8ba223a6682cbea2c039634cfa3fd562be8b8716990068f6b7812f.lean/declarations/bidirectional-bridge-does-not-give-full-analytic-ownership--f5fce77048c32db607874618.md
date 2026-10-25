# bidirectional_bridge_does_not_give_full_analytic_ownership

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81210c2bf0dd0da160ae5b0b96189438846e22f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:307ce3bd-514d-60d4-4788-5d4e095b008d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9cf243d-8b29-3413-5977-00d5e8a91e2f",
  "kind": "theorem",
  "lexical_name": "bidirectional_bridge_does_not_give_full_analytic_ownership",
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
  "slug": "bidirectional-bridge-does-not-give-full-analytic-ownership--f5fce77048c32db607874618",
  "source": {
    "blob": "81210c2bf0dd0da160ae5b0b96189438846e22f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 179,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5fce77048c32db607874618f0752710a028fae840836de88d011751cc50999b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9cf243d-8b29-3413-5977-00d5e8a91e2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bidirectional_bridge_does_not_give_full_analytic_ownership
    (B : NumberToAnalyticBridge) :
    ¬ ArithmeticPayloadOwnsFullAnalyticNumberObject B.numberPayload ∧
      ¬ AnalyticNumberShadowIsFullAnalyticNumberObject B.analyticShadow :=
  ⟨arithmetic_payload_not_full_analytic_number_object B.numberPayload,
    analytic_shadow_not_full_analytic_number_object B.analyticShadow⟩

/--
Summary of the Number → AnalyticNumber boundary.

The bridge is bidirectional and precision-bounded, but it does not collapse
finite arithmetic payloads into full analytic-number objects.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Number/Variant3ca0598c8e8ba223a6682cbea2c039634cfa3fd562be8b8716990068f6b7812f.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81210c2bf0dd0da160ae5b0b96189438846e22f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
