# seminormFromConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c25f7d6fb4ff3f1e0473fd59e54420a7bcb5eed1a8464665912fcd51bbb8c8c",
  "kind": "def",
  "lexical_name": "seminormFromConst",
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
  "slug": "seminormfromconst--149d104d907e510e7333ea6e",
  "source": {
    "blob": "8d47778b45292d58431721d151b052f4e3b89959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 126,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:149d104d907e510e7333ea6ec8e293286ab0c3ce379a23af662a8acf44b974fe",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c25f7d6fb4ff3f1e0473fd59e54420a7bcb5eed1a8464665912fcd51bbb8c8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def seminormFromConst : RingSeminorm R where
  toFun     := seminormFromConst' hf1 hc hpm
  map_zero' := tendsto_nhds_unique (seminormFromConst_isLimit hf1 hc hpm 0)
    (by simpa [seminormFromConst_seq_zero c (map_zero _)] using tendsto_const_nhds)
  add_le' x y := by
    apply le_of_tendsto_of_tendsto' (seminormFromConst_isLimit hf1 hc hpm (x + y))
      ((seminormFromConst_isLimit hf1 hc hpm x).add (seminormFromConst_isLimit hf1 hc hpm y))
    intro n
    have h_add : f ((x + y) * c ^ n) ≤ f (x * c ^ n) + f (y * c ^ n) := by
      simp only [add_mul, map_add_le_add f _ _]
    simp only [seminormFromConst_seq, div_add_div_same]
    gcongr
  neg' x := by
    apply tendsto_nhds_unique_of_eventuallyEq (seminormFromConst_isLimit hf1 hc hpm (-x))
      (seminormFromConst_isLimit hf1 hc hpm x)
    simp only [EventuallyEq, eventually_atTop]
    use 0
    simp only [seminormFromConst_seq, neg_mul, map_neg_eq_map, zero_le, implies_true]
  mul_le' x y := by
    have hlim : Tendsto (fun n ↦ seminormFromConst_seq c f (x * y) (2 * n)) atTop
        (𝓝 (seminormFromConst' hf1 hc hpm (x * y))) := by
      apply (seminormFromConst_isLimit hf1 hc hpm (x * y)).comp
        (tendsto_atTop_atTop_of_monotone (fun _ _ hnm ↦ by
          simp only [mul_le_mul_left, Nat.succ_pos', hnm]) _)
      · rintro n; use n; omega
    refine le_of_tendsto_of_tendsto' hlim ((seminormFromConst_isLimit hf1 hc hpm x).mul
      (seminormFromConst_isLimit hf1 hc hpm y)) (fun n ↦ ?_)
    simp only [seminormFromConst_seq]
    rw [div_mul_div_comm, ← pow_add, two_mul,
      div_le_div_iff_of_pos_right (pow_pos (lt_of_le_of_ne (apply_nonneg f _) hc.symm) _), pow_add,
      ← mul_assoc, mul_comm (x * y), ← mul_assoc, mul_assoc, mul_comm (c ^ n)]
    exact map_mul_le_mul f (x * c ^ n) (y * c ^ n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant6d5b3672d9cfd1e9495798f743afab412477a977fb853d1d987f25b84f57a9bd.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d47778b45292d58431721d151b052f4e3b89959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
