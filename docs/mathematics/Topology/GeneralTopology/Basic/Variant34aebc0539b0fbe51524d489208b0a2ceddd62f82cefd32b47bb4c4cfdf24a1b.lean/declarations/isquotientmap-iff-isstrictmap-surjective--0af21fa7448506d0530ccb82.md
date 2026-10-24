# isQuotientMap_iff_isStrictMap_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e742edf-397a-fd99-0909-8a860ca67f3d",
  "kind": "lemma",
  "lexical_name": "isQuotientMap_iff_isStrictMap_surjective",
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
  "slug": "isquotientmap-iff-isstrictmap-surjective--0af21fa7448506d0530ccb82",
  "source": {
    "blob": "9b26e5587bbd48162371543c760aedbc54adc1fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0af21fa7448506d0530ccb828dd93ae28124438f13329aebebe6fc75ac666604",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e742edf-397a-fd99-0909-8a860ca67f3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isQuotientMap_iff_isStrictMap_surjective :
    IsQuotientMap f ↔ IsStrictMap f ∧ Surjective f := by
  refine ⟨fun H ↦ ⟨H.isStrictMap, H.surjective⟩, fun ⟨f_strict, f_surj⟩ ↦ ?_⟩
  rw [isStrictMap_iff_isQuotientMap_rangeFactorization] at f_strict
  set Φ : range f ≃ₜ Y := .trans (.setCongr f_surj.range_eq) (Homeomorph.Set.univ Y)
  exact Φ.isQuotientMap.comp f_strict

/-- Embeddings are precisely injective strict maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant34aebc0539b0fbe51524d489208b0a2ceddd62f82cefd32b47bb4c4cfdf24a1b.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b26e5587bbd48162371543c760aedbc54adc1fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
