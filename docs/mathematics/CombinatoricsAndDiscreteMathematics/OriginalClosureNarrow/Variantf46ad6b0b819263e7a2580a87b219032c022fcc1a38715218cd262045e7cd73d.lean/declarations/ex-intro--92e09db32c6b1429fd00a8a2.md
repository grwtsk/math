# ex_intro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19766,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:727cc339-4c53-4dff-82b8-827c5fc600ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6163f725-0291-37b0-5b74-a928ea6c80c6",
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
  "slug": "ex-intro--92e09db32c6b1429fd00a8a2",
  "source": {
    "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19791,
    "line": 19766,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92e09db32c6b1429fd00a8a2fb208a1512a4e55a1c76a37640a01fc53725fa06",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6163f725-0291-37b0-5b74-a928ea6c80c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19766–19791.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean#L19766).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a5d40441eb869d9f0da889e21cc8720344470e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
