# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c759f3a57c5bd5565b9760e6d1831cb9f4241a5b6e5369e234c4987113db61f",
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
  "slug": "instance--e8099c9a8fca4a53dedd8847",
  "source": {
    "blob": "db02b36f884af9a5cee1d4aa570d7dd4a204c810",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 25,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafOfModules/Variant774a6adaf64eff5adc29b8590553bf04695cd576b4d4da85b05165d67ded49d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8099c9a8fca4a53dedd88472815f20beda570c19a750015347ff3c0e85ee626",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafOfModules/Variant774a6adaf64eff5adc29b8590553bf04695cd576b4d4da85b05165d67ded49d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c759f3a57c5bd5565b9760e6d1831cb9f4241a5b6e5369e234c4987113db61f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public instance {C : Type u} [SmallCategory C] (R : Cᵒᵖ ⥤ RingCat.{u}) :
    IsGrothendieckAbelian.{u} (PresheafOfModules.{u} R) where
  hasFilteredColimitsOfSize := ⟨fun _ ↦ ⟨fun _ ↦ inferInstance⟩⟩
  ab5OfSize := ⟨fun J _ _ ↦ ⟨⟨fun K _ _ ↦ ⟨fun {F} ↦
    have : PreservesLimit F (colim (J := J) ⋙ PresheafOfModules.toPresheaf R) :=
      preservesLimit_of_natIso _ (preservesColimitNatIso (toPresheaf R)).symm
    preservesLimit_of_reflects_of_preserves _ (PresheafOfModules.toPresheaf R)⟩⟩⟩⟩

end PresheafOfModules
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafOfModules/Variant774a6adaf64eff5adc29b8590553bf04695cd576b4d4da85b05165d67ded49d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafOfModules/Variant774a6adaf64eff5adc29b8590553bf04695cd576b4d4da85b05165d67ded49d0.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db02b36f884af9a5cee1d4aa570d7dd4a204c810` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
