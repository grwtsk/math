# pointedToPartialFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e10b8d357a71a187e8db1702e1b52e35b77c0f5df0bb012c7add4fe4d79e9e64",
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
  "slug": "pointedtopartialfun--a1ceaaca33ef71840147d3a4",
  "source": {
    "blob": "203fe87f3aaeab09734460ac0ebdb92ecbe742ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1ceaaca33ef71840147d3a45fb34097bb4e145687e57bd393da54ed7afcabc6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e10b8d357a71a187e8db1702e1b52e35b77c0f5df0bb012c7add4fe4d79e9e64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pointedToPartialFun : Pointed.{u} ⥤ PartialFun where
  obj X := { x : X // x ≠ X.point }
  map f := PFun.toSubtype _ f.toFun ∘ Subtype.val
  map_id _ :=
    PFun.ext fun _ b =>
      PFun.mem_toSubtype_iff (b := b).trans (Subtype.coe_inj.trans Part.mem_some_iff.symm)
  map_comp f g := by
    -- Porting note: the proof was changed because the original mathlib3 proof no longer works
    apply PFun.ext _
    rintro ⟨a, ha⟩ ⟨c, hc⟩
    constructor
    · rintro ⟨h₁, h₂⟩
      exact ⟨⟨fun h₀ => h₁ ((congr_arg g.toFun h₀).trans g.map_point), h₁⟩, h₂⟩
    · rintro ⟨_, _, _⟩
      exact ⟨_, rfl⟩

/-- The functor which maps undefined values to a new point. This makes the maps total and creates
pointed types. This is the noncomputable part of the equivalence `PartialFunEquivPointed`. It can't
be computable because `= Option.none` is decidable while the domain of a general `Part` isn't. -/
@[simps obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variantcace8e80494e0b855e42c11629dc16c7c6d03c2ee138f6711f5456b1f149dc25.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `203fe87f3aaeab09734460ac0ebdb92ecbe742ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
