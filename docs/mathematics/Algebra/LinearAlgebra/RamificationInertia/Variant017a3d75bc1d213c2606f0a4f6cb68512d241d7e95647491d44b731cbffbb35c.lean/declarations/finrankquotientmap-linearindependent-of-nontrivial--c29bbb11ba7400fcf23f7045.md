# FinrankQuotientMap.linearIndependent_of_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "418ceefcf4d9849fd851b34c138c5303e79a1b14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48541e54-8742-97c0-54f4-e53213e9ed51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fe16262-f4f9-9bba-4765-c78a5397dfdf",
  "kind": "theorem",
  "lexical_name": "FinrankQuotientMap.linearIndependent_of_nontrivial",
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
  "slug": "finrankquotientmap-linearindependent-of-nontrivial--c29bbb11ba7400fcf23f7045",
  "source": {
    "blob": "418ceefcf4d9849fd851b34c138c5303e79a1b14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 254,
    "path": "GRWTSK/Algebra/LinearAlgebra/RamificationInertia/Variant017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c29bbb11ba7400fcf23f70457e844591b6a1dad229fc83acea84de7073af22df",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RamificationInertia/Variant017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fe16262-f4f9-9bba-4765-c78a5397dfdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FinrankQuotientMap.linearIndependent_of_nontrivial [IsDomain R] [IsDedekindDomain R]
    (hRS : RingHom.ker (algebraMap R S) ≠ ⊤) (f : V'' →ₗ[R] V) (hf : Function.Injective f)
    (f' : V'' →ₗ[R] V') {ι : Type*} {b : ι → V''} (hb' : LinearIndependent S (f' ∘ b)) :
    LinearIndependent K (f ∘ b) := by
  contrapose! hb' with hb
  -- Informally, if we have a nontrivial linear dependence with coefficients `g` in `K`,
  -- then we can find a linear dependence with coefficients `I.Quotient.mk g'` in `R/I`,
  -- where `I = ker (algebraMap R S)`.
  -- We make use of the same principle but stay in `R` everywhere.
  simp only [linearIndependent_iff', not_forall] at hb ⊢
  obtain ⟨s, g, eq, j', hj's, hj'g⟩ := hb
  use s
  obtain ⟨a, hag, j, hjs, hgI⟩ := Ideal.exist_integer_multiples_not_mem hRS s g hj's hj'g
  choose g'' hg'' using hag
  letI := Classical.propDecidable
  let g' i := if h : i ∈ s then g'' i h else 0
  have hg' : ∀ i ∈ s, algebraMap _ _ (g' i) = a * g i := by
    intro i hi; exact (congr_arg _ (dif_pos hi)).trans (hg'' i hi)
  -- Because `R/I` is nontrivial, we can lift `g` to a nontrivial linear dependence in `S`.
  have hgI : algebraMap R S (g' j) ≠ 0 := by
    simp only [FractionalIdeal.mem_coeIdeal, not_exists, not_and'] at hgI
    exact hgI _ (hg' j hjs)
  refine ⟨fun i => algebraMap R S (g' i), ?_, j, hjs, hgI⟩
  have eq : f (∑ i in s, g' i • b i) = 0 := by
    rw [LinearMap.map_sum, ← smul_zero a, ← eq, Finset.smul_sum]
    refine Finset.sum_congr rfl ?_
    intro i hi
    rw [LinearMap.map_smul, ← IsScalarTower.algebraMap_smul K, hg' i hi, ← smul_assoc,
      smul_eq_mul, Function.comp_apply]
  simp only [IsScalarTower.algebraMap_smul, ← LinearMap.map_smul, ← LinearMap.map_sum,
    (f.map_eq_zero_iff hf).mp eq, LinearMap.map_zero, (· ∘ ·)]
#align ideal.finrank_quotient_map.linear_independent_of_nontrivial Ideal.FinrankQuotientMap.linearIndependent_of_nontrivial

open scoped Matrix

variable {K}

/-- If `b` mod `p` spans `S/p` as `R/p`-space, then `b` itself spans `Frac(S)` as `K`-space.

Here,
 * `p` is an ideal of `R` such that `R / p` is nontrivial
 * `K` is a field that has an embedding of `R` (in particular we can take `K = Frac(R)`)
 * `L` is a field extension of `K`
 * `S` is the integral closure of `R` in `L`

More precisely, we avoid quotients in this statement and instead require that `b ∪ pS` spans `S`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RamificationInertia/Variant017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RamificationInertia/Variant017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `418ceefcf4d9849fd851b34c138c5303e79a1b14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
