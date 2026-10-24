# equiv₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b6e782bb9f68d23c31fc1ab42fcaadf0db70f56f908b40545ddb92a5da848b8",
  "kind": "def",
  "lexical_name": "equiv₀",
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
  "slug": "equiv--4f55acc7dcd21fe0442cac4e",
  "source": {
    "blob": "57bbc317145c43569a96d689a815156b8f591b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 185,
    "path": "GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant9236fefa58c3cb5dca0febc037509ddda4c234ddd3164c649f8b89527cad5cb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f55acc7dcd21fe0442cac4e429efbef4d99ca4ea15d1e3327bf14e33a969611",
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

Occurrence: `declaration:2b6e782bb9f68d23c31fc1ab42fcaadf0db70f56f908b40545ddb92a5da848b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equiv₀ {f g : X.PtSimplex 0 x} :
    RelStruct₀ f g ≃
      X.Edge (PtSimplex.equiv₀ x g) (PtSimplex.equiv₀ x f) where
  toFun h :=
    Edge.mk (yonedaEquiv h.map)
      (by simp [← stdSimplex.yonedaEquiv_δ_comp, dsimp% h.δ_succ_map])
      (by simp [← stdSimplex.yonedaEquiv_δ_comp, dsimp% h.δ_castSucc_map])
  invFun e :=
    { map := yonedaEquiv.symm e.edge
      δ_succ_map := by simp [stdSimplex.δ_comp_yonedaEquiv_symm]
      δ_castSucc_map := by simp [stdSimplex.δ_comp_yonedaEquiv_symm]
      δ_map_of_gt := by grind
      δ_map_of_lt := by grind }
  left_inv h := by cat_disch
  right_inv e := by cat_disch

end RelStruct₀

/-- For each `i : Fin n`, this structure is a candidate for the relation saying
that `fg` is the product of `f` and `g` in the homotopy group (of a Kan complex).
It is so if `g`, `fg` and `f` are respectively the `i.castSucc.castSucc`,
`i.castSucc.succ` and `i.succ.succ` faces of a `n + 1`-simplex such that
all the other faces are constant. (The multiplication on homotopy groups will be
defined using `i := Fin.last _`, but in general, this structure is useful in
order to obtain properties of `RelStruct`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/MulStruct/Variant9236fefa58c3cb5dca0febc037509ddda4c234ddd3164c649f8b89527cad5cb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant9236fefa58c3cb5dca0febc037509ddda4c234ddd3164c649f8b89527cad5cb6.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bbc317145c43569a96d689a815156b8f591b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
