# relation_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd6cca40-906d-2e47-5df3-2bdcf64805dc",
  "kind": "theorem",
  "lexical_name": "relation_trans",
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
  "slug": "relation-trans--bae982b0627c65165a67fc63",
  "source": {
    "blob": "d2d27a95caff61476e46c378b5e29ffd0ac14913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 179,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant6cb5ee4746e70f866de1d0770b9aef1824b06c5f248b9b036ed520b6a271f475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bae982b0627c65165a67fc635729d8ee30c3cb607d8df6b48481a8252ee608c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant6cb5ee4746e70f866de1d0770b9aef1824b06c5f248b9b036ed520b6a271f475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd6cca40-906d-2e47-5df3-2bdcf64805dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relation_trans (hy : HasType P Γ y (R.logicalType T)) (my : WellModed γ y .data)
    (hz : HasType P Γ z (R.logicalType T)) (mz : WellModed γ z .data)
    (hw : HasType P Γ w (R.logicalType T)) (mw : WellModed γ w .data)
    (he : Proves P Γ γ (R.relation L.code K.code T G y z))
    (hf : Proves P Γ γ (R.relation L.code K.code T G z w)) :
    Proves P Γ γ (R.relation L.code K.code T G y w) := by
  apply h.relation_intro K hT mT hG hy my hw mw
  intro Δ δ e p hp mp hg
  have hg' : (L.rename e).Family ((R.rename e.names).predicateType (T.rename e.names))
      (G.rename (Expr.liftRen e.names)) := by
    simpa only [predicateType_rename] using hG.rename e
  have he' : Proves P Δ δ ((R.rename e.names).relation (L.rename e).code (K.rename e).code
      (T.rename e.names) (G.rename (Expr.liftRen e.names)) (y.rename e.names) (z.rename
        e.names)) := by
    simpa only [relation_rename,LogicSetup.code_rename,QuantifierRoute.code_rename] using
      he.rename e
  have hf' : Proves P Δ δ ((R.rename e.names).relation (L.rename e).code (K.rename e).code
      (T.rename e.names) (G.rename (Expr.liftRen e.names)) (z.rename e.names) (w.rename
        e.names)) := by
    simpa only [relation_rename,LogicSetup.code_rename,QuantifierRoute.code_rename] using
      hf.rename e
  have hy' : HasType P Δ (y.rename e.names) ((R.rename e.names).logicalType (T.rename
    e.names)) := by
    simpa only [logicalType_rename] using e.typing hy
  have hz' : HasType P Δ (z.rename e.names) ((R.rename e.names).logicalType (T.rename
    e.names)) := by
    simpa only [logicalType_rename] using e.typing hz
  have hw' : HasType P Δ (w.rename e.names) ((R.rename e.names).logicalType (T.rename
    e.names)) := by
    simpa only [logicalType_rename] using e.typing hw
  have ht := fun s hs => e.typing (hT s hs)
  exact ((h.rename e).eval_formula ht (e.moded mT) hp mp hy' (e.moded my)).equivalent_trans
    ((h.rename e).eval_formula ht (e.moded mT) hp mp hz' (e.moded mz))
    ((h.rename e).eval_formula ht (e.moded mT) hp mp hw' (e.moded mw))
    ((h.rename e).relation_elim (K.rename e) ht (e.moded mT) hg' hy' (e.moded my) hz' (e.moded
      mz) hp mp he' hg)
    ((h.rename e).relation_elim (K.rename e) ht (e.moded mT) hg' hz' (e.moded mz) hw' (e.moded
      mw) hp mp hf' hg)
end ChannelCode.Formed

/-- Five odd segments and the original source channel for tagged copies. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant6cb5ee4746e70f866de1d0770b9aef1824b06c5f248b9b036ed520b6a271f475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant6cb5ee4746e70f866de1d0770b9aef1824b06c5f248b9b036ed520b6a271f475.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2d27a95caff61476e46c378b5e29ffd0ac14913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
