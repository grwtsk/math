# overMapCompPresheafHomIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e1d18db274a60ed2f825f7cdc558b75ac409e7e7b3263614d78fb2762a07c05",
  "kind": "def",
  "lexical_name": "overMapCompPresheafHomIso",
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
  "slug": "overmapcomppresheafhomiso--643067bda3de73ad863aff48",
  "source": {
    "blob": "244e7aef63df8f9b90e71484e367b2459e893818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsPrestack/Variant792fdce11911737429a0170284717d3c0292dd634ef12e514fd5894ba3af8bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:643067bda3de73ad863aff488334b6a248c0577803d16c16b7c91d75f7b2b3ef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsPrestack/Variant792fdce11911737429a0170284717d3c0292dd634ef12e514fd5894ba3af8bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e1d18db274a60ed2f825f7cdc558b75ac409e7e7b3263614d78fb2762a07c05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def overMapCompPresheafHomIso {S' : C} (q : S' ⟶ S) :
    (Over.map q).op ⋙ F.presheafHom M N ≅
      F.presheafHom ((F.map (.toLoc q.op)).toFunctor.obj M)
        ((F.map (.toLoc q.op)).toFunctor.obj N) :=
  NatIso.ofComponents (fun T ↦ Equiv.toIso (by
    letI e := Cat.Hom.toNatIso (F.mapComp' (.toLoc q.op) (.toLoc T.unop.hom.op)
      (.toLoc ((Over.map q).obj T.unop).hom.op))
    exact (Iso.homFromEquiv (e.app M)).trans (Iso.homToEquiv (e.app N)))) (by
      rintro ⟨T₁⟩ ⟨T₂⟩ ⟨f⟩
      ext g
      dsimp [pullHom]
      simp only [Category.assoc,
        Functor.map_comp]
      rw [F.mapComp'₀₁₃_inv_comp_mapComp'₀₂₃_hom_app_assoc _ _ _ _ _ _ rfl _ rfl,
        F.mapComp'₀₂₃_inv_comp_mapComp'₀₁₃_hom_app _ _ _ _ _ _ _ _ (by
          simp only [← Quiver.Hom.comp_toLoc, ← op_comp, Over.w_assoc])])

end

variable (F)

/-- The property that a pseudofunctor `F : LocallyDiscrete Cᵒᵖ ⥤ᵖ Cat`
satisfies the descent property for morphisms, i.e. is a prestack.
(See the terminological note in the introduction of the file `Sites.Descent.IsPrestack`.) -/
@[stacks 026F "(2)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsPrestack/Variant792fdce11911737429a0170284717d3c0292dd634ef12e514fd5894ba3af8bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsPrestack/Variant792fdce11911737429a0170284717d3c0292dd634ef12e514fd5894ba3af8bbe.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `244e7aef63df8f9b90e71484e367b2459e893818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
