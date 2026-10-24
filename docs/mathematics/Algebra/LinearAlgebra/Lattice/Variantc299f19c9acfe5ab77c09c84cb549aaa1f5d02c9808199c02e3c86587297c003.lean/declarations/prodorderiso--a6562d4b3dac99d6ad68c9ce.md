# prodOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af75c03c03bee3342fc5e3398028ee18bc4e9db26fe1994b0a95be92cc172a99",
  "kind": "def",
  "lexical_name": "prodOrderIso",
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
  "slug": "prodorderiso--a6562d4b3dac99d6ad68c9ce",
  "source": {
    "blob": "60381ffb3378d1d165cdce8f7c4f4ca53968f8b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 188,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variantc299f19c9acfe5ab77c09c84cb549aaa1f5d02c9808199c02e3c86587297c003.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6562d4b3dac99d6ad68c9ce715b35b9d265b47fe2e68cdd299f53bbe88efd07",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lattice/Variantc299f19c9acfe5ab77c09c84cb549aaa1f5d02c9808199c02e3c86587297c003.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af75c03c03bee3342fc5e3398028ee18bc4e9db26fe1994b0a95be92cc172a99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodOrderIso (C : PointedCone R M) (D : PointedCone R N) :
    Face (C.prod D) ≃o Face C × Face D where
  toFun G := ⟨fst G, snd G⟩
  invFun G := G.1.prod G.2
  left_inv G := by simp [fst_prod_snd]
  right_inv G := by simp
  map_rel_iff' := by
    simp only [Equiv.coe_fn_mk, ge_iff_le, Prod.mk_le_mk]
    intro F₁ F₂; constructor <;> intro a
    · simpa [fst_prod_snd, toPointedCone_le_toPointedCone] using Face.prod_mono a.1 a.2
    · constructor; all_goals
      try simpa only [prod_left, prod_right]
      exact fun _ d ↦ Submodule.map_mono a d

end Prod

end Face

end DivisionRing

end PointedCone
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lattice/Variantc299f19c9acfe5ab77c09c84cb549aaa1f5d02c9808199c02e3c86587297c003.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lattice/Variantc299f19c9acfe5ab77c09c84cb549aaa1f5d02c9808199c02e3c86587297c003.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60381ffb3378d1d165cdce8f7c4f4ca53968f8b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
