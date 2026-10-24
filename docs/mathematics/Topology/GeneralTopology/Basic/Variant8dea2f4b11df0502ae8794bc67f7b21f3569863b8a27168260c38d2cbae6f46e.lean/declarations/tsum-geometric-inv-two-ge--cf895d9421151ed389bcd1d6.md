# tsum_geometric_inv_two_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c3c8ade-21ef-dd86-205b-0aa678d14471",
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
  "slug": "tsum-geometric-inv-two-ge--cf895d9421151ed389bcd1d6",
  "source": {
    "blob": "45d61887e17c52bdaa0091563890dace3d6f25ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 341,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf895d9421151ed389bcd1d6d60f2563c7f8f0a606986f0ec39b9eb857bb48a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c3c8ade-21ef-dd86-205b-0aa678d14471`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsum_geometric_inv_two_ge (n : ℕ) :
    (∑' i, ite (n ≤ i) ((2 : ℝ)⁻¹ ^ i) 0) = 2 * 2⁻¹ ^ n := by
  have A : Summable fun i : ℕ ↦ ite (n ≤ i) ((2⁻¹ : ℝ) ^ i) 0 := by
    simpa only [← piecewise_eq_indicator, one_div]
      using summable_geometric_two.indicator {i | n ≤ i}
  have B : ((Finset.range n).sum fun i : ℕ ↦ ite (n ≤ i) ((2⁻¹ : ℝ) ^ i) 0) = 0 :=
    Finset.sum_eq_zero fun i hi ↦
      ite_eq_right_iff.2 fun h ↦ (lt_irrefl _ ((Finset.mem_range.1 hi).trans_le h)).elim
  simp only [← Summable.sum_add_tsum_nat_add n A, B, if_true, zero_add, zero_le',
    le_add_iff_nonneg_left, pow_add, _root_.tsum_mul_right, tsum_geometric_inv_two]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8dea2f4b11df0502ae8794bc67f7b21f3569863b8a27168260c38d2cbae6f46e.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45d61887e17c52bdaa0091563890dace3d6f25ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
