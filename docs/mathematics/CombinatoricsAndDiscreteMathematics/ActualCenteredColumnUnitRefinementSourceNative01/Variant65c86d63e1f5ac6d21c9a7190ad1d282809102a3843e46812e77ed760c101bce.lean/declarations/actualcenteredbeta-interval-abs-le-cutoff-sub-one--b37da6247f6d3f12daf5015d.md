# actualCenteredBeta_interval_abs_le_cutoff_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50d17f6a-29f3-9946-0640-43528982e2b8",
  "kind": "theorem",
  "lexical_name": "actualCenteredBeta_interval_abs_le_cutoff_sub_one",
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
  "slug": "actualcenteredbeta-interval-abs-le-cutoff-sub-one--b37da6247f6d3f12daf5015d",
  "source": {
    "blob": "5d7093d800a0824f906369fa4ad82a2f0f9b8bb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualCenteredColumnUnitRefinementSourceNative01/Variant65c86d63e1f5ac6d21c9a7190ad1d282809102a3843e46812e77ed760c101bce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b37da6247f6d3f12daf5015db39eae7d1b857db8c0f2100b0474ab30873837d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualCenteredColumnUnitRefinementSourceNative01/Variant65c86d63e1f5ac6d21c9a7190ad1d282809102a3843e46812e77ed760c101bce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50d17f6a-29f3-9946-0640-43528982e2b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredBeta_interval_abs_le_cutoff_sub_one (U L H : ℕ)
    (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    |∑ n ∈ Finset.Ioc L H, centeredBeta U n| ≤ (U : ℝ) - 1 := by
  have hm : (∑ d ∈ Finset.Icc 2 U, |(moebius d : ℝ)|) ≤
      ∑ _d ∈ Finset.Icc 2 U, (1 : ℝ) := by
    apply Finset.sum_le_sum
    intro d _
    exact_mod_cast (abs_moebius_le_one (n := d))
  have hc : (Finset.Icc 2 U).card = U - 1 := by
    rw [Nat.card_Icc]
    omega
  have hn : (∑ _d ∈ Finset.Icc 2 U, (1 : ℝ)) = (U : ℝ) - 1 := by
    simp only [Finset.sum_const, nsmul_eq_mul, mul_one, hc, Nat.cast_sub hU, Nat.cast_one]
  exact (actualCenteredBeta_interval_abs_le_nonunit_mass U L H hU hUL hLH).trans
    (hm.trans_eq hn)

/-- Every original real-scale Vaughan prefix preserves its literal moving cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualCenteredColumnUnitRefinementSourceNative01/Variant65c86d63e1f5ac6d21c9a7190ad1d282809102a3843e46812e77ed760c101bce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualCenteredColumnUnitRefinementSourceNative01/Variant65c86d63e1f5ac6d21c9a7190ad1d282809102a3843e46812e77ed760c101bce.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d7093d800a0824f906369fa4ad82a2f0f9b8bb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
