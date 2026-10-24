# unop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10a2d8fc230797f5ba973db7a1176fac244ad9878771054d648297314b56f6ff",
  "kind": "def",
  "lexical_name": "unop",
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
  "slug": "unop--f50ae79ad7f9da6ee5d11bf6",
  "source": {
    "blob": "57bbc317145c43569a96d689a815156b8f591b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 254,
    "path": "GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant9236fefa58c3cb5dca0febc037509ddda4c234ddd3164c649f8b89527cad5cb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f50ae79ad7f9da6ee5d11bf687d1dcf30bf1d23a9a0d6a1570e3773625ac2221",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/MulStruct/Variant9236fefa58c3cb5dca0febc037509ddda4c234ddd3164c649f8b89527cad5cb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10a2d8fc230797f5ba973db7a1176fac244ad9878771054d648297314b56f6ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unop {f g fg : X.PtSimplex n x} {i : Fin n} (h : MulStruct g.op f.op fg.op i) {j : Fin n}
    (hij : i.rev = j := by grind) :
    MulStruct f g fg j where
  map := yonedaEquiv.symm (opObjEquiv (yonedaEquiv h.map))
  δ_castSucc_castSucc_map := by
    simp [stdSimplex.δ_comp_yonedaEquiv_symm, δ_opObjEquiv,
      ← stdSimplex.yonedaEquiv_δ_comp, ← hij, Fin.rev_castSucc]
  δ_succ_castSucc_map := by
    simp [stdSimplex.δ_comp_yonedaEquiv_symm, δ_opObjEquiv,
      ← stdSimplex.yonedaEquiv_δ_comp, ← hij, Fin.rev_castSucc, Fin.rev_succ]
  δ_succ_succ_map := by
    simp [stdSimplex.δ_comp_yonedaEquiv_symm, δ_opObjEquiv,
      ← stdSimplex.yonedaEquiv_δ_comp, ← hij, Fin.rev_succ]
  δ_map_of_lt k hk := by
    rw [stdSimplex.δ_comp_yonedaEquiv_symm, δ_opObjEquiv,
      ← stdSimplex.yonedaEquiv_δ_comp, h.δ_map_of_gt _ (by grind)]
    simp [opObjEquiv_yonedaEquiv_const]
  δ_map_of_gt k hk := by
    rw [stdSimplex.δ_comp_yonedaEquiv_symm, δ_opObjEquiv,
      ← stdSimplex.yonedaEquiv_δ_comp, h.δ_map_of_lt _ (by grind)]
    simp [opObjEquiv_yonedaEquiv_const]

end MulStruct

/-- If `f` and `g` are in `X.PtSimplex n x`, then `RelStruct f g i.castSucc`
identifies to `MulStruct .const f g i`. -/
@[simps apply_map symm_apply_map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/MulStruct/Variant9236fefa58c3cb5dca0febc037509ddda4c234ddd3164c649f8b89527cad5cb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant9236fefa58c3cb5dca0febc037509ddda4c234ddd3164c649f8b89527cad5cb6.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bbc317145c43569a96d689a815156b8f591b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
