# deriv_binEntropy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0caac3f1d0d7d540bed1425284e14dde2b19dedc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f37318ce-5bfd-6694-f061-fca13ba0838d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f11d7f8-da19-6ba5-e70e-284b9e0d0eef",
  "kind": "lemma",
  "lexical_name": "deriv_binEntropy",
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
  "slug": "deriv-binentropy--1c5c180ee85beac7b6252738",
  "source": {
    "blob": "0caac3f1d0d7d540bed1425284e14dde2b19dedc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 185,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c5c180ee85beac7b6252738b84a38a71ef74d972984c11b7a7f9ae85a4e7f4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f11d7f8-da19-6ba5-e70e-284b9e0d0eef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma deriv_binEntropy (p : ℝ) : deriv binEntropy p = log (1 - p) - log p := by
  by_cases hp : p ≠ 0 ∧ p ≠ 1
  · obtain ⟨hp₀, hp₁⟩ := hp
    rw [ne_comm, ← sub_ne_zero] at hp₁
    rw [binEntropy_eq_negMulLog_add_negMulLog_one_sub', deriv_add, deriv_comp_const_sub,
      deriv_negMulLog hp₀, deriv_negMulLog hp₁]
    · ring
    all_goals fun_prop (disch := assumption)
  -- pathological case where `deriv = 0` since `binEntropy` is not differentiable there
  · rw [deriv_zero_of_not_differentiableAt (differentiableAt_binEntropy_iff_ne_zero_one.not.2 hp)]
    push_neg at hp
    obtain rfl | rfl := hp <;> simp

/-! ### `q`-ary entropy -/

/-- Shannon q-ary Entropy function (measured in Nats, i.e., using natural logs).

It's the Shannon entropy of a random variable with possible outcomes {1, ..., q}
where outcome `1` has probability `1 - p` and all other outcomes are equally likely.

The usual domain of definition is p ∈ [0,1], i.e., input is a probability.

This is a generalization of the binary entropy function `binEntropy`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantedbd99b656f57fa5d861612695e2e91db4e81319b1f775670baffa7f351a6d57.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0caac3f1d0d7d540bed1425284e14dde2b19dedc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
