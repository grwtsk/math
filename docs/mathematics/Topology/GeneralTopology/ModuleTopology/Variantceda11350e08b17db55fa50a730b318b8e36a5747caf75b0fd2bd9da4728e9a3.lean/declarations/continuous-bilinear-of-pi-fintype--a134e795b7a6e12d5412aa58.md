# continuous_bilinear_of_pi_fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:382b1275-e394-a9ca-ded6-e9c729bb93a0",
  "kind": "theorem",
  "lexical_name": "continuous_bilinear_of_pi_fintype",
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
  "slug": "continuous-bilinear-of-pi-fintype--a134e795b7a6e12d5412aa58",
  "source": {
    "blob": "2b3d3d1d7e9a8e34bd233cfa61203aac03cfa590",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 621,
    "path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a134e795b7a6e12d5412aa589d4be509bb6b31963237854adb5d2241d86ccf92",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:382b1275-e394-a9ca-ded6-e9c729bb93a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_bilinear_of_pi_fintype (ι : Type*) [Finite ι]
    (bil : (ι → R) →ₗ[R] B →ₗ[R] C) : Continuous (fun ab ↦ bil ab.1 ab.2 : ((ι → R) × B → C)) := by
  classical
  cases nonempty_fintype ι
  -- The map in question, `(f, b) ↦ bil f b`, is easily checked to be equal to
  -- `(f, b) ↦ ∑ᵢ f i • bil (single i 1) b` where `single i 1 : ι → R` sends `i` to `1` and
  -- everything else to `0`.
  have h : (fun fb ↦ bil fb.1 fb.2 : ((ι → R) × B → C)) =
      (fun fb ↦ ∑ i, ((fb.1 i) • (bil (Finsupp.single i 1) fb.2) : C)) := by
    ext ⟨f, b⟩
    nth_rw 1 [← Finset.univ_sum_single f]
    simp_rw [← Finsupp.single_eq_pi_single, map_sum, LinearMap.coe_sum, Finset.sum_apply]
    refine Finset.sum_congr rfl (fun x _ ↦ ?_)
    rw [← Finsupp.smul_single_one]
    push_cast
    simp
  rw [h]
  -- But this map is obviously continuous, because for a fixed `i`, `bil (single i 1)` is
  -- linear and thus continuous, and scalar multiplication and finite sums are continuous
  have : ContinuousAdd C := toContinuousAdd R C
  fun_prop

end semiring

section ring

variable {R : Type*} [TopologicalSpace R] [CommRing R] [IsTopologicalRing R]
variable {A : Type*} [AddCommGroup A] [Module R A] [aA : TopologicalSpace A] [IsModuleTopology R A]
variable {B : Type*} [AddCommGroup B] [Module R B] [aB : TopologicalSpace B] [IsModuleTopology R B]
variable {C : Type*} [AddCommGroup C] [Module R C] [aC : TopologicalSpace C] [IsModuleTopology R C]

/--
If `A`, `B` and `C` have the module topology, and if furthermore `A` is a finite `R`-module,
then any bilinear map `A × B → C` is automatically continuous
-/
@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b3d3d1d7e9a8e34bd233cfa61203aac03cfa590` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
