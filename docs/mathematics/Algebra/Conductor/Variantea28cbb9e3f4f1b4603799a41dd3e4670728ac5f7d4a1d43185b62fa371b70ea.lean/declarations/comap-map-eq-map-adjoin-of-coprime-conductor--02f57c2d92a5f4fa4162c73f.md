# comap_map_eq_map_adjoin_of_coprime_conductor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29a07561d840fab53bbcafae25f3cb79a86396ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:772e1ea4-4c99-c6f6-b163-2c76b3778d55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:896551c0-01c5-f53b-21d0-10d38b61b51e",
  "kind": "theorem",
  "lexical_name": "comap_map_eq_map_adjoin_of_coprime_conductor",
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
  "slug": "comap-map-eq-map-adjoin-of-coprime-conductor--02f57c2d92a5f4fa4162c73f",
  "source": {
    "blob": "29a07561d840fab53bbcafae25f3cb79a86396ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 120,
    "path": "GRWTSK/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02f57c2d92a5f4fa4162c73f9363061b2fab5f79e25c09ebcdd2f491406ea1ac",
  "verification": {
    "reference": "docs/verification/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:896551c0-01c5-f53b-21d0-10d38b61b51e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_map_eq_map_adjoin_of_coprime_conductor
    (hx : (conductor R x).comap (algebraMap R S) ⊔ I = ⊤)
    (h_alg : Function.Injective (algebraMap R<x> S)) :
    (I.map (algebraMap R S)).comap (algebraMap R<x> S) = I.map (algebraMap R R<x>) := by
  apply le_antisymm
  · -- This is adapted from [Neukirch1992]. Let `C = (conductor R x)`. The idea of the proof
    -- is that since `I` and `C ∩ R` are coprime, we have
    -- `(I * S) ∩ R<x> ⊆ (I + C) * ((I * S) ∩ R<x>) ⊆ I * R<x> + I * C * S ⊆ I * R<x>`.
    intro y hy
    obtain ⟨z, hz⟩ := y
    obtain ⟨p, hp, q, hq, hpq⟩ := Submodule.mem_sup.mp ((Ideal.eq_top_iff_one _).mp hx)
    have temp : algebraMap R S p * z + algebraMap R S q * z = z := by
      simp only [← add_mul, ← map_add (algebraMap R S), hpq, map_one, one_mul]
    suffices z ∈ algebraMap R<x> S '' I.map (algebraMap R R<x>) ↔
        (⟨z, hz⟩ : R<x>) ∈ I.map (algebraMap R R<x>) by
      rw [← this, ← temp]
      obtain ⟨a, ha⟩ := (Set.mem_image _ _ _).mp (prod_mem_ideal_map_of_mem_conductor hp
          (show z ∈ I.map (algebraMap R S) by rwa [Ideal.mem_comap] at hy))
      use a + algebraMap R R<x> q * ⟨z, hz⟩
      refine ⟨Ideal.add_mem (I.map (algebraMap R R<x>)) ha.left ?_, by
          simp only [ha.right, map_add, map_mul, add_right_inj]; rfl⟩
      rw [mul_comm]
      exact Ideal.mul_mem_left (I.map (algebraMap R R<x>)) _ (Ideal.mem_map_of_mem _ hq)
    refine ⟨fun h => ?_,
      fun h => (Set.mem_image _ _ _).mpr (Exists.intro ⟨z, hz⟩ ⟨by simp [h], rfl⟩)⟩
    obtain ⟨x₁, hx₁, hx₂⟩ := (Set.mem_image _ _ _).mp h
    have : x₁ = ⟨z, hz⟩ := by
      apply h_alg
      simp only [hx₂, algebraMap_eq_smul_one]
      rw [Submonoid.mk_smul, smul_eq_mul, mul_one]
    rwa [← this]
  · -- The converse inclusion is trivial
    rw [IsScalarTower.algebraMap_eq R R<x> S, ← Ideal.map_map]
    apply Ideal.le_comap_map

/-- The canonical morphism of rings from `R<x> ⧸ (I*R<x>)` to `S ⧸ (I*S)` is an isomorphism
when `I` and `(conductor R x) ∩ R` are coprime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Conductor/Variantea28cbb9e3f4f1b4603799a41dd3e4670728ac5f7d4a1d43185b62fa371b70ea.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29a07561d840fab53bbcafae25f3cb79a86396ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
