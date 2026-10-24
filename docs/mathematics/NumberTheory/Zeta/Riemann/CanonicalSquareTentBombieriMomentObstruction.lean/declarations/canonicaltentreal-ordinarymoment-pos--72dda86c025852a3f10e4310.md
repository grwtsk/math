# canonicalTentReal_ordinaryMoment_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ef99abe-edd5-527b-fcae-b13b0578f73a",
  "kind": "theorem",
  "lexical_name": "canonicalTentReal_ordinaryMoment_pos",
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
  "slug": "canonicaltentreal-ordinarymoment-pos--72dda86c025852a3f10e4310",
  "source": {
    "blob": "6e995ace41d3a4074bfb63ddde0eda2d7df4d779",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 93,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72dda86c025852a3f10e4310c6bfae458e9c61db3010f72af86de98dfe3ba393",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ef99abe-edd5-527b-fcae-b13b0578f73a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalTentReal_ordinaryMoment_pos (i : ℕ) :
    0 < ∫ x in Set.Ioi (0 : ℝ), canonicalTentReal i x := by
  let n := i + 2
  refine (setIntegral_pos_iff_support_of_nonneg_ae ?_
    (canonicalTentReal_integrable i).integrableOn).2 ?_
  · exact Filter.Eventually.of_forall fun x =>
      tent_nonneg (squareCenter n) (squareRadius n) x
  · have hsub :
        Set.Ioo (squareCenter n - squareRadius n)
            (squareCenter n + squareRadius n) ⊆
          Function.support (canonicalTentReal i) ∩ Set.Ioi (0 : ℝ) := by
      intro x hx
      constructor
      · change canonicalTentReal i x ≠ 0
        change tent (squareCenter n) (squareRadius n) x ≠ 0
        exact ne_of_gt
          ((tent_pos_iff (squareCenter n) (squareRadius n) x
            (squareRadius_pos n)).2 hx)
      · have hleft : 0 < squareCenter n - squareRadius n := by
          rw [center_sub_radius]
          positivity
        exact hleft.trans hx.1
    have hvol :
        0 < volume
          (Set.Ioo (squareCenter n - squareRadius n)
            (squareCenter n + squareRadius n)) := by
      rw [Real.volume_Ioo]
      apply ENNReal.ofReal_pos.mpr
      linarith [squareRadius_pos n]
    exact hvol.trans_le (measure_mono hsub)

/-- Bombieri's ordinary positive-half-line moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e995ace41d3a4074bfb63ddde0eda2d7df4d779` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
