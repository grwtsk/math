# inverse_add_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2180510bcad318116d034f1905b47542dc70b3f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6f679c2-683b-79a5-42e6-42853b2040e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9aa2d04-e28e-9e0b-d8ef-b0521f273ac0",
  "kind": "theorem",
  "lexical_name": "inverse_add_norm",
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
  "slug": "inverse-add-norm--dfd01eba5aabbcbdd60ba15b",
  "source": {
    "blob": "2180510bcad318116d034f1905b47542dc70b3f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfd01eba5aabbcbdd60ba15ba4db8d04650813f37938400709bae6a49c361a7f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9aa2d04-e28e-9e0b-d8ef-b0521f273ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_add_norm (x : Rˣ) : (fun t : R => inverse (↑x + t)) =O[𝓝 0] fun _t => (1 : ℝ) := by
  refine EventuallyEq.trans_isBigO (inverse_add x) (one_mul (1 : ℝ) ▸ ?_)
  simp only [← sub_neg_eq_add, ← neg_mul]
  have hzero : Tendsto (-(↑x⁻¹ : R) * ·) (𝓝 0) (𝓝 0) :=
    (mulLeft_continuous _).tendsto' _ _ <| mul_zero _
  exact (inverse_one_sub_norm.comp_tendsto hzero).mul (isBigO_const_const _ one_ne_zero _)

/-- The function
`fun t ↦ Ring.inverse (x + t) - (∑ i ∈ Finset.range n, (- x⁻¹ * t) ^ i) * x⁻¹`
is `O(t ^ n)` as `t → 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2180510bcad318116d034f1905b47542dc70b3f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
