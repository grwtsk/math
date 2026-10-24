# seminormFromConst_seq_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4fd1fbf-a8b9-9c32-1b1b-07e6a53d389c",
  "kind": "theorem",
  "lexical_name": "seminormFromConst_seq_antitone",
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
  "slug": "seminormfromconst-seq-antitone--5cf039ebf19434a2d8329633",
  "source": {
    "blob": "8a7ca4f366209893ca5b1f22c9147b13f64c5696",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 94,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cf039ebf19434a2d8329633ba337c573f653014ed2004d0c92533706766936f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4fd1fbf-a8b9-9c32-1b1b-07e6a53d389c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seminormFromConst_seq_antitone (x : R) : Antitone (seminormFromConst_seq c f x) := by
  intro m n hmn
  simp only [seminormFromConst_seq]
  nth_rw 1 [← Nat.add_sub_of_le hmn]
  rw [pow_add, ← mul_assoc]
  have hc_pos : 0 < f c := lt_of_le_of_ne (apply_nonneg f _) hc.symm
  apply le_trans ((div_le_div_iff_of_pos_right (pow_pos hc_pos _)).mpr (map_mul_le_mul f _ _))
  cases hmn.eq_or_lt with
  | inl heq =>
    have hnm : n - m = 0 := by rw [heq, Nat.sub_self n]
    rw [hnm, heq, div_le_div_iff_of_pos_right (pow_pos hc_pos _), pow_zero]
    conv_rhs => rw [← mul_one (f (x * c ^ n))]
    exact mul_le_mul_of_nonneg_left hf1 (apply_nonneg f _)
  | inr hlt =>
    have h1 : 1 ≤ n - m := by
      rw [Nat.one_le_iff_ne_zero]
      exact Nat.sub_ne_zero_of_lt hlt
    rw [hpm c h1, mul_div_assoc, div_eq_mul_inv, pow_sub₀ _ hc hmn, mul_assoc, mul_comm (f c ^ m)⁻¹,
      ← mul_assoc (f c ^ n), mul_inv_cancel₀ (pow_ne_zero n hc), one_mul, div_eq_mul_inv]

/-- The real-valued function sending `x ∈ R` to the limit of `(f (x * c^n))/((f c)^n)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a7ca4f366209893ca5b1f22c9147b13f64c5696` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
