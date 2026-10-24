# lequivProdOfLeftSplitExact'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45bf48e346dd183bd5e5824f2b9b3f86ff00d737d6162ff493cfe09ff7d28101",
  "kind": "def",
  "lexical_name": "lequivProdOfLeftSplitExact'",
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
  "slug": "lequivprodofleftsplitexact--25478d19c11850f7cc43d981",
  "source": {
    "blob": "52da90a1031a877b386de8e313bc46497590a349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 152,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25478d19c11850f7cc43d9812a3bea572cd2af0fda5386158c8dd66f5f1d6ef3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45bf48e346dd183bd5e5824f2b9b3f86ff00d737d6162ff493cfe09ff7d28101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def lequivProdOfLeftSplitExact' {f : M →ₗ[R] A} (hg : Function.Surjective g)
    (exac : LinearMap.range j = LinearMap.ker g) (h : f.comp j = LinearMap.id) : (A × B) ≃ₗ[R] M :=
  ((ShortComplex.Splitting.ofExactOfRetraction _
    (ShortComplex.Exact.moduleCat_of_range_eq_ker (ModuleCat.ofHom j)
    (ModuleCat.ofHom g) exac) (ModuleCat.ofHom f) (hom_ext h)
    (by simpa only [ModuleCat.epi_iff_surjective] using hg)).isoBinaryBiproduct ≪≫
    biprodIsoProd _ _).symm.toLinearEquiv

end universe_monomorphic

section universe_polymorphic

universe uA uM uB
variable {R : Type u} {A : Type uA} {M : Type uM} {B : Type uB}
variable [Ring R] [AddCommGroup A] [AddCommGroup B] [AddCommGroup M]
variable [Module R A] [Module R B] [Module R M]

variable {j : A →ₗ[R] M} {g : M →ₗ[R] B}

/-- The isomorphism `A × B ≃ₗ[R] M` coming from a right split exact sequence `0 ⟶ A ⟶ M ⟶ B ⟶ 0`
of modules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52da90a1031a877b386de8e313bc46497590a349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
