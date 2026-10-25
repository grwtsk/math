# edge_classes_witness_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92495e5c-72f3-8838-3900-a6013300d054",
  "kind": "theorem",
  "lexical_name": "edge_classes_witness_elim",
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
  "slug": "edge-classes-witness-elim--55fc4cd4a238d72ac4780ab7",
  "source": {
    "blob": "dcdb8fa8c10075b34c77ce4729d32fb48dee7b60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1693,
    "line": 1657,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55fc4cd4a238d72ac4780ab715c8300d00a874a837d83bc78ed4df0cb89aa663",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92495e5c-72f3-8838-3900-a6013300d054`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1657–1693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edge_classes_witness_elim (t : Fin 3) (ht : t ≠ 0) {y z D : Expr S}
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hz : HasType P Γ z B.yType) (mz : WellModed γ z .data) (hd : L.Formula D)
    (hyClass : Proves P Γ γ (B.isClass L.code KY.code KP.code 0 y))
    (hzClass : Proves P Γ γ (B.isClass L.code KY.code KP.code t z))
    (he : Proves P Γ γ (B.propertyE L.code KY.code KP.code t (B.unionPred L.code KY.code
      KP.code y z)))
    (hh : ∀ Δ δ (e : Embedding P Γ γ Δ δ) x,
      HasType P Δ x (B.rename e.names).xType → WellModed δ x .data →
      Proves P Δ δ ((L.code.rename e.names).conj
        ((B.rename e.names).relation (L.code.rename e.names) (KY.code.rename e.names)
          (KP.code.rename e.names)
          (y.rename e.names) ((B.observation.rename e.names).tagged (L.code.rename e.names) 0 x))
        ((B.rename e.names).relation (L.code.rename e.names) (KY.code.rename e.names)
          (KP.code.rename e.names)
          (z.rename e.names) ((B.observation.rename e.names).tagged (L.code.rename e.names) t x))) →
      Proves P Δ δ (D.rename e.names)) : Proves P Γ γ D := by
  apply H.class_witness_elim KY KP 0 hy my hd hyClass
  intro Δ δ e a ha ma ea
  have hzClass' := hzClass.rename e
  have he' := he.rename e
  simp only [isClass_rename] at hzClass'
  simp only [propertyE_rename,unionPred_rename] at he'
  apply (H.rename e).edge_given_left_elim (KY.rename e) (KP.rename e) t ht
    (y_typed_rename (B := B) e hy) (e.moded my) (y_typed_rename (B := B) e hz) (e.moded mz)
    ha ma (hd.rename e) ea hzClass' he'
  intro Θ θ f x hx mx hp
  have hx' : HasType P Θ x (B.rename (e.comp f).names).xType := by
    simpa only [rename_comp,Embedding.comp] using hx
  have bo : (B.rename e.names).observation = B.observation.rename e.names := rfl
  have hh' := hh Θ θ (e.comp f) x hx' mx (by
    simpa only [QuantifierRoute.code,QuantifierRoute.rename,QuantifierCode.rename,
      ProofWrapper.rename_comp,bo,LogicSetup.code_rename,rename_comp,LogicCode.rename_comp,
      QuantifierCode.rename_comp,ObservationCode.rename_comp,Expr.rename_comp,Embedding.comp]
        using hp)
  simpa only [Expr.rename_comp,Embedding.comp] using hh'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean#L1657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdb8fa8c10075b34c77ce4729d32fb48dee7b60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
