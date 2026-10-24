# discreteTopology_pi_basisFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e57e688ffc1047d2e47b32ace9528b7673bdb24c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f1e7dfb-4ed7-ac9c-4d8e-c7ca237ea4b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d81e4d39-ca96-cf20-b876-c63e7ac4d25c",
  "kind": "theorem",
  "lexical_name": "discreteTopology_pi_basisFun",
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
  "slug": "discretetopology-pi-basisfun--11ee733603ccb7a04f229eb5",
  "source": {
    "blob": "e57e688ffc1047d2e47b32ace9528b7673bdb24c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 298,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11ee733603ccb7a04f229eb51f9e8721f38e03b4bfa53b64fa6e2e88d08e6b3f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d81e4d39-ca96-cf20-b876-c63e7ac4d25c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteTopology_pi_basisFun [Finite ι] :
    DiscreteTopology (span ℤ (Set.range (Pi.basisFun ℝ ι))) := by
  cases nonempty_fintype ι
  refine discreteTopology_iff_isOpen_singleton_zero.mpr ⟨Metric.ball 0 1, Metric.isOpen_ball, ?_⟩
  ext x
  rw [Set.mem_preimage, mem_ball_zero_iff, pi_norm_lt_iff zero_lt_one, Set.mem_singleton_iff]
  simp_rw [← coe_eq_zero, funext_iff, Pi.zero_apply, Real.norm_eq_abs]
  refine forall_congr' (fun i => ?_)
  rsuffices ⟨y, hy⟩ : ∃ (y : ℤ), (y : ℝ) = (x : ι → ℝ) i
  · rw [← hy, ← Int.cast_abs, ← Int.cast_one, Int.cast_lt, Int.abs_lt_one_iff, Int.cast_eq_zero]
  exact ((Pi.basisFun ℝ ι).mem_span_iff_repr_mem ℤ x).mp (SetLike.coe_mem x) i

variable [NormedAddCommGroup E] [NormedSpace ℝ E] (b : Basis ι ℝ E)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant8db68d3621f893d4e6778327e2bdd8ecd51b76db943bfe8ee9aefdd05dae7a87.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e57e688ffc1047d2e47b32ace9528b7673bdb24c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
