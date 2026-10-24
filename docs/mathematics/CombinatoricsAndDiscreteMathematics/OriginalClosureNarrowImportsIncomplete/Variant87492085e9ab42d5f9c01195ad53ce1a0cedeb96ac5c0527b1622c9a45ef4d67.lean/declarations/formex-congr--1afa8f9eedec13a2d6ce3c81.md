# formEx_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26615,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36e70dc3-10af-f75d-1431-b43c49f46281",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:847e5a9d-cbd7-f0b2-0b74-1d278fb18371",
  "kind": "theorem",
  "lexical_name": "formEx_congr",
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
  "slug": "formex-congr--1afa8f9eedec13a2d6ce3c81",
  "source": {
    "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26637,
    "line": 26615,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1afa8f9eedec13a2d6ce3c81cb2cd3d75c71b1582f678adb5577144ea70487fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:847e5a9d-cbd7-f0b2-0b74-1d278fb18371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26615–26637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem formEx_congr {v z z' : Expr S}
    (hv : HasType P Γ v B.predType) (mv : WellModed γ v .data)
    (hz : HasType P Γ z B.yType) (mz : WellModed γ z .data)
    (hz' : HasType P Γ z' B.yType) (mz' : WellModed γ z' .data)
    (he : Proves P Γ γ (B.relation L.code KY.code KP.code z z')) :
    Equivalent P Γ γ (L.code.ex KY.code B.yType (B.formExBody L.code KY.code KP.code v z))
      (L.code.ex KY.code B.yType (B.formExBody L.code KY.code KP.code v z')) := by
  apply L.ex_equivalent_future KY H.y_sorted H.y_mode
    (H.formExBody_family KY KP hv mv hz mz) (H.formExBody_family KY KP hv mv hz' mz')
  intro Δ δ e y hy my
  simp only [formExBody_rename,formExBody_instantiate]
  have hy' : HasType P Δ y (B.rename e.names).yType := by simpa only [yType_rename] using hy
  have hzE := y_typed_rename (B := B) e hz
  have hzE' := y_typed_rename (B := B) e hz'
  have f := (H.rename e).edge_formula (KY.rename e) (KP.rename e) false hy' my hzE (e.moded mz)
  have f' := (H.rename e).edge_formula (KY.rename e) (KP.rename e) false hy' my hzE' (e.moded mz')
  have g := (H.rename e).ev_formula (v_typed_rename (B := B) e hv) (e.moded mv) hy' my
  have heE := he.rename e
  simp only [relation_rename] at heE
  exact (L.rename e).conj_equivalent f f' g g
    ((H.rename e).edge_congr (KY.rename e) (KP.rename e) false hy' my hzE (e.moded mz) hy' my hzE' (e.moded mz')
      ((H.rename e).relation_refl (KY.rename e) (KP.rename e) hy' my) heE) g.equivalent_refl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean#L26615).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43dd61c35d3d36651c01f53530ca36ac91fcb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
