# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ba1a88db5426ea1e945fc0a4c778790ab9534b3d4290bb154f85748258af18e",
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
  "slug": "instance--bf28f2f08a49ed09f05d9ad8",
  "source": {
    "blob": "240e58fdca7d553a768a8a718661ca2317d1623a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant650887cb5ebd1bc0786dc152fe5f180f675eea66f9584486ce173346dd705067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf28f2f08a49ed09f05d9ad8acfa54743d3b4010108510610806023a23daf4de",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant650887cb5ebd1bc0786dc152fe5f180f675eea66f9584486ce173346dd705067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ba1a88db5426ea1e945fc0a4c778790ab9534b3d4290bb154f85748258af18e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Epi (homologyCToK f g w) := by
  apply Pseudoelement.epi_of_pseudo_surjective
  intro a
  let b := kernel.ι (cokernel.desc f g w) a
  obtain ⟨c, hc⟩ : ∃ c, cokernel.π f c = b
  apply Pseudoelement.pseudo_surjective_of_epi (cokernel.π f)
  have : g c = 0 := by
    rw [show g = cokernel.π f ≫ cokernel.desc f g w by simp, Pseudoelement.comp_apply, hc]
    simp [← Pseudoelement.comp_apply]
  obtain ⟨d, hd⟩ : ∃ d, kernel.ι g d = c := by
    apply (Pseudoelement.pseudo_exact_of_exact exact_kernel_ι).2 _ this
  use cokernel.π (kernel.lift g f w) d
  apply_fun kernel.ι (cokernel.desc f g w)
  swap
  · apply Pseudoelement.pseudo_injective_of_mono
  simp only [← Pseudoelement.comp_apply, cokernel.π_desc, kernel.lift_ι]
  simp only [Pseudoelement.comp_apply, hd, hc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant650887cb5ebd1bc0786dc152fe5f180f675eea66f9584486ce173346dd705067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant650887cb5ebd1bc0786dc152fe5f180f675eea66f9584486ce173346dd705067.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `240e58fdca7d553a768a8a718661ca2317d1623a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
