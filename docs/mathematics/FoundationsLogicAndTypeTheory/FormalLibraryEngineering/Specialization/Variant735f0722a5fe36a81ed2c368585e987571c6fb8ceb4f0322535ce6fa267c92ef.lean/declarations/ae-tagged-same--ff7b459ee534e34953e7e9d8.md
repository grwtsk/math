# ae_tagged_same

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16b93ea7-cb5d-ca92-039f-d882534fbe20",
  "kind": "theorem",
  "lexical_name": "ae_tagged_same",
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
  "slug": "ae-tagged-same--ff7b459ee534e34953e7e9d8",
  "source": {
    "blob": "b5f21e36507710d4ab09326615af7cc30053d552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1344,
    "line": 1325,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff7b459ee534e34953e7e9d849992effcde245cc166fdda26b950065140c91ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16b93ea7-cb5d-ca92-039f-d882534fbe20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1325–1344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_tagged_same {x z : Expr S} (t : Fin 3)
    (hx : HasType P Γ x (O.relational.channel.logicalType O.relational.probe.carrier)) (mx :
      WellModed γ x .data)
    (hz : HasType P Γ z (O.relational.channel.logicalType O.relational.probe.carrier)) (mz :
      WellModed γ z .data) :
    Equivalent P Γ γ (O.ae L.code KY.code KP.code (O.tagged L.code t x) (O.tagged L.code t z))
      (O.relational.xCompare L.code KY.code KP.code x z) := by
  have ht := H.tagged_typed t hx mx
  have hu := H.tagged_typed t hz mz
  have fi := H.bitInner_formula ht.1 ht.2
  have fi' := H.bitInner_formula hu.1 hu.2
  have fo := H.bitOuter_formula ht.1 ht.2
  have fo' := H.bitOuter_formula hu.1 hu.2
  have fc := H.compare_formula KY KP ht.1 ht.2 hu.1 hu.2
  have fr := H.relational.xCompare_formula KY KP hx mx hz mz
  have ei := L.signed_agree (t == 1) fi fi' (H.tagged_bitInner t hx mx) (H.tagged_bitInner t hz mz)
  have eo := L.signed_agree (t == 2) fo fo' (H.tagged_bitOuter t hx mx) (H.tagged_bitOuter t hz mz)
  have ec := H.compare_tagged KY KP t t hx mx hz mz
  have eb := L.agreed_bits fi fi' fo fo' fc ei eo
  exact (H.ae_formula KY KP ht.1 ht.2 hu.1 hu.2).equivalent_trans fc fr eb ec
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean#L1325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5f21e36507710d4ab09326615af7cc30053d552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
