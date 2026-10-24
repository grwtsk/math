# ex_intro

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
      "line": 19764,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a90ad9e-bba8-03f1-c53b-dad53599d0dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a0718ac-3b1b-0a04-5f50-0660efed5cb1",
  "kind": "theorem",
  "lexical_name": "ex_intro",
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
  "slug": "ex-intro--b0e184a496bacb8602c1917c",
  "source": {
    "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19789,
    "line": 19764,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0e184a496bacb8602c1917c3e16cc829c7a0f8a37fdae0df8a0a6cd639499e7",
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

Occurrence: `result:8a0718ac-3b1b-0a04-5f50-0660efed5cb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19764–19789.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ex_intro {a : Expr S} (ha : HasType P Γ a T) (ma : WellModed γ a .data)
    (hp : Proves P Γ γ (Q.instantiate a)) : Proves P Γ γ (L.code.ex K.code T Q) := by
  obtain ⟨s,hs⟩ := K.triple.domain.1
  have hall := L.all_formula_family K hT mT (hT s hs) hQ.code_neg
  apply L.imp_intro_future hall L.bottom_formula
  intro Δ δ e hn
  have ht := fun r hr => e.typing (hT r hr)
  have hq := hQ.rename e
  have han : Proves P Δ δ (all (L := L.rename e) (K.rename e) (T.rename e.names)
      ((L.rename e).code.negBody (Q.rename (Expr.liftRen e.names)))) := by
    change Proves P Δ δ ((K.code.all T (L.code.negBody Q)).rename e.names) at hn
    change Proves P Δ δ ((K.rename e).code.all (T.rename e.names)
      ((L.rename e).code.negBody (Q.rename (Expr.liftRen e.names))))
    simpa only [QuantifierCode.all_rename,LogicCode.negBody_rename,
      LogicSetup.code_rename,QuantifierRoute.code_rename] using hn
  have hi := (L.rename e).all_elim_family (K.rename e) ht (e.moded mT) (e.typing (hT s hs))
    hq.code_neg (e.typing ha) (e.moded ma) han
  change Proves P Δ δ (((L.rename e).code.negBody (Q.rename (Expr.liftRen e.names))).instantiate (a.rename e.names)) at hi
  rw [LogicCode.negBody_instantiate,code_neg] at hi
  have hp' : Proves P Δ δ ((Q.rename (Expr.liftRen e.names)).instantiate (a.rename e.names)) := by
    simpa only [Expr.instantiate_rename] using hp.rename e
  have hf := hq.instantiate (e.typing ha) (e.moded ma)
  exact (L.rename e).imp_elim hf (L.rename e).bottom_formula hi hp'

/-- The elimination target has no free locally opened witness. Its callback is
uniform over every future embedding, preserving the source freshness condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean#L19764).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43dd61c35d3d36651c01f53530ca36ac91fcb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
