# pairedTailTest_deriv_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc3fea6f-c8ab-2ba4-ddc2-65901732aa07",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_deriv_absolutelyContinuous",
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
  "slug": "pairedtailtest-deriv-absolutelycontinuous--c79b5ed1584434e150e0b806",
  "source": {
    "blob": "e5655bfb748837159698f2d62a3eb4840c31ccc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variantbb36ca0a946e0084ed1483f44528c6733759c6511bd513e8484c02df86583f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c79b5ed1584434e150e0b806bda311ea8444a7e85f4304ce2b36b587631a2b43",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variantbb36ca0a946e0084ed1483f44528c6733759c6511bd513e8484c02df86583f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc3fea6f-c8ab-2ba4-ddc2-65901732aa07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_deriv_absolutelyContinuous {A : ℝ} (hA : 1 ≤ A) (a b : ℝ) :
    AbsolutelyContinuousOnInterval (deriv (pairedTailTest A)) a b := by
  obtain ⟨K,hp,hn⟩ := actual_slope_phases_lipschitz (by linarith : 0 < A)
  have hpac : AbsolutelyContinuousOnInterval (positiveSlope A) a b :=
    hp.lipschitzOnWith.absolutelyContinuousOnInterval
  have hnac : AbsolutelyContinuousOnInterval (negativeSlope A) a b :=
    hn.lipschitzOnWith.absolutelyContinuousOnInterval
  have he : deriv (pairedTailTest A) = fun u =>
      -positiveSlope A u+(positiveMass A/negativeMass A)*negativeSlope A u := by
    funext u
    exact pairedTailTest_deriv hA u
  rw [he]
  exact hpac.neg.add (hnac.const_mul (positiveMass A/negativeMass A))

/-- A literal representative of the paired test's AE curvature. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variantbb36ca0a946e0084ed1483f44528c6733759c6511bd513e8484c02df86583f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variantbb36ca0a946e0084ed1483f44528c6733759c6511bd513e8484c02df86583f67.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5655bfb748837159698f2d62a3eb4840c31ccc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
