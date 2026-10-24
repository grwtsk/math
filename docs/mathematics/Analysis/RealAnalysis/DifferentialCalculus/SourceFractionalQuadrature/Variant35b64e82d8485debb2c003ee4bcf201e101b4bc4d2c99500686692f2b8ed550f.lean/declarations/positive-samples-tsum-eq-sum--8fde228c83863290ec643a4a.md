# positive_samples_tsum_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "409dccfb05d17d2ea55881e39766fdbe29417749",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44754558-9547-109a-7ab2-d36dff2c1205",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5945d35e-da99-25a6-5fd7-0355b92c45d5",
  "kind": "theorem",
  "lexical_name": "positive_samples_tsum_eq_sum",
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
  "slug": "positive-samples-tsum-eq-sum--8fde228c83863290ec643a4a",
  "source": {
    "blob": "409dccfb05d17d2ea55881e39766fdbe29417749",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fde228c83863290ec643a4a35db69351d0f6da1df6d5cbe97e963727b126f69",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5945d35e-da99-25a6-5fd7-0355b92c45d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_samples_tsum_eq_sum (f : ℝ → ℝ) (N : ℕ)
    (hupper : ∀ u : ℝ, (N + 1 : ℝ) ≤ u → f u = 0) :
    (∑' n : ℕ, f (n + 1 : ℝ)) = ∑ n ∈ Finset.Icc 1 N, f n := by
  have ht : (∑' n : ℕ, f (n + 1 : ℝ)) =
      ∑ n ∈ Finset.range N, f (n + 1 : ℝ) := by
    apply tsum_eq_sum
    intro n hn
    have hNn : N ≤ n := by simpa only [Finset.mem_range, not_lt] using hn
    exact hupper _ (by exact_mod_cast Nat.add_le_add_right hNn 1)
  rw [ht]
  clear hupper ht
  induction N with
  | zero => simp
  | succ N ih =>
    rw [Finset.sum_range_succ, Finset.sum_Icc_succ_top (by omega), ih]
    simp only [Nat.cast_add, Nat.cast_one]

/-- The literal sum over all positive integer samples retains the full positive-axis integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `409dccfb05d17d2ea55881e39766fdbe29417749` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
