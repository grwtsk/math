# condExp_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3d1ba56995da5fa4545c82b2bbb29f86a48cb31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 434,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cd0b49deb2c31885434c25c92610eec9ae77d361759a2249e834237d484f4e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35a7a727-9586-873a-2196-ce12ddfc517d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c44fda8e-4e29-9781-09b4-264309f734af",
  "kind": "theorem",
  "lexical_name": "condExp_tsum",
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
  "slug": "condexp-tsum--a42d7a5bfc82b034159a8912",
  "source": {
    "blob": "a3d1ba56995da5fa4545c82b2bbb29f86a48cb31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 434,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant6cd0b49deb2c31885434c25c92610eec9ae77d361759a2249e834237d484f4e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a42d7a5bfc82b034159a89124eed29131c11b5edc43d61e2c5ab3dece82894b2",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant6cd0b49deb2c31885434c25c92610eec9ae77d361759a2249e834237d484f4e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c44fda8e-4e29-9781-09b4-264309f734af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_tsum [CompleteSpace E]
    {ι : Type*} [Countable ι] {f : ι → α → E} (hf : ∀ i, AEStronglyMeasurable (f i) μ)
    (hf' : ∑' i, ∫⁻ a, ‖f i a‖ₑ ∂μ ≠ ∞) :
    μ[fun a ↦ ∑' i, f i a | m] =ᵐ[μ] fun a ↦ ∑' i, μ[f i | m] a := by
  by_cases hm : m ≤ m₀; swap
  · simp only [condExp_of_not_le hm, Pi.zero_apply, tsum_zero]
    exact ae_eq_rfl
  by_cases hμm : SigmaFinite (μ.trim hm); swap
  · simp only [condExp_of_not_sigmaFinite hm hμm, Pi.zero_apply, tsum_zero]
    exact ae_eq_rfl
  grw [condExp_ae_eq_condExpL1 hm]
  have A : ∀ᵐ a ∂μ, ∀ i, μ[f i | m] a = condExpL1 hm μ (f i) a :=
    ae_all_iff.2 (fun i ↦ condExp_ae_eq_condExpL1 hm _)
  have B : ∑' (n : ι), ‖condExpL1 hm μ (f n)‖ₑ ≠ ∞ := by
    apply (lt_of_le_of_lt ?_ hf'.lt_top).ne
    gcongr with i
    exact (enorm_setToFun_le _ (by simp)).trans_eq (by simp)
  have C := coeFn_tsum (f := fun i ↦ condExpL1 hm μ (f i)) B
  filter_upwards [A, C] with a ha h'a
  simp_all [condExpL1, setToFun_tsum]

variable [CompleteSpace E]

/-- If two sequences of functions have a.e. equal conditional expectations at each step, converge
and verify dominated convergence hypotheses, then the conditional expectations of their limits are
a.e. equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant6cd0b49deb2c31885434c25c92610eec9ae77d361759a2249e834237d484f4e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant6cd0b49deb2c31885434c25c92610eec9ae77d361759a2249e834237d484f4e2.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d1ba56995da5fa4545c82b2bbb29f86a48cb31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
