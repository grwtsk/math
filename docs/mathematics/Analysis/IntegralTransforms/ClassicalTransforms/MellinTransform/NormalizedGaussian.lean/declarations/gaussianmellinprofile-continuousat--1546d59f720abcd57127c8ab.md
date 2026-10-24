# gaussianMellinProfile_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a06be4e6-e16b-90ef-9e1c-cb5228dea7ce",
  "kind": "lemma",
  "lexical_name": "gaussianMellinProfile_continuousAt",
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
  "slug": "gaussianmellinprofile-continuousat--1546d59f720abcd57127c8ab",
  "source": {
    "blob": "4a27d43838697c660b546d91d38e35a1bbfa23e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 104,
    "path": "GRWTSK/Analysis/MellinTransform/NormalizedGaussian.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1546d59f720abcd57127c8abab851c778957cfb0d287cf7470c6774f02a948da",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a06be4e6-e16b-90ef-9e1c-cb5228dea7ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussianMellinProfile_continuousAt {x : ℝ} (hx : 0 < x) :
    ContinuousAt gaussianMellinProfile x := by
  have hl : ContinuousAt (fun y : ℝ => (Real.log y : ℂ)) x :=
    Complex.continuous_ofReal.continuousAt.comp (Real.continuousAt_log (ne_of_gt hx))
  have hc : ContinuousAt (fun y : ℝ =>
      gaussianMellinCoefficient • logarithmicGaussianWith (1/4 : ℂ) y) x := by
    unfold logarithmicGaussianWith
    exact (continuousAt_const : ContinuousAt (fun _ : ℝ => gaussianMellinCoefficient) x).smul
      (((continuousAt_const : ContinuousAt (fun _ : ℝ => -(1/4 : ℂ)) x).mul (hl.pow 2)).cexp)
  apply hc.congr_of_eventuallyEq
  filter_upwards [isOpen_Ioi.mem_nhds hx] with y hy
  exact gaussianMellinProfile_eq_quarter hy

/-- Every real contour is valid for the actual normalized profile, at positive x. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/NormalizedGaussian.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a27d43838697c660b546d91d38e35a1bbfa23e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
