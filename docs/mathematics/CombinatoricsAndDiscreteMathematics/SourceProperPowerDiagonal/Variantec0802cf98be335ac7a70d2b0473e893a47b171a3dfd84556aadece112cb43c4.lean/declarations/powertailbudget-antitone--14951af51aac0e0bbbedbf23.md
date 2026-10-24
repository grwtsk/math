# powerTailBudget_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bd0d492-b3d7-1f59-110a-201410023886",
  "kind": "theorem",
  "lexical_name": "powerTailBudget_antitone",
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
  "slug": "powertailbudget-antitone--14951af51aac0e0bbbedbf23",
  "source": {
    "blob": "d0af7cd80483f3615a3a0e27fb7e2cc000c5f61c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantec0802cf98be335ac7a70d2b0473e893a47b171a3dfd84556aadece112cb43c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14951af51aac0e0bbbedbf23f2b04929ba675d39a54b54f61c809e97710431ef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantec0802cf98be335ac7a70d2b0473e893a47b171a3dfd84556aadece112cb43c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bd0d492-b3d7-1f59-110a-201410023886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powerTailBudget_antitone : AntitoneOn powerTailBudget (Set.Ici 1) := by
  have hd (x : ℝ) (hx : 1 ≤ x) :
      HasDerivAt powerTailBudget (-(Real.log x) / x ^ 2 - 1 / x ^ 3) x := by
    have hx0 : x ≠ 0 := by linarith
    convert (((Real.hasDerivAt_log hx0).add_const 1).div (hasDerivAt_id x) hx0).add
      ((hasDerivAt_const x (1 : ℝ)).div
        ((hasDerivAt_id x).pow 2 |>.const_mul 2) (by positivity)) using 1 <;>
      (first | rfl | (field_simp; ring))
  apply antitoneOn_of_hasDerivWithinAt_nonpos (convex_Ici 1)
  · intro x hx
    exact (hd x hx).continuousAt.continuousWithinAt
  · intro x hx
    exact (hd x (interior_subset hx)).hasDerivWithinAt
  · intro x hx
    have hx1 : 1 ≤ x := interior_subset hx
    have hl := Real.log_nonneg hx1
    have hx0 : 0 < x := by linarith
    have hneg : -(Real.log x) / x ^ 2 ≤ 0 := div_nonpos_of_nonpos_of_nonneg (by linarith) (sq_nonneg x)
    have hi : 0 ≤ 1 / x ^ 3 := by positivity
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantec0802cf98be335ac7a70d2b0473e893a47b171a3dfd84556aadece112cb43c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantec0802cf98be335ac7a70d2b0473e893a47b171a3dfd84556aadece112cb43c4.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0af7cd80483f3615a3a0e27fb7e2cc000c5f61c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
