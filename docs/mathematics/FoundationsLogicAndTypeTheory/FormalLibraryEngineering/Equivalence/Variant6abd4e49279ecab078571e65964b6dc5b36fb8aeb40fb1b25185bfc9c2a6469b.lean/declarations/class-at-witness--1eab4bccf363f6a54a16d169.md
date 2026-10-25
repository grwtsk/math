# class_at_witness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:236adef6-a276-0a16-c30a-8e9528e73f8c",
  "kind": "theorem",
  "lexical_name": "class_at_witness",
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
  "slug": "class-at-witness--1eab4bccf363f6a54a16d169",
  "source": {
    "blob": "080545f485bd6f356ed655974b18733359d13535",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1376,
    "line": 1346,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eab4bccf363f6a54a16d1691975239b9f5569788a998249992ffc4b056ca604",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:236adef6-a276-0a16-c30a-8e9528e73f8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1346–1376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem class_at_witness (t : Fin 3) {y x : Expr S}
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (he : Proves P Γ γ (B.relation L.code KY.code KP.code y (B.observation.tagged L.code t x))) :
    Proves P Γ γ (B.cAt L.code KY.code KP.code t (B.classPred L.code KY.code KP.code y) x) := by
  have ht := H.classPred_typed KY KP hy my
  apply H.cAt_intro KY KP t ht.1 ht.2 hx mx
  intro Δ δ e w hw mw
  simp only [cStep,classPred_rename]
  have hy' := y_typed_rename (B := B) e hy
  have hx' := x_typed_rename (B := B) e hx
  have ht' := (H.rename e).classPred_typed (KY.rename e) (KP.rename e) hy' (e.moded my)
  have htag := (H.rename e).observation.tagged_typed t hx' (e.moded mx)
  have he' := he.rename e
  simp only [relation_rename,ObservationCode.tagged_rename] at he'
  have ee := (H.rename e).relation_congr (KY.rename e) (KP.rename e) hw mw hw mw hy' (e.moded my)
    htag.1 htag.2 ((H.rename e).relation_refl (KY.rename e) (KP.rename e) hw mw) he'
  have ec := (H.rename e).class_evaluation (KY.rename e) (KP.rename e) hy' (e.moded my) hw mw
  have ea := (H.rename e).observation_equivalence (KY.rename e) (KP.rename e) hw mw htag.1 htag.2
  exact (L.rename e).iff_of_equivalent
    ((H.rename e).ev_formula ht'.1 ht'.2 hw mw)
    ((H.rename e).observation.ae_formula (KY.rename e) (KP.rename e) hw mw htag.1 htag.2)
    (((H.rename e).ev_formula ht'.1 ht'.2 hw mw).equivalent_trans
      ((H.rename e).relation_formula (KY.rename e) (KP.rename e) hw mw hy' (e.moded my))
      ((H.rename e).observation.ae_formula (KY.rename e) (KP.rename e) hw mw htag.1 htag.2) ec
      (((H.rename e).relation_formula (KY.rename e) (KP.rename e) hw mw hy' (e.moded
        my)).equivalent_trans
        ((H.rename e).relation_formula (KY.rename e) (KP.rename e) hw mw htag.1 htag.2)
        ((H.rename e).observation.ae_formula (KY.rename e) (KP.rename e) hw mw htag.1 htag.2)
          ee ea))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean#L1346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `080545f485bd6f356ed655974b18733359d13535` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
