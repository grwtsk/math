# summable_and_Lr_rpow_le_Lp_mul_Lq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a51ef7e20f031edb10a909dab7e2635871a819d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 681,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc9a9dbb-4aaf-4dba-542b-d1ab277aa3b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:212c2b64-1a27-383b-6448-a1c79792e8c5",
  "kind": "theorem",
  "lexical_name": "summable_and_Lr_rpow_le_Lp_mul_Lq_tsum",
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
  "slug": "summable-and-lr-rpow-le-lp-mul-lq-tsum--b4ed0a81f889a12bbf23dbf1",
  "source": {
    "blob": "a51ef7e20f031edb10a909dab7e2635871a819d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 681,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4ed0a81f889a12bbf23dbf1cbd0b23f13e3a7d87a348b6552484af2d7cdbea5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:212c2b64-1a27-383b-6448-a1c79792e8c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_and_Lr_rpow_le_Lp_mul_Lq_tsum {f g : ι → ℝ≥0} {p q r : ℝ}
    (hpqr : p.HolderTriple q r) (hf : Summable fun i => f i ^ p) (hg : Summable fun i => g i ^ q) :
    (Summable fun i => (f i * g i) ^ r) ∧
      ∑' i, (f i * g i) ^ r ≤ (∑' i, f i ^ p) ^ (r / p) * (∑' i, g i ^ q) ^ (r / q) := by
  have H₁ : ∀ s : Finset ι,
      ∑ i ∈ s, (f i * g i) ^ r ≤ (∑' i, f i ^ p) ^ (r / p) * (∑' i, g i ^ q) ^ (r / q) := by
    intro s
    obtain ⟨hp, hq, hr⟩ := hpqr.all_pos
    refine le_trans (Lr_rpow_le_Lp_mul_Lq s f g hpqr) (mul_le_mul ?_ ?_ bot_le bot_le)
    · gcongr
      exact hf.sum_le_tsum _ (fun _ _ => zero_le)
    · gcongr
      exact hg.sum_le_tsum _ (fun _ _ => zero_le)
  have bdd : BddAbove (Set.range fun s => ∑ i ∈ s, (f i * g i) ^ r) := by
    refine ⟨(∑' i, f i ^ p) ^ (r / p) * (∑' i, g i ^ q) ^ (r / q), ?_⟩
    rintro a ⟨s, rfl⟩
    exact H₁ s
  have H₂ : Summable _ := (hasSum_of_isLUB _ (isLUB_ciSup bdd)).summable
  exact ⟨H₂, H₂.tsum_le_of_sum_le H₁⟩

/-- **Hölder inequality**: the scalar product of two functions is bounded by the product of their
`L^p` and `L^q` norms when `p` and `q` are conjugate exponents. A version for `NNReal`-valued
functions. For an alternative version, convenient if the infinite sums are already expressed as
`p`-th powers, see `inner_le_Lp_mul_Lq_hasSum`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant6e7ae2ffeb3f74e9e67ac32d44a2c821536ad4b3b205ca8aaf5049e9fe7edf5a.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a51ef7e20f031edb10a909dab7e2635871a819d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
