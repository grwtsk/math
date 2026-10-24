# finiteController_response_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a8f54ca95ff97a84612966faa384c2ef23bcf58",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35c8130b1819b93b744c4e4cfc98fc063b856f2ce16e6fdf7d790a9f18bd3e05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:820f4252-47d1-d22a-cb6f-f2fec85c15ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c739992c-3014-4cd1-8d86-a6e45c2848a2",
  "kind": "theorem",
  "lexical_name": "finiteController_response_norm_sq",
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
  "slug": "finitecontroller-response-norm-sq--4cd6862fc4323bbcb80b5de6",
  "source": {
    "blob": "3a8f54ca95ff97a84612966faa384c2ef23bcf58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteControllerEnergy/Variant35c8130b1819b93b744c4e4cfc98fc063b856f2ce16e6fdf7d790a9f18bd3e05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cd6862fc4323bbcb80b5de689746c412e43ede093fc94419fad151c77435cd1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteControllerEnergy/Variant35c8130b1819b93b744c4e4cfc98fc063b856f2ce16e6fdf7d790a9f18bd3e05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c739992c-3014-4cd1-8d86-a6e45c2848a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteController_response_norm_sq (n : ℕ) (a : Fin n → ℝ)
    (ha : ∀ i, 0 < a i) (c : Fin n → ℝ) :
    ‖sourceOperator (finiteController n a ha c)‖ ^ 2 =
      ∑ i, ∑ j, c i * c j * sourceGram (a i) (a j) := by
  rw [norm_sq_eq_re_inner (𝕜 := ℂ)]
  change (inner ℂ _ _).re = _
  simp only [finiteController, map_sum, map_smul, sum_inner, inner_sum,
    inner_smul_left, inner_smul_right, Complex.conj_ofReal, Finset.mul_sum, Complex.re_sum]
  simp_rw [show ∀ i j : Fin n,
      inner ℂ (sourceOperator (controller (a i) (ha i)))
        (sourceOperator (controller (a j) (ha j))) = (sourceGram (a i) (a j) : ℂ) from
    fun i j => response_inner_double (a i) (a j) (ha i) (ha j)]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  ring

/-- Exact full source energy of every finite signed exponential controller at every real alpha. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteControllerEnergy/Variant35c8130b1819b93b744c4e4cfc98fc063b856f2ce16e6fdf7d790a9f18bd3e05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteControllerEnergy/Variant35c8130b1819b93b744c4e4cfc98fc063b856f2ce16e6fdf7d790a9f18bd3e05.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a8f54ca95ff97a84612966faa384c2ef23bcf58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
