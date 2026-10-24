# norm_tsum_eps_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21a325dbb2d6adf4ffe058ef03674bd9c1b03cc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d960774b-7da0-9829-ce7b-34db21fa6bbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c6add4d-97c0-d36c-1b5f-55b478d95f1f",
  "kind": "theorem",
  "lexical_name": "norm_tsum_eps_le",
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
  "slug": "norm-tsum-eps-le--0b77e3c60e6205afe08d963b",
  "source": {
    "blob": "21a325dbb2d6adf4ffe058ef03674bd9c1b03cc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 356,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b77e3c60e6205afe08d963b1ed60bca4e76866991e9644f72edf291786c6b49",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c6add4d-97c0-d36c-1b5f-55b478d95f1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_tsum_eps_le (hw : 0 < w.re) (ht : 1 / 2 ≤ |w.im|) :
    ‖∑' n : ℕ, eps w ((n : ℝ) + 1)‖ ≤ (2 / 3) / w.im ^ 2 := by
  have ht0 : 0 < |w.im| := by linarith
  have hS := tsum_inv_norm_sq_le hw ht
  calc ‖∑' n : ℕ, eps w ((n : ℝ) + 1)‖ ≤ ∑' n : ℕ, ‖eps w ((n : ℝ) + 1)‖ :=
        norm_tsum_le_tsum_norm (summable_norm_eps hw ht)
    _ ≤ ∑' n : ℕ, (1 / (3 * |w.im|)) * (1 / ‖(n : ℂ) + 1 + w‖ ^ 2) := by
        refine Summable.tsum_le_tsum (fun n => ?_) (summable_norm_eps hw ht)
          ((summable_inv_norm_sq hw).mul_left _)
        refine le_trans (norm_eps_natp1_le hw ht n) (le_of_eq ?_)
        field_simp
    _ = (1 / (3 * |w.im|)) * ∑' n : ℕ, 1 / ‖(n : ℂ) + 1 + w‖ ^ 2 := tsum_mul_left
    _ ≤ (1 / (3 * |w.im|)) * (2 / |w.im|) := by gcongr
    _ = (2 / 3) / w.im ^ 2 := by rw [← sq_abs]; field_simp

/-! ### Limits -/

/-- `Σ_{n<N} 1/(n+1) − log(N+1+w) → γ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StirlingVert/Variantc982dc94e4193d2b3c69fd1f939b9055b6368332fd24d38bdf5bad37c487b661.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21a325dbb2d6adf4ffe058ef03674bd9c1b03cc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
