# addOrderOf_period_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41696c19-df03-0495-63df-14fa6cf20c0e",
  "kind": "theorem",
  "lexical_name": "addOrderOf_period_div",
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
  "slug": "addorderof-period-div--bca8da2c2baf03c3f4570f44",
  "source": {
    "blob": "8a755dc49e1d1927307d4bdc4528c932fc4d7884",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 378,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variantbc32391a99d37a1d3688161c757f9a26496ccb2b633011b6304002d97866687b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bca8da2c2baf03c3f4570f448a300486cd02ad78a961737cc21a80c742794356",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddCircle/Variantbc32391a99d37a1d3688161c757f9a26496ccb2b633011b6304002d97866687b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41696c19-df03-0495-63df-14fa6cf20c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addOrderOf_period_div {n : ℕ} (h : 0 < n) : addOrderOf ((p / n : 𝕜) : AddCircle p) = n := by
  rw [addOrderOf_eq_iff h]
  replace h : 0 < (n : 𝕜) := Nat.cast_pos.2 h
  refine' ⟨_, fun m hn h0 => _⟩ <;> simp only [Ne, ← coe_nsmul, nsmul_eq_mul]
  · rw [mul_div_cancel' _ h.ne', coe_period]
  rw [coe_eq_zero_of_pos_iff p hp.out (mul_pos (Nat.cast_pos.2 h0) <| div_pos hp.out h)]
  rintro ⟨k, hk⟩
  rw [mul_div, eq_div_iff h.ne', nsmul_eq_mul, mul_right_comm, ← Nat.cast_mul,
    (mul_left_injective₀ hp.out.ne').eq_iff, Nat.cast_inj, mul_comm] at hk
  exact (Nat.le_of_dvd h0 ⟨_, hk.symm⟩).not_lt hn
#align add_circle.add_order_of_period_div AddCircle.addOrderOf_period_div

variable (p)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddCircle/Variantbc32391a99d37a1d3688161c757f9a26496ccb2b633011b6304002d97866687b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variantbc32391a99d37a1d3688161c757f9a26496ccb2b633011b6304002d97866687b.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a755dc49e1d1927307d4bdc4528c932fc4d7884` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
