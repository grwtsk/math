# adicCompletion.mul_nonZeroDivisor_mem_adicCompletionIntegers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "832efdce7053f304164f3c839e771c8d8626427a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 551,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1716ee68-a92b-0488-fcdd-ad1b7e88e11c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb280038-54ae-6f77-8143-c45256394bfe",
  "kind": "lemma",
  "lexical_name": "adicCompletion.mul_nonZeroDivisor_mem_adicCompletionIntegers",
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
  "slug": "adiccompletion-mul-nonzerodivisor-mem-adiccompletionintegers--fa32cffb92613ce8c92478dc",
  "source": {
    "blob": "832efdce7053f304164f3c839e771c8d8626427a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 551,
    "path": "GRWTSK/Algebra/AdicValuation/Variante6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa32cffb92613ce8c92478dcfc634f707acaa383c83198e7d81338a017f22fef",
  "verification": {
    "reference": "docs/verification/Algebra/AdicValuation/Variante6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb280038-54ae-6f77-8143-c45256394bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma adicCompletion.mul_nonZeroDivisor_mem_adicCompletionIntegers (v : HeightOneSpectrum R)
    (a : v.adicCompletion K) : ∃ b ∈ R⁰, a * b ∈ v.adicCompletionIntegers K := by
  by_cases ha : a ∈ v.adicCompletionIntegers K
  · use 1
    simp [ha, Submonoid.one_mem]
  · rw [notMem_adicCompletionIntegers] at ha
    -- Let the additive valuation of a be -d with d>0
    obtain ⟨d, hd⟩ : ∃ d : ℤ, Valued.v a = ofAdd d :=
      Option.ne_none_iff_exists'.mp <| (lt_trans zero_lt_one ha).ne'
    rw [hd, WithZero.one_lt_coe, ← ofAdd_zero, ofAdd_lt] at ha
    -- let ϖ be a uniformiser
    obtain ⟨ϖ, hϖ⟩ := intValuation_exists_uniformizer v
    have hϖ0 : ϖ ≠ 0 := by rintro rfl; simp at hϖ
    -- use ϖ^d
    refine ⟨ϖ^d.natAbs, pow_mem (mem_nonZeroDivisors_of_ne_zero hϖ0) _, ?_⟩
    -- now manually translate the goal (an inequality in ℤₘ₀) to an inequality in ℤ
    rw [mem_adicCompletionIntegers, algebraMap.coe_pow, map_mul, hd, map_pow,
      valuedAdicCompletion_eq_valuation, valuation_of_algebraMap, hϖ, ← WithZero.coe_pow,
      ← WithZero.coe_mul, WithZero.coe_le_one, ← toAdd_le, toAdd_mul, toAdd_ofAdd, toAdd_pow,
      toAdd_ofAdd, toAdd_one,
      show d.natAbs • (-1) = (d.natAbs : ℤ) • (-1) by simp only [nsmul_eq_mul,
        Int.natCast_natAbs, smul_eq_mul],
      ← Int.eq_natAbs_of_nonneg ha.le, smul_eq_mul]
    -- and now it's easy
    omega

end IsDedekindDomain.HeightOneSpectrum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AdicValuation/Variante6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AdicValuation/Variante6cda802d0882d5d4fc4f4856b92b382d18b7962e9d27c8d23b92716e39ff80b.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `832efdce7053f304164f3c839e771c8d8626427a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
