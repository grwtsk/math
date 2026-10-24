# closedPrimitive_eq_hinge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b62ab214-03b5-dc4d-fdfe-04fe7f28238c",
  "kind": "theorem",
  "lexical_name": "closedPrimitive_eq_hinge",
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
  "slug": "closedprimitive-eq-hinge--e35bad14c604e0ba899a57d0",
  "source": {
    "blob": "ac976b87b18329264ec1745f48ca0bb9136213dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 73,
    "path": "GRWTSK/Analysis/ArithmeticPrimitive/Variante9a0b38f9fb4bb98cdfa355f277a6e2089a1f48ee6fc0b565c93ea9448802d07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e35bad14c604e0ba899a57d01f788fe51afe706dd98341f4ccf526c926ce4633",
  "verification": {
    "reference": "docs/verification/Analysis/ArithmeticPrimitive/Variante9a0b38f9fb4bb98cdfa355f277a6e2089a1f48ee6fc0b565c93ea9448802d07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b62ab214-03b5-dc4d-fdfe-04fe7f28238c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimitive_eq_hinge (b : ℕ → ℝ) (M : ℕ) {x : ℝ}
    (hx : 0 < x) (hM : x ≤ M) : closedPrimitive b x = hingePrimitive b M x := by
  have hfloor : ⌊x⌋₊ ≤ M := by
    simpa using Nat.floor_mono hM
  unfold closedPrimitive finitePrimitive hingePrimitive
  congr 1
  calc
    _ = ∑ n ∈ Finset.Icc 2 ⌊x⌋₊,
        b n * max (1 / Real.sqrt n - 1 / Real.sqrt x) 0 := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn2 := (Finset.mem_Icc.mp hn).1
      have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
      have hnx : (n : ℝ) ≤ x := (Nat.le_floor_iff hx.le).mp (Finset.mem_Icc.mp hn).2
      have horder := one_div_le_one_div_of_le (Real.sqrt_pos.2 hn0) (Real.sqrt_le_sqrt hnx)
      rw [max_eq_left (sub_nonneg.mpr horder)]
    _ = _ := by
      apply Finset.sum_subset (fun n hn => Finset.mem_Icc.mpr
        ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hfloor⟩)
      intro n hn hnot
      have hn2 := (Finset.mem_Icc.mp hn).1
      have hlt : ⌊x⌋₊ < n := by
        by_contra h
        exact hnot (Finset.mem_Icc.mpr ⟨hn2, by omega⟩)
      have hxn : x < n := (Nat.floor_lt hx.le).mp hlt
      have horder := one_div_le_one_div_of_le (Real.sqrt_pos.2 hx)
        (Real.sqrt_le_sqrt hxn.le)
      rw [max_eq_right (sub_nonpos.mpr horder), mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ArithmeticPrimitive/Variante9a0b38f9fb4bb98cdfa355f277a6e2089a1f48ee6fc0b565c93ea9448802d07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ArithmeticPrimitive/Variante9a0b38f9fb4bb98cdfa355f277a6e2089a1f48ee6fc0b565c93ea9448802d07.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac976b87b18329264ec1745f48ca0bb9136213dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
