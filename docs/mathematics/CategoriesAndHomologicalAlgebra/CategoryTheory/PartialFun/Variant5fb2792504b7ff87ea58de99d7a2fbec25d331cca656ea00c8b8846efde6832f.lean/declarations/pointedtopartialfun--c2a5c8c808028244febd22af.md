# pointedToPartialFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cf08fb793163b6aaae7a50c84d00a55b3e2143ce491215e13fbc9e8cfb583f7",
  "kind": "def",
  "lexical_name": "pointedToPartialFun",
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
  "slug": "pointedtopartialfun--c2a5c8c808028244febd22af",
  "source": {
    "blob": "70a2a866792bf6649a41f62b39c80ce27304ed88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 104,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant5fb2792504b7ff87ea58de99d7a2fbec25d331cca656ea00c8b8846efde6832f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2a5c8c808028244febd22af4f450a38594197b9d9296ef4652fbc1968714fd5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant5fb2792504b7ff87ea58de99d7a2fbec25d331cca656ea00c8b8846efde6832f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cf08fb793163b6aaae7a50c84d00a55b3e2143ce491215e13fbc9e8cfb583f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pointedToPartialFun : Pointed.{u} ⥤ PartialFun where
  obj X := ↧{ x : X // x ≠ X.point }
  map f := PFun.toSubtype _ f.toFun ∘ Subtype.val
  map_id _ :=
    PFun.ext fun _ b =>
      PFun.mem_toSubtype_iff (b := b).trans (Subtype.coe_inj.trans Part.mem_some_iff.symm)
  map_comp {X Y Z} f g := by
    refine PFun.ext fun ⟨a, ha⟩ ⟨c, hc⟩ =>
      (PFun.mem_toSubtype_iff.trans ?_).trans Part.mem_bind_iff.symm
    suffices c = g.toFun (f.toFun a) → ¬Y.point = f.toFun a ∧ ¬Z.point = g.toFun (f.toFun a) from
      ⟨by aesop, by simp; grind⟩
    rintro rfl
    refine ⟨fun h => hc.symm <| g.map_point ▸ congr_arg g.toFun h, hc.symm⟩

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The functor which maps undefined values to a new point. This makes the maps total and creates
pointed types. This is the noncomputable part of the equivalence `PartialFunEquivPointed`. It can't
be computable because `= Option.none` is decidable while the domain of a general `Part` isn't. -/
@[simps obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant5fb2792504b7ff87ea58de99d7a2fbec25d331cca656ea00c8b8846efde6832f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant5fb2792504b7ff87ea58de99d7a2fbec25d331cca656ea00c8b8846efde6832f.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70a2a866792bf6649a41f62b39c80ce27304ed88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
