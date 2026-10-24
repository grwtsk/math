# relation_congr

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
      "line": 19557,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:237911db-6cba-1fc1-65a5-30c25fe8615a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:feabb43b-7788-af6a-667b-58b21557c478",
  "kind": "theorem",
  "lexical_name": "relation_congr",
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
  "slug": "relation-congr--9501f6399f9eca92d474d9cc",
  "source": {
    "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19599,
    "line": 19557,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9501f6399f9eca92d474d9cc4bc525f2e2b020f2117b41d0ae9e6a3e0a006d26",
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

Occurrence: `result:feabb43b-7788-af6a-667b-58b21557c478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19557–19599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem relation_congr (ha : HasType P Γ a (R.logicalType T)) (ma : WellModed γ a .data)
    (ha' : HasType P Γ a' (R.logicalType T)) (ma' : WellModed γ a' .data)
    (hc : HasType P Γ c (R.logicalType T)) (mc : WellModed γ c .data)
    (hc' : HasType P Γ c' (R.logicalType T)) (mc' : WellModed γ c' .data)
    (he : Proves P Γ γ (R.relation L.code K.code T G a a'))
    (hf : Proves P Γ γ (R.relation L.code K.code T G c c')) :
    Equivalent P Γ γ (R.relation L.code K.code T G a c) (R.relation L.code K.code T G a' c') := by
  have h₁ := h.relation_formula K hT mT hG ha ma hc mc
  have h₂ := h.relation_formula K hT mT hG ha' ma' hc' mc'
  have forward (a b c d : Expr S) (ha : HasType P Γ a (R.logicalType T)) (ma : WellModed γ a .data)
      (hb : HasType P Γ b (R.logicalType T)) (mb : WellModed γ b .data)
      (hc : HasType P Γ c (R.logicalType T)) (mc : WellModed γ c .data)
      (hd : HasType P Γ d (R.logicalType T)) (md : WellModed γ d .data)
      (he : Proves P Γ γ (R.relation L.code K.code T G a b))
      (hf : Proves P Γ γ (R.relation L.code K.code T G c d)) :
      ∀ Δ δ (e : Embedding P Γ γ Δ δ),
        Proves P Δ δ ((R.relation L.code K.code T G a c).rename e.names) →
        Proves P Δ δ ((R.relation L.code K.code T G b d).rename e.names) := by
    intro Δ δ e hu
    have ht := fun s hs => e.typing (hT s hs)
    have mt := e.moded mT
    have hg : (L.rename e).Family ((R.rename e.names).predicateType (T.rename e.names))
        (G.rename (Expr.liftRen e.names)) := by simpa only [predicateType_rename] using hG.rename e
    have ta : HasType P Δ (a.rename e.names) ((R.rename e.names).logicalType (T.rename e.names)) := by
      simpa only [logicalType_rename] using e.typing ha
    have tb : HasType P Δ (b.rename e.names) ((R.rename e.names).logicalType (T.rename e.names)) := by
      simpa only [logicalType_rename] using e.typing hb
    have tc : HasType P Δ (c.rename e.names) ((R.rename e.names).logicalType (T.rename e.names)) := by
      simpa only [logicalType_rename] using e.typing hc
    have td : HasType P Δ (d.rename e.names) ((R.rename e.names).logicalType (T.rename e.names)) := by
      simpa only [logicalType_rename] using e.typing hd
    have he' := he.rename e
    have hf' := hf.rename e
    simp only [relation_rename] at hu he' hf' ⊢
    exact (h.rename e).relation_trans (K.rename e) ht mt hg tb (e.moded mb) ta (e.moded ma) td (e.moded md)
      ((h.rename e).relation_symm (K.rename e) ht mt hg ta (e.moded ma) tb (e.moded mb) he')
      ((h.rename e).relation_trans (K.rename e) ht mt hg ta (e.moded ma) tc (e.moded mc) td (e.moded md) hu hf')
  exact h₁.equivalent_of_future h₂ (forward a a' c c' ha ma ha' ma' hc mc hc' mc' he hf)
    (forward a' a c' c ha' ma' ha ma hc' mc' hc mc
      (h.relation_symm K hT mT hG ha ma ha' ma' he) (h.relation_symm K hT mT hG hc mc hc' mc' hf))
end ChannelCode.Formed

namespace Expr
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean#L19557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43dd61c35d3d36651c01f53530ca36ac91fcb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
