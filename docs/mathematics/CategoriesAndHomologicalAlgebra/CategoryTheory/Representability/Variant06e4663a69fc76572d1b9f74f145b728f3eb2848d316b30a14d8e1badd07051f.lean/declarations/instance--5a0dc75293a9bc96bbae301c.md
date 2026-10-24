# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e53eb024b5dfab293dcace1332801f47103e288faae9d365db32ded2bc9488c0",
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
  "slug": "instance--5a0dc75293a9bc96bbae301c",
  "source": {
    "blob": "4b974c2b544e1ec61ad486907a02c3418ca6eeee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a0dc75293a9bc96bbae301c278588bdbdf3a39a1ed8aa442f087b890cc6110a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e53eb024b5dfab293dcace1332801f47103e288faae9d365db32ded2bc9488c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Sheaf.IsLocallyInjective (yonedaGluedToSheaf hf) where
  equalizerSieve_mem := by
    rintro ⟨U⟩ (α β : U ⟶ _) h
    replace h : (yonedaGluedToSheaf hf).val.app _ α = (yonedaGluedToSheaf hf).val.app _ β := h
    have mem := grothendieckTopology_cover (glueData hf).openCover
    refine GrothendieckTopology.superset_covering _ ?_
      (zariskiTopology.intersection_covering (zariskiTopology.pullback_stable α mem)
        (zariskiTopology.pullback_stable β mem))
    rintro V (γ : _ ⟶ U) ⟨⟨W₁, a, _, ⟨i⟩, fac₁⟩, ⟨W₂, b, _, ⟨j⟩, fac₂⟩⟩
    change γ ≫ α = γ ≫ β
    replace h : (yonedaGluedToSheaf hf).val.app _ (γ ≫ α) =
        (yonedaGluedToSheaf hf).val.app _ (γ ≫ β) := by simp [h]
    rw [← fac₁, ← fac₂] at h ⊢
    apply comp_toGlued_eq
    simpa [Scheme.GlueData.openCover_obj, yonedaEquiv_naturality] using h

variable [Presheaf.IsLocallySurjective Scheme.zariskiTopology (Sigma.desc f)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b974c2b544e1ec61ad486907a02c3418ca6eeee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
