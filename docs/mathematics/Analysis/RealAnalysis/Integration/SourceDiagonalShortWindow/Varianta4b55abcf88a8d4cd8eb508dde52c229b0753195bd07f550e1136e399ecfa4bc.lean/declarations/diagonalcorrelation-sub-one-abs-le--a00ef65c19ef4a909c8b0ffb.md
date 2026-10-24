# diagonalCorrelation_sub_one_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e47e7b1e9a623ff3fd6d8ea67bdedca6787818e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b839da9f-8ee0-2ad8-4da3-a814ee48c120",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4686a0b0-f23d-279a-4da6-a9d2b34c7622",
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
  "slug": "diagonalcorrelation-sub-one-abs-le--a00ef65c19ef4a909c8b0ffb",
  "source": {
    "blob": "e47e7b1e9a623ff3fd6d8ea67bdedca6787818e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 22,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Varianta4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a00ef65c19ef4a909c8b0ffbce8030fac572cbf53d4df71cf1b274d40cac1f45",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Varianta4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4686a0b0-f23d-279a-4da6-a9d2b34c7622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–35.

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

/-- Integrating the literal source's derivative bound gives the factor five. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Varianta4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalShortWindow/Varianta4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e47e7b1e9a623ff3fd6d8ea67bdedca6787818e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
