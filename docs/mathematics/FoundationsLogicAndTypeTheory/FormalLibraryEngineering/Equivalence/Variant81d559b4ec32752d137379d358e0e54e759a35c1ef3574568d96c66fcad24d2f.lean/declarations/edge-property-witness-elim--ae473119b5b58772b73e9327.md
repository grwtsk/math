# edge_property_witness_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fa30e5a-eb13-12c7-1350-1ac85e189da9",
  "kind": "theorem",
  "lexical_name": "edge_property_witness_elim",
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
  "slug": "edge-property-witness-elim--ae473119b5b58772b73e9327",
  "source": {
    "blob": "dcdb8fa8c10075b34c77ce4729d32fb48dee7b60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1618,
    "line": 1588,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae473119b5b58772b73e93273063b695aaf814310b16fa6a187a107cd4f6bf92",
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

Occurrence: `result:2fa30e5a-eb13-12c7-1350-1ac85e189da9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1588–1618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edge_property_witness_elim (t : Fin 3) (ht : t ≠ 0) {y z a b D : Expr S}
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hz : HasType P Γ z B.yType) (mz : WellModed γ z .data)
    (ha : HasType P Γ a B.xType) (ma : WellModed γ a .data)
    (hb : HasType P Γ b B.xType) (mb : WellModed γ b .data) (hd : L.Formula D)
    (ea : Proves P Γ γ (B.relation L.code KY.code KP.code y (B.observation.tagged L.code 0 a)))
    (eb : Proves P Γ γ (B.relation L.code KY.code KP.code z (B.observation.tagged L.code t b)))
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
  have hu := H.unionPred_typed KY KP hy my hz mz
  apply H.propertyE_elim KY KP t hu.1 hu.2 hd he
  intro Δ δ e x hx mx heAt
  simp only [unionPred_rename] at heAt
  have ea' := ea.rename e
  have eb' := eb.rename e
  simp only [relation_rename,ObservationCode.tagged_rename] at ea' eb'
  exact hh Δ δ e x hx mx ((H.rename e).edge_witness_core (KY.rename e) (KP.rename e) t ht
    (y_typed_rename (B := B) e hy) (e.moded my) (y_typed_rename (B := B) e hz) (e.moded mz)
    (x_typed_rename (B := B) e ha) (e.moded ma) (x_typed_rename (B := B) e hb) (e.moded mb)
    hx mx ea' eb' heAt)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean#L1588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdb8fa8c10075b34c77ce4729d32fb48dee7b60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
