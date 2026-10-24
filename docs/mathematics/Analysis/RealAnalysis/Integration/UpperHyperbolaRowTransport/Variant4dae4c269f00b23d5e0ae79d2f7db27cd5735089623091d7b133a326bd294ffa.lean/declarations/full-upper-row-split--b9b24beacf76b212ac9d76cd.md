# full_upper_row_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d3021f74f32433d21f4bd0b5526556bb0580cc2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e69407a5-13b5-f074-45b8-481a95ca1719",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acd3b82b-cf91-2f3e-f367-1897b8d9a686",
  "kind": "theorem",
  "lexical_name": "full_upper_row_split",
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
  "slug": "full-upper-row-split--b9b24beacf76b212ac9d76cd",
  "source": {
    "blob": "7d3021f74f32433d21f4bd0b5526556bb0580cc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9b24beacf76b212ac9d76cd804e26509407b850316fac8c10cb98a26f620fd0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acd3b82b-cf91-2f3e-f367-1897b8d9a686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_upper_row_split (N i : ℕ) (F : ℕ → ℝ) (hi : i ∈ Ioc (N / 2) N) :
    (∑ j ∈ Ioc (N / 2) N, (ArithmeticFunction.moebius j : ℝ) * F (i * max i j)) =
      F (i ^ 2) * (∑ j ∈ Ioc (N / 2) i, (ArithmeticFunction.moebius j : ℝ)) +
        ∑ j ∈ Ioc i N, (ArithmeticFunction.moebius j : ℝ) * F (i * j) := by
  classical
  have hl : (Ioc (N / 2) N).filter (fun j : ℕ ↦ j ≤ i) = Ioc (N / 2) i := by
    ext j
    simp only [mem_filter, mem_Ioc]
    have hi' := mem_Ioc.mp hi
    omega
  have hr : (Ioc (N / 2) N).filter (fun j : ℕ ↦ ¬j ≤ i) = Ioc i N := by
    ext j
    simp only [mem_filter, mem_Ioc]
    have hi' := mem_Ioc.mp hi
    omega
  rw [← sum_filter_add_sum_filter_not (Ioc (N / 2) N) (fun j : ℕ ↦ j ≤ i)
    (fun j ↦ (ArithmeticFunction.moebius j : ℝ) * F (i * max i j)), hl, hr]
  congr 1
  · calc
      _ = ∑ j ∈ Ioc (N / 2) i, F (i ^ 2) * (ArithmeticFunction.moebius j : ℝ) := by
        apply sum_congr rfl
        intro j hj
        rw [max_eq_left (mem_Ioc.mp hj).2, ← pow_two]
        ring
      _ = _ := by rw [mul_sum]
  · apply sum_congr rfl
    intro j hj
    rw [max_eq_right (le_of_lt (mem_Ioc.mp hj).1)]

/-- Exact FTC rows split into diagonal partial sums and full upper tails,
  including even columns. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant4dae4c269f00b23d5e0ae79d2f7db27cd5735089623091d7b133a326bd294ffa.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d3021f74f32433d21f4bd0b5526556bb0580cc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
