# IsLimit.pullbackConeEquivBinaryFanInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1b1b04c1dba0cfe93aa36185c23fe3dabd62ac73cc2fac63df64a34b090cf2f",
  "kind": "def",
  "lexical_name": "IsLimit.pullbackConeEquivBinaryFanInverse",
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
  "slug": "islimit-pullbackconeequivbinaryfaninverse--043a2274a77bcb3623d3d6dc",
  "source": {
    "blob": "d15f72b2b4ef22b60603e0b9f122ffc8f07bbca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:043a2274a77bcb3623d3d6dce1193660c5d1506a2ad1c8263de40decb74b8c10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1b1b04c1dba0cfe93aa36185c23fe3dabd62ac73cc2fac63df64a34b090cf2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsLimit.pullbackConeEquivBinaryFanInverse {c : BinaryFan (Over.mk f) (.mk g)} (hc : IsLimit c) :
    IsLimit <| pullbackConeEquivBinaryFan.inverse.obj c :=
  PullbackCone.IsLimit.mk
    (c.fst.w.trans c.snd.w.symm)
    (fun s ↦ (hc.lift <| pullbackConeEquivBinaryFan.functor.obj s).left)
    (fun s ↦ by simpa only using congr($(hc.fac _ _).left))
    (fun s ↦ by simpa only using congr($(hc.fac _ _).left))
    <| fun s m hm₁ hm₂ ↦ by
      change PullbackCone f g at s
      have := hc.uniq (pullbackConeEquivBinaryFan.functor.obj s) (Over.homMk m <| by
        have := c.fst.w
        simp only [pair_obj_left, Over.mk_left, Functor.id_obj, pair_obj_right,
          Functor.const_obj_obj, Over.mk_hom, Functor.id_map, CostructuredArrow.right_eq_id,
          Discrete.functor_map_id, Category.comp_id] at hm₁ this
        simp [← hm₁, this])
        (by rintro (_ | _) <;> ext <;> simpa)
      exact congr(($this).left)

end Over

section Under
variable {f : X ⟶ Y} {g : X ⟶ Z}

/-- Pushout cocones from `X` are the same thing as binary cofans in `Under X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d15f72b2b4ef22b60603e0b9f122ffc8f07bbca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
