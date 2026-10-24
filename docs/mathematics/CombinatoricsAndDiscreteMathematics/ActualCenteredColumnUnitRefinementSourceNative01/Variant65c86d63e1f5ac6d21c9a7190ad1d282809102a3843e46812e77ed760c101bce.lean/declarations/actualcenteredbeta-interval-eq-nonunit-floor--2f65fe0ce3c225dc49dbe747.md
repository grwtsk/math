# actualCenteredBeta_interval_eq_nonunit_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66d900b3-27b5-a381-6078-8944920007c5",
  "kind": "theorem",
  "lexical_name": "actualCenteredBeta_interval_eq_nonunit_floor",
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
  "slug": "actualcenteredbeta-interval-eq-nonunit-floor--2f65fe0ce3c225dc49dbe747",
  "source": {
    "blob": "5d7093d800a0824f906369fa4ad82a2f0f9b8bb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 20,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualCenteredColumnUnitRefinementSourceNative01/Variant65c86d63e1f5ac6d21c9a7190ad1d282809102a3843e46812e77ed760c101bce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f65fe0ce3c225dc49dbe7478e742d400cb7c24757e362691f6bc65057c9e6e5",
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

Occurrence: `result:66d900b3-27b5-a381-6078-8944920007c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredBeta_interval_eq_nonunit_floor (U L H : ℕ)
    (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, centeredBeta U n) =
      -∑ d ∈ Finset.Icc 2 U, (moebius d : ℝ) * floorDiscrepancy L H d := by
  rw [centeredBeta_interval_eq_discrepancy U L H hU hUL hLH]
  congr 1
  symm
  apply Finset.sum_subset
  · intro d hd
    exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Icc.mp hd).1; omega,
      (Finset.mem_Icc.mp hd).2⟩
  · intro d hd hnot
    have hd1 : d = 1 := by
      simp only [Finset.mem_Icc] at hd hnot
      omega
    subst d
    simp [floorDiscrepancy]

/-- Only the actual nonunit absolute Moebius inventory enters this column bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualCenteredColumnUnitRefinementSourceNative01/Variant65c86d63e1f5ac6d21c9a7190ad1d282809102a3843e46812e77ed760c101bce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualCenteredColumnUnitRefinementSourceNative01/Variant65c86d63e1f5ac6d21c9a7190ad1d282809102a3843e46812e77ed760c101bce.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d7093d800a0824f906369fa4ad82a2f0f9b8bb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
