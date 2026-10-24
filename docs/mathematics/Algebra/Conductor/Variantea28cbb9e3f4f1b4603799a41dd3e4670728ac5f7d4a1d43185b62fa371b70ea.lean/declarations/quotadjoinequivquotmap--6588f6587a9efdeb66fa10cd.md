# quotAdjoinEquivQuotMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b88e660eb98a6803f7875afcb159840a49c96849d62af64d42889b91f2e7f45b",
  "kind": "def",
  "lexical_name": "quotAdjoinEquivQuotMap",
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
  "slug": "quotadjoinequivquotmap--6588f6587a9efdeb66fa10cd",
  "source": {
    "blob": "29a07561d840fab53bbcafae25f3cb79a86396ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 157,
    "path": "GRWTSK/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6588f6587a9efdeb66fa10cdff26e374568f9ea46e7a9ac0c85bea452b130544",
  "verification": {
    "reference": "docs/verification/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b88e660eb98a6803f7875afcb159840a49c96849d62af64d42889b91f2e7f45b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotAdjoinEquivQuotMap (hx : (conductor R x).comap (algebraMap R S) ⊔ I = ⊤)
    (h_alg : Function.Injective (algebraMap R<x> S)) :
    R<x> ⧸ I.map (algebraMap R R<x>) ≃+* S ⧸ I.map (algebraMap R S) := by
  let f : R<x> ⧸ I.map (algebraMap R R<x>) →+* S ⧸ I.map (algebraMap R S) :=
    (Ideal.Quotient.lift (I.map (algebraMap R R<x>))
      ((Ideal.Quotient.mk (I.map (algebraMap R S))).comp (algebraMap R<x> S)) (fun r hr => by
      have : algebraMap R S = (algebraMap R<x> S).comp (algebraMap R R<x>) := by ext; rfl
      rw [RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem, this, ← Ideal.map_map]
      exact Ideal.mem_map_of_mem _ hr))
  refine RingEquiv.ofBijective f ⟨?_, ?_⟩
  · --the kernel of the map is clearly `(I * S) ∩ R<x>`. To get injectivity, we need to show that
    --this is contained in `I * R<x>`, which is the content of the previous lemma.
    refine RingHom.lift_injective_of_ker_le_ideal _ _ fun u hu => ?_
    rwa [RingHom.mem_ker, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem, ← Ideal.mem_comap,
      comap_map_eq_map_adjoin_of_coprime_conductor hx h_alg] at hu
  · -- Surjectivity follows from the surjectivity of the canonical map `R<x> → S ⧸ (I * S)`,
    -- which in turn follows from the fact that `I * S + (conductor R x) = S`.
    refine Ideal.Quotient.lift_surjective_of_surjective _ _ fun y => ?_
    obtain ⟨z, hz⟩ := Ideal.Quotient.mk_surjective y
    have : z ∈ conductor R x ⊔ I.map (algebraMap R S) := by
      suffices conductor R x ⊔ I.map (algebraMap R S) = ⊤ by simp only [this, Submodule.mem_top]
      rw [Ideal.eq_top_iff_one] at hx ⊢
      replace hx := Ideal.mem_map_of_mem (algebraMap R S) hx
      rw [Ideal.map_sup, map_one] at hx
      exact (sup_le_sup
        (show ((conductor R x).comap (algebraMap R S)).map (algebraMap R S) ≤ conductor R x
          from Ideal.map_comap_le)
          (le_refl (I.map (algebraMap R S)))) hx
    rw [← Ideal.mem_quotient_iff_mem_sup, hz, Ideal.mem_map_iff_of_surjective] at this
    · obtain ⟨u, hu, hu'⟩ := this
      use ⟨u, conductor_subset_adjoin hu⟩
      simp only [← hu']
      rfl
    · exact Ideal.Quotient.mk_surjective

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29a07561d840fab53bbcafae25f3cb79a86396ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
