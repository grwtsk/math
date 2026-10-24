# summable_norm_weierstrassFactor_div_sub_one_of_summable_inv_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c490084d40450ccffa6d94e8ad3e2e1451e69a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 383,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9383d3f3-b287-0b5c-2059-a71a22f0b0fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f6eef03-094f-14ca-d146-ce3123d99794",
  "kind": "lemma",
  "lexical_name": "summable_norm_weierstrassFactor_div_sub_one_of_summable_inv_pow",
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
  "slug": "summable-norm-weierstrassfactor-div-sub-one-of-summable-inv-pow--1ea194972abfbb21f648da76",
  "source": {
    "blob": "9c490084d40450ccffa6d94e8ad3e2e1451e69a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 383,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ea194972abfbb21f648da76a5e59295372b2feeda663b1bd68803500795e2b0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f6eef03-094f-14ca-d146-ce3123d99794`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_norm_weierstrassFactor_div_sub_one_of_summable_inv_pow {m : ℕ} {a : ℕ → ℂ}
    (h_sum : Summable (fun n : ℕ => ‖a n‖⁻¹ ^ (m + 1))) (h_nonzero : ∀ n, a n ≠ 0) (z : ℂ) :
    Summable (fun n : ℕ ↦ ‖weierstrassFactor m (z / a n) - 1‖) := by
  refine Summable.of_norm_bounded_eventually_nat
    (summable_scaled_bound_of_summable_inv_pow h_sum ‖z‖ (norm_nonneg z)) ?_
  filter_upwards
    [eventually_le_norm_div_two_of_summable_inv_pow h_sum h_nonzero ‖z‖ (norm_nonneg z)]
    with n hn
  simpa [Real.norm_eq_abs, abs_of_nonneg (norm_nonneg _)] using
    norm_weierstrassFactor_div_sub_one_le_pow_div (m := m) (a := a n) (z := z) hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c490084d40450ccffa6d94e8ad3e2e1451e69a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
