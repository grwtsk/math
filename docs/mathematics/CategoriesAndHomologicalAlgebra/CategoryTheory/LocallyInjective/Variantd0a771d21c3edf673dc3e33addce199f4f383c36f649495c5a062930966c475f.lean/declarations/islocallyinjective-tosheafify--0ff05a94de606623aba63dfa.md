# isLocallyInjective_toSheafify'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68bc01e25a5fd64f322ab28e4d279c9c1efc1ba01abf1c2bd9183f681f7f6aed",
  "kind": "instance",
  "lexical_name": "isLocallyInjective_toSheafify'",
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
  "slug": "islocallyinjective-tosheafify--0ff05a94de606623aba63dfa",
  "source": {
    "blob": "470b94e1e10ed7363f371806c591ece3d5ceb289",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 196,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ff05a94de606623aba63dfa5dea003ee863e7b78ca8f51e355b72ba2bb93725",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68bc01e25a5fd64f322ab28e4d279c9c1efc1ba01abf1c2bd9183f681f7f6aed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isLocallyInjective_toSheafify' {CD : D → Type (max u v)}
    [∀ X Y, FunLike (FD X Y) (CD X) (CD Y)] [ConcreteCategory.{max u v} D FD]
    (P : Cᵒᵖ ⥤ D) [HasWeakSheafify J D] [J.HasSheafCompose (forget D)]
    [J.PreservesSheafification (forget D)] :
    IsLocallyInjective J (toSheafify J P) := by
  rw [← isLocallyInjective_forget_iff, ← sheafComposeIso_hom_fac,
    ← toSheafify_plusPlusIsoSheafify_hom]
  infer_instance

end

end Presheaf

namespace Sheaf

variable {J}
variable {F₁ F₂ : Sheaf J D} (φ : F₁ ⟶ F₂)

/-- If `φ : F₁ ⟶ F₂` is a morphism of sheaves, this is an abbreviation for
`Presheaf.IsLocallyInjective J φ.val`. Under suitable assumptions, it
is equivalent to the injectivity of all maps `φ.val.app X`,
see `isLocallyInjective_iff_injective`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `470b94e1e10ed7363f371806c591ece3d5ceb289` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
