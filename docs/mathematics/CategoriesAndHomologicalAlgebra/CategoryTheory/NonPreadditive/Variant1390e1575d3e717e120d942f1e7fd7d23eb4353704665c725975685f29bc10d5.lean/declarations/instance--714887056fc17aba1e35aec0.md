# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:064f281761696a6d3d0e7ef4991045413641cc6e6634d1fde9c17e0cf55dcae7",
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
  "slug": "instance--714887056fc17aba1e35aec0",
  "source": {
    "blob": "d08fb1dbb492fc33178802952368b8ad9af9c7e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:714887056fc17aba1e35aec0b08f3cb61211b080df133aa27e4b143f1aa915e0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:064f281761696a6d3d0e7ef4991045413641cc6e6634d1fde9c17e0cf55dcae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Epi (Abelian.factorThruImage f) :=
  let I := Abelian.image f
  let p := Abelian.factorThruImage f
  let i := kernel.ι (cokernel.π f)
  -- It will suffice to consider some g : I ⟶ R such that p ≫ g = 0 and show that g = 0.
  NormalMonoCategory.epi_of_zero_cancel
  _ fun R (g : I ⟶ R) (hpg : p ≫ g = 0) => by
  -- Since C is abelian, u := ker g ≫ i is the kernel of some morphism h.
  let u := kernel.ι g ≫ i
  haveI hu := normalMonoOfMono u
  let h := hu.g
  -- By hypothesis, p factors through the kernel of g via some t.
  obtain ⟨t, ht⟩ := kernel.lift' g p hpg
  have fh : f ≫ h = 0 :=
    calc
      f ≫ h = (p ≫ i) ≫ h := (Abelian.image.fac f).symm ▸ rfl
      _ = ((t ≫ kernel.ι g) ≫ i) ≫ h := ht ▸ rfl
      _ = t ≫ u ≫ h := by simp only [u, Category.assoc]
      _ = t ≫ 0 := hu.w ▸ rfl
      _ = 0 := HasZeroMorphisms.comp_zero _ _
  -- h factors through the cokernel of f via some l.
  obtain ⟨l, hl⟩ := cokernel.desc' f h fh
  have hih : i ≫ h = 0 :=
    calc
      i ≫ h = i ≫ cokernel.π f ≫ l := hl ▸ rfl
      _ = 0 ≫ l := by rw [← Category.assoc, kernel.condition]
      _ = 0 := zero_comp
  -- i factors through u = ker h via some s.
  obtain ⟨s, hs⟩ := NormalMono.lift' u i hih
  have hs' : (s ≫ kernel.ι g) ≫ i = 𝟙 I ≫ i := by rw [Category.assoc, hs, Category.id_comp]
  haveI : Epi (kernel.ι g) := epi_of_epi_fac ((cancel_mono _).1 hs')
  -- ker g is an epimorphism, but ker g ≫ g = 0 = ker g ≫ 0, so g = 0 as required.
  exact zero_of_epi_comp _ (kernel.condition g)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant1390e1575d3e717e120d942f1e7fd7d23eb4353704665c725975685f29bc10d5.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d08fb1dbb492fc33178802952368b8ad9af9c7e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
