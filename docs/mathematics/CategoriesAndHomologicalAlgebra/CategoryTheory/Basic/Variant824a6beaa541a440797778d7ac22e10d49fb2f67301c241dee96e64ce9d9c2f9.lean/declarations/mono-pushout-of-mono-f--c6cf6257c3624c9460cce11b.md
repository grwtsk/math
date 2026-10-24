# mono_pushout_of_mono_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b346f114e638815ccda335ad1a62609092752e65ba2749a85f05df9eb75adc03",
  "kind": "instance",
  "lexical_name": "mono_pushout_of_mono_f",
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
  "slug": "mono-pushout-of-mono-f--c6cf6257c3624c9460cce11b",
  "source": {
    "blob": "7f9b9fa1702bacda407e8a5d126090d46cfdac41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 766,
    "line": 745,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6cf6257c3624c9460cce11bb11a92a76198a6704344b51bf776ff9cbaf82532",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b346f114e638815ccda335ad1a62609092752e65ba2749a85f05df9eb75adc03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 745–766.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance mono_pushout_of_mono_f [Mono f] : Mono (pushout.inr _ _ : Z ⟶ pushout f g) :=
  mono_of_cancel_zero _ fun {R} e h => by
    let u := biprod.lift (0 : R ⟶ Y) e
    have hu : u ≫ BiproductToPushoutIsCokernel.biproductToPushout f g = 0 := by simpa [u]
    have :=
      monoIsKernelOfCokernel _
        (BiproductToPushoutIsCokernel.isColimitBiproductToPushout f g)
    obtain ⟨d, hd⟩ := KernelFork.IsLimit.lift' this u hu
    dsimp at d
    dsimp [u] at hd
    have : d ≫ f = 0 := calc
      d ≫ f = d ≫ biprod.lift f (-g) ≫ biprod.fst := by rw [biprod.lift_fst]
      _ = u ≫ biprod.fst := by rw [← Category.assoc, hd]
      _ = 0 := biprod.lift_fst _ _
    have : d = 0 := (cancel_mono f).1 (by simpa)
    calc
      e = biprod.lift (0 : R ⟶ Y) e ≫ biprod.snd := by rw [biprod.lift_snd]
      _ = (d ≫ biprod.lift f (-g)) ≫ biprod.snd := by rw [← hd]
      _ = (0 ≫ biprod.lift f (-g)) ≫ biprod.snd := by rw [this]
      _ = 0 ≫ biprod.lift f (-g) ≫ biprod.snd := by rw [Category.assoc]
      _ = 0 := zero_comp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean#L745).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9b9fa1702bacda407e8a5d126090d46cfdac41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
