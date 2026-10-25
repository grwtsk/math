# MonadMor₂Iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11632df6fc3da790011729da2839b3ed236d504e61ef2dfe20c613ca9c319b68",
  "kind": "class",
  "lexical_name": "MonadMor₂Iso",
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
  "slug": "monadmor-iso--2292e000262bf37be5fc199b",
  "source": {
    "blob": "e39dab045582ff8750cbade825cb9198fdab6b25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 239,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantd43841dffa98895f5fece545176d680580b0848a3b28450c441efeb06e74cdff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2292e000262bf37be5fc199b5a089979239f9c986be1c8ba9a7a4ff93281d93f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantd43841dffa98895f5fece545176d680580b0848a3b28450c441efeb06e74cdff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11632df6fc3da790011729da2839b3ed236d504e61ef2dfe20c613ca9c319b68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MonadMor₂Iso (m : Type → Type) where
  /-- The expression for the associator `α_ f g h`. -/
  associatorM (f g h : Mor₁) : m StructuralAtom
  /-- The expression for the left unitor `λ_ f`. -/
  leftUnitorM (f : Mor₁) : m StructuralAtom
  /-- The expression for the right unitor `ρ_ f`. -/
  rightUnitorM (f : Mor₁) : m StructuralAtom
  /-- The expression for the identity `Iso.refl f`. -/
  id₂M (f : Mor₁) : m StructuralAtom
  /-- The expression for the coherence isomorphism `⊗𝟙 : f ⟶ g`. -/
  coherenceHomM (f g : Mor₁) (inst : Expr) : m CoherenceHom
  /-- The expression for the composition `η ≪≫ θ`. -/
  comp₂M (η θ : Mor₂Iso) : m Mor₂Iso
  /-- The expression for the left whiskering `whiskerLeftIso f η`. -/
  whiskerLeftM (f : Mor₁) (η : Mor₂Iso) : m Mor₂Iso
  /-- The expression for the right whiskering `whiskerRightIso η h`. -/
  whiskerRightM (η : Mor₂Iso) (h : Mor₁) : m Mor₂Iso
  /-- The expression for the horizontal composition `η ◫ θ`. -/
  horizontalCompM (η θ : Mor₂Iso) : m Mor₂Iso
  /-- The expression for the inverse `Iso.symm η`. -/
  symmM (η : Mor₂Iso) : m Mor₂Iso
  /-- The expression for the coherence composition `η ≪⊗≫ θ := η ≪≫ α ≪≫ θ`. -/
  coherenceCompM (α : CoherenceHom) (η θ : Mor₂Iso) : m Mor₂Iso

namespace MonadMor₂Iso

variable {m : Type → Type} [Monad m] [MonadMor₂Iso m]

/-- The expression for the associator `α_ f g h`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantd43841dffa98895f5fece545176d680580b0848a3b28450c441efeb06e74cdff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantd43841dffa98895f5fece545176d680580b0848a3b28450c441efeb06e74cdff.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e39dab045582ff8750cbade825cb9198fdab6b25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
