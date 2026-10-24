# mem_tanh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f4d26807738525e298287e45eba1fc8b4bdd2ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71c7d93e70e00a6da4bb66cac5a09f999a7cca45e8a047428909e37813ebc9a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72fce382-feb2-b706-f766-c95f89095678",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44e96b3b-d064-7206-911a-520c8a003fb3",
  "kind": "theorem",
  "lexical_name": "mem_tanh",
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
  "slug": "mem-tanh--0f1d0a52b7c9ecde7fe54176",
  "source": {
    "blob": "5f4d26807738525e298287e45eba1fc8b4bdd2ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 302,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant71c7d93e70e00a6da4bb66cac5a09f999a7cca45e8a047428909e37813ebc9a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f1d0a52b7c9ecde7fe54176f78337eb888a7d823b95c997717a512c3e601c5e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant71c7d93e70e00a6da4bb66cac5a09f999a7cca45e8a047428909e37813ebc9a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44e96b3b-d064-7206-911a-520c8a003fb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_tanh {a : AffineForm} {eps : NoiseAssignment} {v : ℝ}
    (hvalid : validNoise eps)
    (hmem : mem_affine a eps v) :
    mem_affine (tanh a) eps (Real.tanh v) := by
  -- Get v ∈ a.toInterval
  have hv_in_I := mem_toInterval_weak hvalid hmem
  -- Get Real.tanh v ∈ tanhInterval I = [-1, 1]
  have htanh_in := LeanCert.Engine.mem_tanhInterval hv_in_I

  -- tanhInterval always returns [-1, 1], so mid = 0, rad = 1
  let tanhI := LeanCert.Engine.tanhInterval a.toInterval
  let mid := (tanhI.lo + tanhI.hi) / 2
  let rad := (tanhI.hi - tanhI.lo) / 2

  -- The result has coeffs = [], so evalLinear = c0 = mid
  simp only [tanh, mem_affine, evalLinear, linearSum, List.zipWith, List.sum_nil, add_zero]

  simp only [IntervalRat.mem_def] at htanh_in
  have hlo : (tanhI.lo : ℝ) ≤ Real.tanh v := htanh_in.1
  have hhi : Real.tanh v ≤ (tanhI.hi : ℝ) := htanh_in.2

  use Real.tanh v - (mid : ℝ)
  constructor
  · -- |Real.tanh v - mid| ≤ |rad|
    have hrad_nonneg : 0 ≤ rad := by
      simp only [rad]; linarith [tanhI.le]
    have habs_eq : |((tanhI.hi - tanhI.lo) / 2 : ℚ)| = (tanhI.hi - tanhI.lo) / 2 := by
      rw [abs_of_nonneg]; linarith [tanhI.le]

    rw [habs_eq, abs_le]

    have hmid_val : (mid : ℝ) = ((tanhI.lo : ℝ) + tanhI.hi) / 2 := by
      simp only [mid]; push_cast; ring

    constructor
    · calc -(((tanhI.hi - tanhI.lo) / 2 : ℚ) : ℝ)
          = -((tanhI.hi : ℝ) - tanhI.lo) / 2 := by push_cast; ring
        _ = (tanhI.lo : ℝ) - ((tanhI.lo : ℝ) + tanhI.hi) / 2 := by ring
        _ = (tanhI.lo : ℝ) - (mid : ℝ) := by rw [← hmid_val]
        _ ≤ Real.tanh v - (mid : ℝ) := by linarith
    · calc Real.tanh v - (mid : ℝ)
          ≤ (tanhI.hi : ℝ) - (mid : ℝ) := by linarith
        _ = (tanhI.hi : ℝ) - ((tanhI.lo : ℝ) + tanhI.hi) / 2 := by rw [hmid_val]
        _ = ((tanhI.hi : ℝ) - tanhI.lo) / 2 := by ring
        _ = (((tanhI.hi - tanhI.lo) / 2 : ℚ) : ℝ) := by push_cast; ring
  · ring

/-- sinh is sound -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant71c7d93e70e00a6da4bb66cac5a09f999a7cca45e8a047428909e37813ebc9a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant71c7d93e70e00a6da4bb66cac5a09f999a7cca45e8a047428909e37813ebc9a8.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4d26807738525e298287e45eba1fc8b4bdd2ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
