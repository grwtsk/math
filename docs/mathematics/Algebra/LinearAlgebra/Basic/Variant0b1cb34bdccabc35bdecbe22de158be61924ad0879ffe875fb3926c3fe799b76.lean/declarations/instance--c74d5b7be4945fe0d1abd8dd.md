# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8eb65f7feb00d9c566c69e09f719a74f49ac68e168f516ad45d2fd7ba1901934",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c74d5b7be4945fe0d1abd8dd",
  "source": {
    "blob": "95ce25c388525e148b4ae40215c15a2f90f3f9c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 246,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0b1cb34bdccabc35bdecbe22de158be61924ad0879ffe875fb3926c3fe799b76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c74d5b7be4945fe0d1abd8dd1b642dfe07e6e29f9e391350862eb15730228dfc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0b1cb34bdccabc35bdecbe22de158be61924ad0879ffe875fb3926c3fe799b76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8eb65f7feb00d9c566c69e09f719a74f49ac68e168f516ad45d2fd7ba1901934`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HasZeroObject (ModuleCat.{v} R) :=
  ⟨⟨of R PUnit, isZero_of_subsingleton _⟩⟩

end ModuleCat

variable {R}
variable {X₁ X₂ : Type v}

open ModuleCat

/-- Reinterpreting a linear map in the category of `R`-modules -/
scoped[ModuleCat] notation "↟" f:1024 => ModuleCat.ofHom f

-- Since `of` and the coercion now roundtrip reducibly, we don't need to distinguish in which place
-- we need to add `of` when coercing from linear maps to morphisms.
@[deprecated ModuleCat.ofHom (since := "2024-11-29")] alias ModuleCat.asHomRight := ModuleCat.ofHom
@[deprecated ModuleCat.ofHom (since := "2024-11-29")] alias ModuleCat.asHomLeft := ModuleCat.ofHom

/-- Reinterpreting a linear map in the category of `R`-modules.
This notation is deprecated: use `↟` instead.
-/
scoped[ModuleCat] notation "↾" f:1024 => ModuleCat.asHomRight f
/-- Reinterpreting a linear map in the category of `R`-modules.
This notation is deprecated: use `↟` instead.
-/
scoped[ModuleCat] notation "↿" f:1024 => ModuleCat.asHomLeft f

section

/-- Build an isomorphism in the category `Module R` from a `LinearEquiv` between `Module`s. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0b1cb34bdccabc35bdecbe22de158be61924ad0879ffe875fb3926c3fe799b76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0b1cb34bdccabc35bdecbe22de158be61924ad0879ffe875fb3926c3fe799b76.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95ce25c388525e148b4ae40215c15a2f90f3f9c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
