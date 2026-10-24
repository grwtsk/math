# tsum_geometric_inv_two_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ca0878a-24fd-ddc1-636d-3867e618af02",
  "kind": "theorem",
  "lexical_name": "tsum_geometric_inv_two_ge",
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
  "slug": "tsum-geometric-inv-two-ge--2e90d6ee8f9934a428680fc3",
  "source": {
    "blob": "c902b2b00ec3c528e0f33d8de642fb31f0672aa1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 263,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e90d6ee8f9934a428680fc35d3b38afdcc28e6c5b3581d56693038e9bcbbecb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ca0878a-24fd-ddc1-636d-3867e618af02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsum_geometric_inv_two_ge (n : ℕ) :
    (∑' i, ite (n ≤ i) ((2 : ℝ)⁻¹ ^ i) 0) = 2 * 2⁻¹ ^ n := by
  have A : Summable fun i : ℕ => ite (n ≤ i) ((2⁻¹ : ℝ) ^ i) 0 := by
    apply summable_of_nonneg_of_le _ _ summable_geometric_two <;>
      · intro i
        by_cases hi : n ≤ i <;> simp [hi]; apply pow_nonneg; exact zero_le_two
  have B : ((Finset.range n).sum fun i : ℕ => ite (n ≤ i) ((2⁻¹ : ℝ) ^ i) 0) = 0 :=
    Finset.sum_eq_zero fun i hi =>
      ite_eq_right_iff.2 fun h => (lt_irrefl _ ((Finset.mem_range.1 hi).trans_le h)).elim
  simp only [← _root_.sum_add_tsum_nat_add n A, B, if_true, zero_add, zero_le',
    le_add_iff_nonneg_left, pow_add, _root_.tsum_mul_right, tsum_geometric_inv_two]
#align tsum_geometric_inv_two_ge tsum_geometric_inv_two_ge

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1670a583ce912714b3e1914037dc724aad62b354efc5e6c6b2bd16fbadebe637.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c902b2b00ec3c528e0f33d8de642fb31f0672aa1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
