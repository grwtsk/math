# edge_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aee5e301-1f65-53ba-cf1c-e7948a465617",
  "kind": "theorem",
  "lexical_name": "edge_congr",
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
  "slug": "edge-congr--f20efa5fb7dbf2b866be415f",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26564,
    "line": 26527,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f20efa5fb7dbf2b866be415f95f10c2d02a9a812b9ba8d605923cd3fce6ded73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aee5e301-1f65-53ba-cf1c-e7948a465617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26527–26564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edge_congr (t : Bool) {y z y' z' : Expr S}
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hz : HasType P Γ z B.yType) (mz : WellModed γ z .data)
    (hy' : HasType P Γ y' B.yType) (my' : WellModed γ y' .data)
    (hz' : HasType P Γ z' B.yType) (mz' : WellModed γ z' .data)
    (ey : Proves P Γ γ (B.relation L.code KY.code KP.code y y'))
    (ez : Proves P Γ γ (B.relation L.code KY.code KP.code z z')) :
    Equivalent P Γ γ (B.edge L.code KY.code KP.code t y z) (B.edge L.code KY.code KP.code t y' z') := by
  have f := H.edge_formula KY KP t hy my hz mz
  have f' := H.edge_formula KY KP t hy' my' hz' mz'
  apply L.equivalent_of_iff f f'
  apply L.conj_intro (L.imp_formula f f') (L.imp_formula f' f)
  · apply L.imp_intro_future f f'
    intro Δ δ e he
    simp only [edge_rename] at he ⊢
    have eyE := ey.rename e
    have ezE := ez.rename e
    simp only [relation_rename] at eyE ezE
    exact (H.rename e).edge_transport (KY.rename e) (KP.rename e) t
      (y_typed_rename (B := B) e hy) (e.moded my) (y_typed_rename (B := B) e hz) (e.moded mz)
      (y_typed_rename (B := B) e hy') (e.moded my') (y_typed_rename (B := B) e hz') (e.moded mz')
      ((H.rename e).relation_symm (KY.rename e) (KP.rename e)
        (y_typed_rename (B := B) e hy) (e.moded my) (y_typed_rename (B := B) e hy') (e.moded my') eyE)
      ((H.rename e).relation_symm (KY.rename e) (KP.rename e)
        (y_typed_rename (B := B) e hz) (e.moded mz) (y_typed_rename (B := B) e hz') (e.moded mz') ezE) he
  · apply L.imp_intro_future f' f
    intro Δ δ e he
    simp only [edge_rename] at he ⊢
    have eyE := ey.rename e
    have ezE := ez.rename e
    simp only [relation_rename] at eyE ezE
    exact (H.rename e).edge_transport (KY.rename e) (KP.rename e) t
      (y_typed_rename (B := B) e hy') (e.moded my') (y_typed_rename (B := B) e hz') (e.moded mz')
      (y_typed_rename (B := B) e hy) (e.moded my) (y_typed_rename (B := B) e hz) (e.moded mz) eyE ezE he
end SpecializedCode.Formed

namespace SpecializedCode
variable (B : SpecializedCode S)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L26527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
