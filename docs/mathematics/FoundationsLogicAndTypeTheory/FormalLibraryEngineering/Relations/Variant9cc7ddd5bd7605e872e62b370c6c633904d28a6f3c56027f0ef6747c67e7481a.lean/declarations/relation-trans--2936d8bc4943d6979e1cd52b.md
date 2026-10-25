# relation_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aadfa0a2-8f8f-2353-e64d-3b6291d0d810",
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
  "slug": "relation-trans--2936d8bc4943d6979e1cd52b",
  "source": {
    "blob": "87031993f06bb06b4c00e9ac6a45851f225a208d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant9cc7ddd5bd7605e872e62b370c6c633904d28a6f3c56027f0ef6747c67e7481a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2936d8bc4943d6979e1cd52b07309b0f22ae086f5db636f4596cbf83be2f9cfb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant9cc7ddd5bd7605e872e62b370c6c633904d28a6f3c56027f0ef6747c67e7481a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aadfa0a2-8f8f-2353-e64d-3b6291d0d810`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–218.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant9cc7ddd5bd7605e872e62b370c6c633904d28a6f3c56027f0ef6747c67e7481a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant9cc7ddd5bd7605e872e62b370c6c633904d28a6f3c56027f0ef6747c67e7481a.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87031993f06bb06b4c00e9ac6a45851f225a208d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
