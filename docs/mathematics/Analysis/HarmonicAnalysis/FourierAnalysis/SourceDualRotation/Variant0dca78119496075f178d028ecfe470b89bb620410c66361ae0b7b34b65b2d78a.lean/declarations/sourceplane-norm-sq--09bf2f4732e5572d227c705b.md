# sourcePlane_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80b07022-8842-48d3-4811-042954b4e9b1",
  "kind": "theorem",
  "lexical_name": "sourcePlane_norm_sq",
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
  "slug": "sourceplane-norm-sq--09bf2f4732e5572d227c705b",
  "source": {
    "blob": "e2257ce3b2b36cc7aa04b04aec57539781b9087a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 416,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceDualRotation/Variant0dca78119496075f178d028ecfe470b89bb620410c66361ae0b7b34b65b2d78a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09bf2f4732e5572d227c705b2b9ab8a21e859fa572b9ce7ceb90eaef6a5eb39d",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceDualRotation/Variant0dca78119496075f178d028ecfe470b89bb620410c66361ae0b7b34b65b2d78a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80b07022-8842-48d3-4811-042954b4e9b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePlane_norm_sq {q : ComplexL2} (hq : reflection q = q)
    (hn : ‖q‖ ^ 2 = 1) (a b : ℂ) :
    ‖sourcePlane q a b‖ ^ 2 = ‖a‖ ^ 2 + ‖b‖ ^ 2 := by
  have hi := sourcePlane_inner hq hn a b a b
  have hr : RCLike.re ⟪sourcePlane q a b,sourcePlane q a b⟫_ℂ =
      Complex.re (star a*a+star b*b) := congrArg Complex.re hi
  rw [inner_self_eq_norm_sq] at hr
  rw [hr]
  simp only [Complex.add_re,Complex.mul_re,Complex.star_def,Complex.conj_re,Complex.conj_im,
    Complex.sq_norm,Complex.normSq_apply]
  ring

/-- The source-plane reflected form retains the signed difference of sectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceDualRotation/Variant0dca78119496075f178d028ecfe470b89bb620410c66361ae0b7b34b65b2d78a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceDualRotation/Variant0dca78119496075f178d028ecfe470b89bb620410c66361ae0b7b34b65b2d78a.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2257ce3b2b36cc7aa04b04aec57539781b9087a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
