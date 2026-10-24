# Sdiv_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9bf05b03b9bd492f525ac242ba339d7bae1fb443",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bc57a0a-f63d-4ed7-04c4-2f184ed2bbd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd8b261b-92cb-8320-efaf-8a2f4c362beb",
  "kind": "lemma",
  "lexical_name": "Sdiv_mono",
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
  "slug": "sdiv-mono--b82cc9cdb70137c7daa19b5c",
  "source": {
    "blob": "9bf05b03b9bd492f525ac242ba339d7bae1fb443",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 170,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b82cc9cdb70137c7daa19b5c665494f2716399cc73a5dd6588af16bcaf438f32",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd8b261b-92cb-8320-efaf-8a2f4c362beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Sdiv_mono {f : ArithmeticFunction ℝ} (hf : ∀ n, 0 ≤ f n) : Monotone (Sdiv f) := by
  intro a b hab
  unfold Sdiv
  refine sum_le_sum_of_subset_of_nonneg (Ioc_subset_Ioc le_rfl (Nat.floor_le_floor ?_)) ?_
  · exact Real.exp_le_exp.mpr hab
  · exact fun N _ _ => div_nonneg (hf N) (Nat.cast_nonneg N)

/-- the Mertens bound itself in Sdiv form: Sdiv Λ u ≤ u + K. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PowerSums/Variant57fa5f449b4d5d34fb53f38d50d3788f6b5d58c0f7e7114bf21fc49b1b71c7f2.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf05b03b9bd492f525ac242ba339d7bae1fb443` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
