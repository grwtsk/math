# Algebra.IsAlgebraic.algHomEmbeddingOfSplits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4919cdbfb955c799b04eb5cf935a568d20abce3e9484bb4fc620bc5d52b80908",
  "kind": "def",
  "lexical_name": "Algebra.IsAlgebraic.algHomEmbeddingOfSplits",
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
  "slug": "algebra-isalgebraic-alghomembeddingofsplits--6862ffc1ca3ebd0584ce92a7",
  "source": {
    "blob": "681d6352d9d63e87784f65d5786913f0b3b8dd00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 208,
    "path": "GRWTSK/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6862ffc1ca3ebd0584ce92a704ef39184cdd0546d48e833e9e92186803637d0a",
  "verification": {
    "reference": "docs/verification/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4919cdbfb955c799b04eb5cf935a568d20abce3e9484bb4fc620bc5d52b80908`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Algebra.IsAlgebraic.algHomEmbeddingOfSplits [Algebra.IsAlgebraic F K]
    (h : ∀ x : K, (minpoly F x).Splits (algebraMap F L)) (L' : Type*) [Field L'] [Algebra F L'] :
    (K →ₐ[F] L') ↪ (K →ₐ[F] L) :=
  let φ : ↑(⨆ x : K, IntermediateField.adjoin F ((minpoly F x).rootSet L')) →ₐ[F] L :=
    Nonempty.some <| by
      rw [← gc.l_iSup]
      refine nonempty_algHom_adjoin_of_splits fun x hx ↦ ?_
      obtain ⟨y, hx⟩ := Set.mem_iUnion.mp hx
      refine ⟨isAlgebraic_iff_isIntegral.mp (isAlgebraic_of_mem_rootSet hx), ?_⟩
      by_cases iy : IsIntegral F y
      · exact splits_of_splits_of_dvd _ (minpoly.ne_zero iy)
          (h y) (minpoly.dvd F x (mem_rootSet.mp hx).2)
      · simp [minpoly.eq_zero iy] at hx
  let φ' := (φ.comp <| inclusion normalClosure_le_iSup_adjoin)
  { toFun := φ'.comp ∘ (normalClosure.algHomEquiv F K L').symm
    inj' := fun _ _ h ↦ (normalClosure.algHomEquiv F K L').symm.injective <| by
      rw [DFunLike.ext'_iff] at h ⊢
      exact φ'.injective.comp_left h }

namespace IntermediateField

variable (K K' : IntermediateField F L)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `681d6352d9d63e87784f65d5786913f0b3b8dd00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
