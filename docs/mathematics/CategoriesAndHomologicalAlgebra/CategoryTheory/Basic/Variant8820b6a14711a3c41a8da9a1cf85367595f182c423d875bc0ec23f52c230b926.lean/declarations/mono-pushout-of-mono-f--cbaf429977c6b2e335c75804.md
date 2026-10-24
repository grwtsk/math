# mono_pushout_of_mono_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dab5bb22bb1414e6a9cc3b67e30f056c8750b9bcb5cbfdd8255d67d0558fe79c",
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
  "slug": "mono-pushout-of-mono-f--cbaf429977c6b2e335c75804",
  "source": {
    "blob": "a4cf1ee9d88e62618593153621d96ac586c8b8f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 713,
    "line": 692,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbaf429977c6b2e335c75804eb67869b326ef20317ef02a0f2771449d001614a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dab5bb22bb1414e6a9cc3b67e30f056c8750b9bcb5cbfdd8255d67d0558fe79c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 692–713.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean#L692).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4cf1ee9d88e62618593153621d96ac586c8b8f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
