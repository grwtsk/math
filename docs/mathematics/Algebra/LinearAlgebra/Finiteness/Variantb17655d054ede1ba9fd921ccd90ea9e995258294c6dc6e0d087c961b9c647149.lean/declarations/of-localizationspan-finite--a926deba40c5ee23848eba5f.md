# of_localizationSpan_finite'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8a5894b575792148826cccb1c3478652b2e96ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b17655d054ede1ba9fd921ccd90ea9e995258294c6dc6e0d087c961b9c647149.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b6cf9c8-cfb0-cffa-15a0-b0d9bdf7fb45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:726b322f-14a4-a84f-9dc1-31e8ffdb3c99",
  "kind": "theorem",
  "lexical_name": "of_localizationSpan_finite'",
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
  "slug": "of-localizationspan-finite--a926deba40c5ee23848eba5f",
  "source": {
    "blob": "c8a5894b575792148826cccb1c3478652b2e96ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 193,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantb17655d054ede1ba9fd921ccd90ea9e995258294c6dc6e0d087c961b9c647149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a926deba40c5ee23848eba5ffcc3d1919074491fde3c58e7407dc9e5b88b9bf8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variantb17655d054ede1ba9fd921ccd90ea9e995258294c6dc6e0d087c961b9c647149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:726b322f-14a4-a84f-9dc1-31e8ffdb3c99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_localizationSpan_finite' (t : Finset R) (ht : Ideal.span (t : Set R) = ⊤)
    {Mₚ : ∀ (_ : t), Type*} [∀ (g : t), AddCommMonoid (Mₚ g)] [∀ (g : t), Module R (Mₚ g)]
    {Rₚ : ∀ (_ : t), Type*} [∀ (g : t), CommSemiring (Rₚ g)] [∀ (g : t), Algebra R (Rₚ g)]
    [∀ (g : t), IsLocalization.Away g.val (Rₚ g)]
    [∀ (g : t), Module (Rₚ g) (Mₚ g)] [∀ (g : t), IsScalarTower R (Rₚ g) (Mₚ g)]
    (f : ∀ (g : t), M →ₗ[R] Mₚ g) [∀ (g : t), IsLocalizedModule.Away g.val (f g)]
    (H : ∀ (g : t), Module.Finite (Rₚ g) (Mₚ g)) :
    Module.Finite R M := by
  classical
  constructor
  choose s₁ s₂ using (fun g ↦ (H g).1)
  let sf := fun x : t ↦
    IsLocalizedModule.finsetIntegerMultiple (Submonoid.powers x.val) (f x) (s₁ x)
  use t.attach.biUnion sf
  rw [Submodule.span_attach_biUnion, eq_top_iff]
  rintro x -
  refine Submodule.mem_of_span_eq_top_of_smul_pow_mem _ (t : Set R) ht _ (fun r ↦ ?_)
  set S : Submonoid R := Submonoid.powers r.val
  obtain ⟨⟨_, n₁, rfl⟩, hn₁⟩ := multiple_mem_span_of_mem_localization_span S (Rₚ r)
    (s₁ r : Set (Mₚ r)) (IsLocalizedModule.mk' (f r) x (1 : S)) (by rw [s₂ r]; trivial)
  rw [Submonoid.smul_def, ← IsLocalizedModule.mk'_smul, IsLocalizedModule.mk'_one] at hn₁
  obtain ⟨⟨_, n₂, rfl⟩, hn₂⟩ := IsLocalizedModule.smul_mem_finsetIntegerMultiple_span
    S (f r) _ (s₁ r) hn₁
  rw [Submonoid.smul_def] at hn₂
  use n₂ + n₁
  apply le_iSup (fun x : t ↦ Submodule.span R (sf x : Set M)) r
  rw [pow_add, mul_smul]
  exact hn₂

/--
If there exists a set `{ r }` of `R` that generates the unit ideal and such that `Mᵣ` is `Rᵣ`-finite
for each `r`, then `M` is a finite `R`-module.

General version for any modules `Mᵣ` and rings `Rᵣ` satisfying the correct universal properties.
See `Module.Finite.of_localizationSpan_finite` for the specialized version.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variantb17655d054ede1ba9fd921ccd90ea9e995258294c6dc6e0d087c961b9c647149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantb17655d054ede1ba9fd921ccd90ea9e995258294c6dc6e0d087c961b9c647149.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8a5894b575792148826cccb1c3478652b2e96ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
