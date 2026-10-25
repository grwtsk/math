# formEx_pred_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c1b5dd8-3df3-63e7-195d-12be93f9f3d2",
  "kind": "theorem",
  "lexical_name": "formEx_pred_congr",
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
  "slug": "formex-pred-congr--a1b99eb5b6d7c2b617aba316",
  "source": {
    "blob": "57f5c672add74f123151628cee1e5dcf9a22df0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1943,
    "line": 1924,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variantaf73e06ff5555bba39cbb326bcf955855b6ddb5528c458ddbb850c698fac67c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1b99eb5b6d7c2b617aba316b5e1f0c1d70fd062f32123b417acb74eebc56d37",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variantaf73e06ff5555bba39cbb326bcf955855b6ddb5528c458ddbb850c698fac67c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c1b5dd8-3df3-63e7-195d-12be93f9f3d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1924–1943.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem formEx_pred_congr {v c z : Expr S}
    (hv : HasType P Γ v B.predType) (mv : WellModed γ v .data)
    (hc : HasType P Γ c B.predType) (mc : WellModed γ c .data)
    (hz : HasType P Γ z B.yType) (mz : WellModed γ z .data)
    (he : Proves P Γ γ (B.relational.channel.predCompare L.code KY.code B.baseType v c)) :
    Equivalent P Γ γ (L.code.ex KY.code B.yType (B.formExBody L.code KY.code KP.code v z))
      (L.code.ex KY.code B.yType (B.formExBody L.code KY.code KP.code c z)) := by
  apply L.ex_equivalent_future KY H.y_sorted H.y_mode
    (H.formExBody_family KY KP hv mv hz mz) (H.formExBody_family KY KP hc mc hz mz)
  intro Δ δ e y hy my
  simp only [formExBody_rename,formExBody_instantiate]
  have hy' : HasType P Δ y (B.rename e.names).yType := by simpa only [yType_rename] using hy
  have hzE := y_typed_rename (B := B) e hz
  have f := (H.rename e).edge_formula (KY.rename e) (KP.rename e) false hy' my hzE (e.moded mz)
  have gv := (H.rename e).ev_formula (v_typed_rename (B := B) e hv) (e.moded mv) hy' my
  have gc := (H.rename e).ev_formula (v_typed_rename (B := B) e hc) (e.moded mc) hy' my
  exact (L.rename e).conj_equivalent f f gv gc f.equivalent_refl
    ((H.rename e).ev_compare (KY.rename e) (v_typed_rename (B := B) e hv) (e.moded mv)
      (v_typed_rename (B := B) e hc) (e.moded mc) hy' my (comparison_rename KY e he))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variantaf73e06ff5555bba39cbb326bcf955855b6ddb5528c458ddbb850c698fac67c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variantaf73e06ff5555bba39cbb326bcf955855b6ddb5528c458ddbb850c698fac67c3.lean#L1924).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57f5c672add74f123151628cee1e5dcf9a22df0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
