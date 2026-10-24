# Precoverage.toPretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a436c20f39e31890c92fdd942fd2e2ed98cab6a3dfa49e6b65699856cb503c7",
  "kind": "def",
  "lexical_name": "Precoverage.toPretopology",
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
  "slug": "precoverage-topretopology--d2d50feeb9d2e89c10970bb1",
  "source": {
    "blob": "924071d8834ed85cdb5c7d0fa69aa864a5f3f783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 295,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantdc6575f80b98206a9f3fad78002838f08e5a029721a1d405abb90ffbc75b693c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2d50feeb9d2e89c10970bb147def52dbc2d7f1737a8da01b7264fb9dd19a174",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantdc6575f80b98206a9f3fad78002838f08e5a029721a1d405abb90ffbc75b693c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a436c20f39e31890c92fdd942fd2e2ed98cab6a3dfa49e6b65699856cb503c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Precoverage.toPretopology [Limits.HasPullbacks C] (J : Precoverage C) [J.HasIsos]
    [J.IsStableUnderBaseChange] [J.IsStableUnderComposition] : Pretopology C where
  __ := J
  has_isos X Y f hf := mem_coverings_of_isIso f
  pullbacks X Y f R hR := J.pullbackArrows_mem f hR
  transitive X R Ti hR hTi := by
    obtain ⟨ι, Z, g, rfl⟩ := R.exists_eq_ofArrows
    choose κ W p hp using fun ⦃Y⦄ (f : Y ⟶ X) hf ↦ (Ti f hf).exists_eq_ofArrows
    have : (Presieve.ofArrows Z g).bind Ti =
        .ofArrows (fun ij : Σ i, κ (g i) ⟨i⟩ ↦ W _ _ ij.2) (fun ij ↦ p _ _ ij.2 ≫ g ij.1) := by
      apply le_antisymm
      · rintro T u ⟨S, v, w, ⟨i⟩, hv, rfl⟩
        rw [hp] at hv
        obtain ⟨j⟩ := hv
        exact .mk <| Sigma.mk (β := fun i : ι ↦ κ (g i) ⟨i⟩) i j
      · rintro T u ⟨ij⟩
        use Z ij.1, p (g ij.1) ⟨ij.1⟩ ij.2, g ij.1, ⟨ij.1⟩
        rw [hp]
        exact ⟨⟨_⟩, rfl⟩
    rw [this]
    refine J.comp_mem_coverings (Y := fun (i : ι) (j : κ (g i) ⟨i⟩) ↦ W _ _ j)
      (g := fun i j ↦ p _ _ j) _ hR fun i ↦ ?_
    rw [← hp]
    exact hTi _ _

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantdc6575f80b98206a9f3fad78002838f08e5a029721a1d405abb90ffbc75b693c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantdc6575f80b98206a9f3fad78002838f08e5a029721a1d405abb90ffbc75b693c.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924071d8834ed85cdb5c7d0fa69aa864a5f3f783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
