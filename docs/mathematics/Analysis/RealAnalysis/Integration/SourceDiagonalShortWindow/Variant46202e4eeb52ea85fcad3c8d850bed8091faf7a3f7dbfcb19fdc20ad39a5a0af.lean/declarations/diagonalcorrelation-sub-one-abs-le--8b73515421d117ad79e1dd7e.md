# diagonalCorrelation_sub_one_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e3f812f-e0b2-f5ba-5cb4-809888ad1e7e",
  "kind": "theorem",
  "lexical_name": "diagonalCorrelation_sub_one_abs_le",
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
  "slug": "diagonalcorrelation-sub-one-abs-le--8b73515421d117ad79e1dd7e",
  "source": {
    "blob": "59a7f91e11422165eb791e3811de56deff1f1761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 21,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b73515421d117ad79e1dd7e4b04eea82bad843cf41c09c29e8e06ab901051f5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e3f812f-e0b2-f5ba-5cb4-809888ad1e7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalCorrelation_sub_one_abs_le (A : ℝ) (hA : 1 ≤ A)
    (t : ℝ) (ht : 0 ≤ t) :
    |diagonalCorrelation A t - 1| ≤ (10 / A) * t := by
  have hd := (diagonalCorrelation_contDiff A (by linarith)).differentiable (by norm_num)
  have hm := norm_image_sub_le_of_norm_deriv_le_segment'
    (a := 0) (b := t) (f := diagonalCorrelation A)
    (f' := deriv (diagonalCorrelation A))
    (fun x _ => (hd x).hasDerivAt.hasDerivWithinAt)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      diagonalCorrelation_deriv_abs_le A x hA)
    t ⟨ht, le_rfl⟩
  simpa only [diagonalCorrelation_at_zero A hA, Real.norm_eq_abs, sub_zero] using hm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Variant46202e4eeb52ea85fcad3c8d850bed8091faf7a3f7dbfcb19fdc20ad39a5a0af.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59a7f91e11422165eb791e3811de56deff1f1761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
