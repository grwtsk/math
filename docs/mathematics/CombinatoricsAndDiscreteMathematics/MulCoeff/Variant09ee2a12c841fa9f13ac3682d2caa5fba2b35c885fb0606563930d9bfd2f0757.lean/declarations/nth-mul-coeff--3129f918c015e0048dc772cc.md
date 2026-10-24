# nth_mul_coeff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32a1398f-866b-fec7-51e6-1c9c2a8fbb38",
  "kind": "theorem",
  "lexical_name": "nth_mul_coeff'",
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
  "slug": "nth-mul-coeff--3129f918c015e0048dc772cc",
  "source": {
    "blob": "3ef85b6119898c9be55488ff87f3322723b9b228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 271,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3129f918c015e0048dc772ccd3fd23e97ca1c7c1f1aa9fbb9e8c40ded197c99d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32a1398f-866b-fec7-51e6-1c9c2a8fbb38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nth_mul_coeff' (n : ℕ) :
    ∃ f : TruncatedWittVector p (n + 1) k → TruncatedWittVector p (n + 1) k → k,
    ∀ x y : 𝕎 k, f (truncateFun (n + 1) x) (truncateFun (n + 1) y) =
      (x * y).coeff (n + 1) - y.coeff (n + 1) * x.coeff 0 ^ p ^ (n + 1) -
        x.coeff (n + 1) * y.coeff 0 ^ p ^ (n + 1) := by
  simp only [← peval_polyOfInterest']
  obtain ⟨f₀, hf₀⟩ := exists_restrict_to_vars k (polyOfInterest_vars p n)
  have : ∀ (a : Multiset (Fin 2)) (b : Multiset ℕ), a ×ˢ b = a.product b := fun a b => rfl
  let f : TruncatedWittVector p (n + 1) k → TruncatedWittVector p (n + 1) k → k := by
    intro x y
    apply f₀
    rintro ⟨a, ha⟩
    apply Function.uncurry ![x, y]
    simp_rw [product_val, this, Multiset.mem_product, mem_univ_val, true_and_iff, range_val,
      Multiset.range_succ, Multiset.mem_cons, Multiset.mem_range] at ha
    refine' ⟨a.fst, ⟨a.snd, _⟩⟩
    cases' ha with ha ha <;> linarith only [ha]
  use f
  intro x y
  dsimp [peval]
  rw [← hf₀]
  congr
  ext a
  cases' a with a ha
  cases' a with i m
  fin_cases i <;> rfl -- surely this case split is not necessary
#align witt_vector.nth_mul_coeff' WittVector.nth_mul_coeff'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ef85b6119898c9be55488ff87f3322723b9b228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
