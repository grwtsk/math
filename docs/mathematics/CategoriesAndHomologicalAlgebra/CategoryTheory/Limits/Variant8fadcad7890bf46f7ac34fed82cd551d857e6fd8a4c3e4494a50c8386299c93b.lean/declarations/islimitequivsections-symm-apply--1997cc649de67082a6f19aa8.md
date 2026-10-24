# isLimitEquivSections_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4ffce443cc038e415c2d179b2fad4c67cd75e7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fadcad7890bf46f7ac34fed82cd551d857e6fd8a4c3e4494a50c8386299c93b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c853dea7-692a-fbdf-efd4-3b04a2222a6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77cfcdc7-3319-d7d5-ed21-3c1a4b934b42",
  "kind": "theorem",
  "lexical_name": "isLimitEquivSections_symm_apply",
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
  "slug": "islimitequivsections-symm-apply--1997cc649de67082a6f19aa8",
  "source": {
    "blob": "e4ffce443cc038e415c2d179b2fad4c67cd75e7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8fadcad7890bf46f7ac34fed82cd551d857e6fd8a4c3e4494a50c8386299c93b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1997cc649de67082a6f19aa88e96a0db5a3199307e23ab05ddf7b8c17cf6a555",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8fadcad7890bf46f7ac34fed82cd551d857e6fd8a4c3e4494a50c8386299c93b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77cfcdc7-3319-d7d5-ed21-3c1a4b934b42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLimitEquivSections_symm_apply {c : Cone F} (t : IsLimit c)
    (x : F.sections) (j : J) :
    c.π.app j ((isLimitEquivSections t).symm x) = (x : ∀ j, F.obj j) j := by
  conv_rhs => rw [← (isLimitEquivSections t).right_inv x]
  rfl

end limit_characterization

variable {J : Type v} [Category.{w} J]

/-! We now provide two distinct implementations in the category of types.

The first, in the `CategoryTheory.Limits.Types.Small` namespace,
assumes `Small.{u} J` and constructs `J`-indexed limits in `Type u`.

The second, in the `CategoryTheory.Limits.Types.TypeMax` namespace
constructs limits for functors `F : J ⥤ Type max v u`, for `J : Type v`.
This construction is slightly nicer, as the limit is definitionally just `F.sections`,
rather than `Shrink F.sections`, which makes an arbitrary choice of `u`-small representative.

Hopefully we might be able to entirely remove the `TypeMax` constructions,
but for now they are useful glue for the later parts of the library.
-/

namespace Small

variable (F : J ⥤ Type u)

section

variable [Small.{u} F.sections]

/-- (internal implementation) the limit cone of a functor,
implemented as flat sections of a pi type
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8fadcad7890bf46f7ac34fed82cd551d857e6fd8a4c3e4494a50c8386299c93b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant8fadcad7890bf46f7ac34fed82cd551d857e6fd8a4c3e4494a50c8386299c93b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4ffce443cc038e415c2d179b2fad4c67cd75e7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
