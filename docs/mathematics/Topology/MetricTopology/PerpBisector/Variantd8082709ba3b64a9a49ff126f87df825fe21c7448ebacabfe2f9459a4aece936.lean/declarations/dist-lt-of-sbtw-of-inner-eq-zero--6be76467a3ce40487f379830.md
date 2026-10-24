# dist_lt_of_sbtw_of_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89933fc4-a147-1d17-984a-f25aee4a07fa",
  "kind": "theorem",
  "lexical_name": "dist_lt_of_sbtw_of_inner_eq_zero",
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
  "slug": "dist-lt-of-sbtw-of-inner-eq-zero--6be76467a3ce40487f379830",
  "source": {
    "blob": "9cc554ec00dff89eaf2dc5d2331520907bf967d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 138,
    "path": "GRWTSK/Topology/MetricTopology/PerpBisector/Variantd8082709ba3b64a9a49ff126f87df825fe21c7448ebacabfe2f9459a4aece936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6be76467a3ce40487f3798305be27b0062f7d8236fa654a89787bfef56b70e2a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PerpBisector/Variantd8082709ba3b64a9a49ff126f87df825fe21c7448ebacabfe2f9459a4aece936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89933fc4-a147-1d17-984a-f25aee4a07fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_lt_of_sbtw_of_inner_eq_zero {a b c p : P}
    (h_sbtw : Sbtw ℝ a b c)
    (h_inner : ⟪p -ᵥ a, b -ᵥ a⟫ = 0) :
    dist p b < dist p c := by
  obtain ⟨t, ⟨ht0, ht1⟩, hb_eq⟩ := h_sbtw.mem_image_Ioo
  have hb : b -ᵥ a = t • (c -ᵥ a) := by simp [← hb_eq, AffineMap.lineMap_apply]
  have hpc : ⟪p -ᵥ a, c -ᵥ a⟫ = 0 := by simpa [ht0.ne', hb, inner_smul_right] using h_inner
  have h_sq_ineq : dist p b ^ 2 < dist p c ^ 2 := by
    rw [← hb_eq, dist_sq_lineMap_of_inner_eq_zero t hpc, dist_sq_of_inner_eq_zero hpc]
    have hv_pos : 0 < dist a c ^ 2 := sq_pos_of_pos (dist_pos.mpr h_sbtw.left_ne_right)
    have ht_sq_lt : t ^ 2 < 1 := sq_lt_one_iff₀ ht0.le |>.mpr ht1
    nlinarith [sq_nonneg (dist p a), sq_nonneg (dist a c)]
  simpa only [Real.sqrt_sq dist_nonneg] using Real.sqrt_lt_sqrt (sq_nonneg _) h_sq_ineq

/-- If `b` is weakly between `a` and `c`, and `p -ᵥ a` is orthogonal to `c -ᵥ a`,
then `p` is at least as close to `b` as to `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PerpBisector/Variantd8082709ba3b64a9a49ff126f87df825fe21c7448ebacabfe2f9459a4aece936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PerpBisector/Variantd8082709ba3b64a9a49ff126f87df825fe21c7448ebacabfe2f9459a4aece936.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cc554ec00dff89eaf2dc5d2331520907bf967d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
