# edge_given_left_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:491a5338-ab80-d111-8451-8451fa6fb756",
  "kind": "theorem",
  "lexical_name": "edge_given_left_elim",
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
  "slug": "edge-given-left-elim--99d7831a67d67aaeaa549128",
  "source": {
    "blob": "57f5c672add74f123151628cee1e5dcf9a22df0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1622,
    "line": 1585,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variantaf73e06ff5555bba39cbb326bcf955855b6ddb5528c458ddbb850c698fac67c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99d7831a67d67aaeaa549128cc3afbc1b07e2fc67fd4bb524272da07dc9c286f",
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

Occurrence: `result:491a5338-ab80-d111-8451-8451fa6fb756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1585–1622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edge_given_left_elim (t : Fin 3) (ht : t ≠ 0) {y z a D : Expr S}
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hz : HasType P Γ z B.yType) (mz : WellModed γ z .data)
    (ha : HasType P Γ a B.xType) (ma : WellModed γ a .data) (hd : L.Formula D)
    (ea : Proves P Γ γ (B.relation L.code KY.code KP.code y (B.observation.tagged L.code 0 a)))
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
  apply H.class_witness_elim KY KP t hz mz hd hzClass
  intro Δ δ e b hb mb eb
  have ea' := ea.rename e
  have he' := he.rename e
  simp only [relation_rename,ObservationCode.tagged_rename] at ea'
  simp only [propertyE_rename,unionPred_rename] at he'
  apply (H.rename e).edge_property_witness_elim (KY.rename e) (KP.rename e) t ht
    (y_typed_rename (B := B) e hy) (e.moded my) (y_typed_rename (B := B) e hz) (e.moded mz)
    (x_typed_rename (B := B) e ha) (e.moded ma) hb mb (hd.rename e) ea' eb he'
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variantaf73e06ff5555bba39cbb326bcf955855b6ddb5528c458ddbb850c698fac67c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variantaf73e06ff5555bba39cbb326bcf955855b6ddb5528c458ddbb850c698fac67c3.lean#L1585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57f5c672add74f123151628cee1e5dcf9a22df0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
