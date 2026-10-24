# exists_eventually_forall_measure_closedBall_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a01e563f3ab75cb9e86d1edd5be25f16ff8b657d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a099f316-301a-6275-6a7c-660a7b723051",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b12a32e8-c9ea-ba32-cdf5-a4b11cfcc626",
  "kind": "theorem",
  "lexical_name": "exists_eventually_forall_measure_closedBall_le_mul",
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
  "slug": "exists-eventually-forall-measure-closedball-le-mul--0f89a4ea17324296c8e93dc8",
  "source": {
    "blob": "a01e563f3ab75cb9e86d1edd5be25f16ff8b657d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 70,
    "path": "GRWTSK/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f89a4ea17324296c8e93dc87b17b6c6358f1c9c3ef8d6bfd4609f24a9776c2b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b12a32e8-c9ea-ba32-cdf5-a4b11cfcc626`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eventually_forall_measure_closedBall_le_mul (K : ℝ) :
    ∃ C : ℝ≥0, ∀ᶠ ε in 𝓝[>] 0, ∀ x, ∀ t ≤ K, μ (closedBall x (t * ε)) ≤ C * μ (closedBall x ε) := by
  let C := doublingConstant μ
  suffices ∀ n,
      ∀ᶠ ε in 𝓝[>] 0, ∀ x, μ (closedBall x ((2 : ℝ) ^ n * ε)) ≤ C ^ n * μ (closedBall x ε) by
    rcases pow_unbounded_of_one_lt K one_lt_two with ⟨n, hn⟩
    use C ^ n
    filter_upwards [eventually_mem_nhdsWithin, this n] with ε hε₀ hε x t ht
    rw [mem_Ioi] at hε₀
    grw [ht, hn, ENNReal.coe_pow]
    exact hε x
  intro n
  induction n with
  | zero => simp
  | succ n ihn =>
    replace ihn := eventually_nhdsGT_zero_mul_left (two_pos : 0 < (2 : ℝ)) ihn
    filter_upwards [ihn, eventually_measure_le_doublingConstant_mul μ] with ε hεn hε x
    grw [pow_succ, mul_assoc, hεn, hε, ← mul_assoc, pow_succ]

/-- A variant of `IsUnifLocDoublingMeasure.doublingConstant` which allows for scaling the
radius by values other than `2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a01e563f3ab75cb9e86d1edd5be25f16ff8b657d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
