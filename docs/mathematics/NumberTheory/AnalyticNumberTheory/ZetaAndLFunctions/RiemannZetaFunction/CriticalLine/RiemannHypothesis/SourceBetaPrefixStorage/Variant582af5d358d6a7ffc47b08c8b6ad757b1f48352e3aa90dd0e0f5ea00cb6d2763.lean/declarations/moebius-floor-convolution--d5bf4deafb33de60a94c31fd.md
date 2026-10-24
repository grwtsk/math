# moebius_floor_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33fd7321ad612214073373c9edf7e8c2ce2462ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/582af5d358d6a7ffc47b08c8b6ad757b1f48352e3aa90dd0e0f5ea00cb6d2763.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f483ef06-f7e9-27a3-6ad5-3d54805b820a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67831f74-ae55-5000-c4c3-1825fef2ebb5",
  "kind": "theorem",
  "lexical_name": "moebius_floor_convolution",
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
  "slug": "moebius-floor-convolution--d5bf4deafb33de60a94c31fd",
  "source": {
    "blob": "33fd7321ad612214073373c9edf7e8c2ce2462ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant582af5d358d6a7ffc47b08c8b6ad757b1f48352e3aa90dd0e0f5ea00cb6d2763.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5bf4deafb33de60a94c31fd9b44efab9397c006156f54f1a997e5974abe08e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant582af5d358d6a7ffc47b08c8b6ad757b1f48352e3aa90dd0e0f5ea00cb6d2763.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67831f74-ae55-5000-c4c3-1825fef2ebb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moebius_floor_convolution (U : ℕ) (hU : 1 ≤ U) :
    (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U / d : ℕ) : ℝ)) = 1 := by
  have hi (n : ℕ) (hn : n ∈ Finset.Ioc 0 U) :
      (∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0) =
        if n = 1 then 1 else 0 := by
    have he := beta_eq_delta_sub_short U n
    rw [beta_zero_of_le U n (Finset.mem_Ioc.mp hn).2,
      short_divisor_sum_eq_indicator U n (Finset.mem_Ioc.mp hn).1] at he
    linarith
  calc
    _ = ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (∑ n ∈ Finset.Ioc 0 U, if d ∣ n then (1 : ℝ) else 0) := by
      simp_rw [multiples_prefix_sum]
    _ = ∑ n ∈ Finset.Ioc 0 U,
        ∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0 := by
      simp_rw [Finset.mul_sum, mul_ite, mul_one, mul_zero]
      rw [Finset.sum_comm]
    _ = ∑ n ∈ Finset.Ioc 0 U, if n = 1 then (1 : ℝ) else 0 := by
      exact Finset.sum_congr rfl hi
    _ = 1 := by simp [Finset.mem_Ioc, hU]

/-- The divisor mean's quotient expression preserves the original anchor U. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant582af5d358d6a7ffc47b08c8b6ad757b1f48352e3aa90dd0e0f5ea00cb6d2763.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant582af5d358d6a7ffc47b08c8b6ad757b1f48352e3aa90dd0e0f5ea00cb6d2763.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33fd7321ad612214073373c9edf7e8c2ce2462ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
