# expanded_sum_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1adb9714b1806fb04c9e13dcf5d4aed46c27ca0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 522,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d3e8e4f-03fb-6391-9fab-f6bab3ac4546",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa867927-60f1-beed-734b-ccaaa454dee5",
  "kind": "theorem",
  "lexical_name": "expanded_sum_norm_le",
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
  "slug": "expanded-sum-norm-le--2cb132c226395e4df3f539e9",
  "source": {
    "blob": "1adb9714b1806fb04c9e13dcf5d4aed46c27ca0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 522,
    "path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cb132c226395e4df3f539e9284769cb7b6f613f0c4108c16a1611ec00d59f74",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa867927-60f1-beed-734b-ccaaa454dee5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expanded_sum_norm_le
    (A : ℝ) (hA : 1 ≤ A) :
    ‖∑' o : ZeroOccurrence,
        expandedSummand A (shiftedValue o)‖ ≤
      growthConstant * (1 + A ^ 8) * Real.exp A := by
  let C : ℝ :=
    growthFactor * (1 + A ^ 8) * Real.exp A
  have hC : 0 ≤ C := by
    have hg := growthFactor_nonneg
    dsimp [C]
    positivity
  have hmajor :
      Summable
        (fun o : ZeroOccurrence ↦ C * modeWeight o) :=
    modeWeight_summable.mul_left C
  have hnorm :
      Summable
        (fun o : ZeroOccurrence ↦
          ‖expandedSummand A (shiftedValue o)‖) := by
    apply Summable.of_nonneg_of_le
      (fun _ ↦ norm_nonneg _)
      (fun o ↦ by
        simpa [C] using expandedSummand_norm_le A hA o)
      hmajor
  calc
    _ ≤ ∑' o : ZeroOccurrence,
        ‖expandedSummand A (shiftedValue o)‖ :=
      norm_tsum_le_tsum_norm hnorm
    _ ≤ ∑' o : ZeroOccurrence, C * modeWeight o :=
      hnorm.tsum_le_tsum
        (fun o ↦ by
          simpa [C] using expandedSummand_norm_le A hA o)
        hmajor
    _ = C * ∑' o : ZeroOccurrence, modeWeight o := by
      rw [modeWeight_summable.tsum_mul_left]
    _ = growthConstant * (1 + A ^ 8) * Real.exp A := by
      unfold C growthConstant
      ring

/-- RH-0010 equation (18), now derived from the actual B3.2 source identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Expansion/Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1adb9714b1806fb04c9e13dcf5d4aed46c27ca0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
