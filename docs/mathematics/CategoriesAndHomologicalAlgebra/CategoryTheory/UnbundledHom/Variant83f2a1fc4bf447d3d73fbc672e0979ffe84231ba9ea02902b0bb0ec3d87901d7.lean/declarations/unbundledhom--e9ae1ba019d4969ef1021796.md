# UnbundledHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e07cfa45856b16b10d79ff2863cfdfa018154796222db996c6b3d1a842af20e",
  "kind": "class",
  "lexical_name": "UnbundledHom",
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
  "slug": "unbundledhom--e9ae1ba019d4969ef1021796",
  "source": {
    "blob": "dad7f5800d3f39e6b766ddef69986d161398da95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 25,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnbundledHom/Variant83f2a1fc4bf447d3d73fbc672e0979ffe84231ba9ea02902b0bb0ec3d87901d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9ae1ba019d4969ef10217964f295dc0e754935b26115570ea98fe85aba35dc2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UnbundledHom/Variant83f2a1fc4bf447d3d73fbc672e0979ffe84231ba9ea02902b0bb0ec3d87901d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e07cfa45856b16b10d79ff2863cfdfa018154796222db996c6b3d1a842af20e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class UnbundledHom {c : Type u → Type u} (hom : ∀ ⦃α β⦄, c α → c β → (α → β) → Prop) : Prop where
  hom_id : ∀ {α} (ia : c α), hom ia ia id
  hom_comp : ∀ {α β γ} {Iα : c α} {Iβ : c β} {Iγ : c γ} {g : β → γ} {f : α → β} (_ : hom Iβ Iγ g)
      (_ : hom Iα Iβ f), hom Iα Iγ (g ∘ f)

namespace UnbundledHom

variable (c : Type u → Type u) (hom : ∀ ⦃α β⦄, c α → c β → (α → β) → Prop) [𝒞 : UnbundledHom hom]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UnbundledHom/Variant83f2a1fc4bf447d3d73fbc672e0979ffe84231ba9ea02902b0bb0ec3d87901d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnbundledHom/Variant83f2a1fc4bf447d3d73fbc672e0979ffe84231ba9ea02902b0bb0ec3d87901d7.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dad7f5800d3f39e6b766ddef69986d161398da95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
