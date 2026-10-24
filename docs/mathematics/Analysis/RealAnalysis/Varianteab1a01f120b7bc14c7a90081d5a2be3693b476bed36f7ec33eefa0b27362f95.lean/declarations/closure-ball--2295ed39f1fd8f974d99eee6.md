# closure_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f2d4eaa43bf3bcb91e9b8b4c05ccaf7f4a1fe48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18c91766-2f22-0bbe-912b-d1886ee07485",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:002358a9-2a83-e5d7-f40c-ef9ac3d63332",
  "kind": "theorem",
  "lexical_name": "closure_ball",
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
  "slug": "closure-ball--2295ed39f1fd8f974d99eee6",
  "source": {
    "blob": "7f2d4eaa43bf3bcb91e9b8b4c05ccaf7f4a1fe48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 59,
    "path": "GRWTSK/Analysis/Real/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2295ed39f1fd8f974d99eee6bb20ef6e3fbff5bcf6c9264c26a69a992fe2b85a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:002358a9-2a83-e5d7-f40c-ef9ac3d63332`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_ball (x : E) {r : ℝ} (hr : r ≠ 0) : closure (ball x r) = closedBall x r := by
  refine Subset.antisymm closure_ball_subset_closedBall fun y hy => ?_
  have : ContinuousWithinAt (fun c : ℝ => c • (y - x) + x) (Ico 0 1) 1 :=
    ((continuous_id.smul continuous_const).add continuous_const).continuousWithinAt
  convert this.mem_closure _ _
  · rw [one_smul, sub_add_cancel]
  · simp [closure_Ico zero_ne_one, zero_le_one]
  · rintro c ⟨hc0, hc1⟩
    rw [mem_ball, dist_eq_norm, add_sub_cancel_right, norm_smul, Real.norm_eq_abs,
      abs_of_nonneg hc0, mul_comm, ← mul_one r]
    rw [mem_closedBall, dist_eq_norm] at hy
    replace hr : 0 < r := ((norm_nonneg _).trans hy).lt_of_ne hr.symm
    apply mul_lt_mul' <;> assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/Varianteab1a01f120b7bc14c7a90081d5a2be3693b476bed36f7ec33eefa0b27362f95.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f2d4eaa43bf3bcb91e9b8b4c05ccaf7f4a1fe48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
