# colimitMulAux_eq_of_rel_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "635113a6a0faebde1452434e593875955582c19f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ada05d49-ce40-66ee-d3ea-97da94268619",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:def0c359-f38b-282e-c80c-1e82f2f63774",
  "kind": "theorem",
  "lexical_name": "colimitMulAux_eq_of_rel_right",
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
  "slug": "colimitmulaux-eq-of-rel-right--0243bda916b03568ea83b1d8",
  "source": {
    "blob": "635113a6a0faebde1452434e593875955582c19f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0243bda916b03568ea83b1d8459960aba103c0bf40209c94fdb13563fddf391d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:def0c359-f38b-282e-c80c-1e82f2f63774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitMulAux_eq_of_rel_right {x y y' : Σ j, F.obj j}
    (hyy' : Types.FilteredColimit.Rel (F ⋙ forget MonCat) y y') :
    colimitMulAux.{v, u} F x y = colimitMulAux.{v, u} F x y' := by
  obtain ⟨j₁, y⟩ := y; obtain ⟨j₂, x⟩ := x; obtain ⟨j₃, y'⟩ := y'
  obtain ⟨l, f, g, hfg⟩ := hyy'
  simp only [Functor.comp_obj, Functor.comp_map, forget_map] at hfg
  obtain ⟨s, α, β, γ, h₁, h₂, h₃⟩ :=
    IsFiltered.tulip (IsFiltered.rightToMax j₂ j₁) (IsFiltered.leftToMax j₂ j₁)
      (IsFiltered.leftToMax j₂ j₃) (IsFiltered.rightToMax j₂ j₃) f g
  apply M.mk_eq
  use s, α, γ
  dsimp
  simp_rw [MonoidHom.map_mul, ← ConcreteCategory.comp_apply, ← F.map_comp, h₁, h₂, h₃, F.map_comp,
    ConcreteCategory.comp_apply, hfg]

/-- Multiplication in the colimit. See also `colimitMulAux`. -/
@[to_additive "Addition in the colimit. See also `colimitAddAux`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `635113a6a0faebde1452434e593875955582c19f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
