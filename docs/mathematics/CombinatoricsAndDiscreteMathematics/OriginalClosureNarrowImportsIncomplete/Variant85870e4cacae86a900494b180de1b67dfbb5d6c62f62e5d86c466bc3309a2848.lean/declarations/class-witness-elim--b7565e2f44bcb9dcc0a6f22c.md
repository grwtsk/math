# class_witness_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03f691ac-64ba-1760-a088-3619a2319a5b",
  "kind": "theorem",
  "lexical_name": "class_witness_elim",
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
  "slug": "class-witness-elim--b7565e2f44bcb9dcc0a6f22c",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26145,
    "line": 26121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7565e2f44bcb9dcc0a6f22ce34638d3e46a17e81c7e52204707aed5c5904f88",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03f691ac-64ba-1760-a088-3619a2319a5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26121–26145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem class_witness_elim (t : Fin 3) {y D : Expr S}
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data) (hd : L.Formula D)
    (hi : Proves P Γ γ (B.isClass L.code KY.code KP.code t y))
    (hh : ∀ Δ δ (e : Embedding P Γ γ Δ δ) x,
      HasType P Δ x (B.rename e.names).xType → WellModed δ x .data →
      Proves P Δ δ ((B.rename e.names).relation (L.code.rename e.names) (KY.code.rename e.names) (KP.code.rename e.names)
        (y.rename e.names) ((B.observation.rename e.names).tagged (L.code.rename e.names) t x)) →
      Proves P Δ δ (D.rename e.names)) : Proves P Γ γ D := by
  have ht := H.classPred_typed KY KP hy my
  rw [isClass_eq] at hi
  have hp := (H.class_query KY KP t ht.1 ht.2).1.prove hi
  apply H.propertyC_elim KY KP t ht.1 ht.2 hd hp
  intro Δ δ e x hx mx hc
  simp only [classPred_rename] at hc
  have hy' := y_typed_rename (B := B) e hy
  have ht' := (H.rename e).classPred_typed (KY.rename e) (KP.rename e) hy' (e.moded my)
  have he := (H.rename e).cAt_elim (KY.rename e) (KP.rename e) t ht'.1 ht'.2 hx mx hy' (e.moded my) hc
  have htag := (H.rename e).observation.tagged_typed t hx mx
  have hf := (H.rename e).ev_formula ht'.1 ht'.2 hy' (e.moded my)
  have hg := (H.rename e).observation.ae_formula (KY.rename e) (KP.rename e) hy' (e.moded my) htag.1 htag.2
  have hae := ((L.rename e).equivalent_of_iff hf hg he).1.prove
    ((H.rename e).class_self (KY.rename e) (KP.rename e) hy' (e.moded my))
  exact hh Δ δ e x hx mx ((H.rename e).relation_backward (KY.rename e) (KP.rename e)
    hy' (e.moded my) htag.1 htag.2 hae)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L26121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
