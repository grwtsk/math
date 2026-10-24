# finite_intermediateField_of_exists_primitive_element

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:399a38cf-06e7-e23b-0f1b-55f0c2bd85cc",
  "kind": "theorem",
  "lexical_name": "finite_intermediateField_of_exists_primitive_element",
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
  "slug": "finite-intermediatefield-of-exists-primitive-element--7c1ded21df3895c439c46918",
  "source": {
    "blob": "2b9546978513fabf1ef67e65f1e08c1933913002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 311,
    "path": "GRWTSK/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c1ded21df3895c439c4691810d829b9051ebed81bd02d39257a4a2a383e0647",
  "verification": {
    "reference": "docs/verification/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:399a38cf-06e7-e23b-0f1b-55f0c2bd85cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_intermediateField_of_exists_primitive_element [Algebra.IsAlgebraic F E]
    (h : ∃ α : E, F⟮α⟯ = ⊤) : Finite (IntermediateField F E) := by
  haveI := FiniteDimensional.of_exists_primitive_element F E h
  obtain ⟨α, hprim⟩ := h
  -- Let `f` be the minimal polynomial of `α ∈ E` over `F`
  let f : F[X] := minpoly F α
  let G := { g : E[X] // g.Monic ∧ g ∣ f.map (algebraMap F E) }
  -- Then `f` has only finitely many monic factors
  have hfin : Finite G := @Finite.of_fintype _ <| fintypeSubtypeMonicDvd
    (f.map (algebraMap F E)) <| map_ne_zero (minpoly.ne_zero_of_finite F α)
  -- If `K` is an intermediate field of `E/F`, let `g` be the minimal polynomial of `α` over `K`
  -- which is a monic factor of `f`
  let g : IntermediateField F E → G := fun K ↦
    ⟨(minpoly K α).map (algebraMap K E), (minpoly.monic <| .of_finite K α).map _, by
      convert Polynomial.map_dvd (algebraMap K E) (minpoly.dvd_map_of_isScalarTower F K α)
      rw [Polynomial.map_map]; rfl⟩
  -- The map `K ↦ g` is injective
  have hinj : Function.Injective g := fun K K' heq ↦ by
    rw [Subtype.mk.injEq] at heq
    apply_fun fun f : E[X] ↦ adjoin F (f.coeffs : Set E) at heq
    simpa only [adjoin_minpoly_coeff_of_exists_primitive_element F hprim] using heq
  -- Therefore there are only finitely many intermediate fields
  exact Finite.of_injective g hinj

/-- **Steinitz theorem**: an algebraic extension `E` of `F` has a
  primitive element (i.e. there is an `α ∈ E` such that `F⟮α⟯ = (⊤ : Subalgebra F E)`)
  if and only if there exist only finitely many intermediate fields between `E` and `F`. -/
@[stacks 030N "Equivalence of (1) & (2)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b9546978513fabf1ef67e65f1e08c1933913002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
