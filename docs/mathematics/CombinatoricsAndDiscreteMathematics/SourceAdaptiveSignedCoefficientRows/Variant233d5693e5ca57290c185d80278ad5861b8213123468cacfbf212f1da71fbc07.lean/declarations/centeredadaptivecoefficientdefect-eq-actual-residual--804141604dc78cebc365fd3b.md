# centeredAdaptiveCoefficientDefect_eq_actual_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60a0e042-27e2-f2f9-de26-7f4ad62e8fa1",
  "kind": "theorem",
  "lexical_name": "centeredAdaptiveCoefficientDefect_eq_actual_residual",
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
  "slug": "centeredadaptivecoefficientdefect-eq-actual-residual--804141604dc78cebc365fd3b",
  "source": {
    "blob": "ba002e46e65cfe6c3c09264dcc13d886856dcbe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 161,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant233d5693e5ca57290c185d80278ad5861b8213123468cacfbf212f1da71fbc07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:804141604dc78cebc365fd3bd5ec1d1570a295c258de6075696e5b0ecf484113",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant233d5693e5ca57290c185d80278ad5861b8213123468cacfbf212f1da71fbc07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60a0e042-27e2-f2f9-de26-7f4ad62e8fa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredAdaptiveCoefficientDefect_eq_actual_residual (A anchor : ℝ)
    (hA : 1 ≤ A) :
    centeredAdaptiveCoefficientDefect A anchor =
      EstimateMertensResidual.mertensResidual A - anchor / 2 := by
  rw [centeredAdaptiveCoefficientDefect,
    ← actual_residual_eq_coefficientRows_add_signedError A hA]

end RH16AdaptiveSignedCoefficients
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant233d5693e5ca57290c185d80278ad5861b8213123468cacfbf212f1da71fbc07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant233d5693e5ca57290c185d80278ad5861b8213123468cacfbf212f1da71fbc07.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba002e46e65cfe6c3c09264dcc13d886856dcbe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
