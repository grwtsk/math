# of_localizationSpan'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "984d576665a5a281ef0cd1e61755a2adc0891932",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ee48da2-3595-d447-a576-f444d547f339",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85e9e63d-a959-d221-e56e-2b0d64607137",
  "kind": "theorem",
  "lexical_name": "of_localizationSpan'",
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
  "slug": "of-localizationspan--2c9c5d76f11e586d069cc8c5",
  "source": {
    "blob": "984d576665a5a281ef0cd1e61755a2adc0891932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 112,
    "path": "GRWTSK/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c9c5d76f11e586d069cc8c5ec375a713cdf0bec7c59b0ff2f037df2959ece60",
  "verification": {
    "reference": "docs/verification/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85e9e63d-a959-d221-e56e-2b0d64607137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_localizationSpan' (t : Set R) (ht : Ideal.span t = ⊤)
    {Mₚ : ∀ (_ : t), Type*} [∀ (g : t), AddCommMonoid (Mₚ g)] [∀ (g : t), Module R (Mₚ g)]
    {Rₚ : ∀ (_ : t), Type u} [∀ (g : t), CommRing (Rₚ g)] [∀ (g : t), Algebra R (Rₚ g)]
    [h₁ : ∀ (g : t), IsLocalization.Away g.val (Rₚ g)]
    [∀ (g : t), Module (Rₚ g) (Mₚ g)] [∀ (g : t), IsScalarTower R (Rₚ g) (Mₚ g)]
    (f : ∀ (g : t), M →ₗ[R] Mₚ g) [h₂ : ∀ (g : t), IsLocalizedModule (Submonoid.powers g.val) (f g)]
    (H : ∀ (g : t), Module.Finite (Rₚ g) (Mₚ g)) :
    Module.Finite R M := by
  rw [Ideal.span_eq_top_iff_finite] at ht
  obtain ⟨t', hc, ht'⟩ := ht
  have (g : t') : IsLocalization.Away g.val (Rₚ ⟨g.val, hc g.property⟩) :=
    h₁ ⟨g.val, hc g.property⟩
  have (g : t') : IsLocalizedModule (Submonoid.powers g.val)
    ((fun g ↦ f ⟨g.val, hc g.property⟩) g) := h₂ ⟨g.val, hc g.property⟩
  apply of_localizationSpan_finite' t' ht' (fun g ↦ f ⟨g.val, hc g.property⟩)
    (fun g ↦ H ⟨g.val, hc g.property⟩)

/--
If there exists a finite set `{ r }` of `R` such that `Mᵣ` is `Rᵣ`-finite for each `r`,
then `M` is a finite `R`-module.

See `of_localizationSpan` for a version without the finite set assumption.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finiteness/Varianta4d890d73bbb0083d7ec3ffd8ae14056837eca61486e78df2b65f4d9fcd99bd3.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984d576665a5a281ef0cd1e61755a2adc0891932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
