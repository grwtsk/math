# sourceCorrelation_increment_le_distance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95aa778e-f2ed-c037-a191-7747992ad43a",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_increment_le_distance",
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
  "slug": "sourcecorrelation-increment-le-distance--271c800f51aadd01f3fe2d1d",
  "source": {
    "blob": "50dacaf2064e3a3bddd26ece26732c83e011899e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variant67d2b7396233b3b835871cfb0d93dcd19e99b36505fd90b53739371b4b395304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:271c800f51aadd01f3fe2d1dbe517756851d0c61e13ee3a23f0dcf6855a8985e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variant67d2b7396233b3b835871cfb0d93dcd19e99b36505fd90b53739371b4b395304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95aa778e-f2ed-c037-a191-7747992ad43a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_increment_le_distance {A : ℝ} (hA : 0 < A) (s t : ℝ) :
    |sourceCorrelation explicitSecondDerivative A s -
      sourceCorrelation explicitSecondDerivative A t| ≤ sourceDistance A s t := by
  rw [sourceCorrelation_eq_inner hA s, sourceCorrelation_eq_inner hA t,
    ← Complex.sub_re, ← inner_sub_right]
  calc
    _ ≤ ‖⟪originalSourceState A,
      translation s (originalSourceState A) - translation t (originalSourceState A)⟫_ℂ‖ :=
      Complex.abs_re_le_norm _
    _ ≤ ‖originalSourceState A‖ *
      ‖translation s (originalSourceState A) - translation t (originalSourceState A)‖ :=
      norm_inner_le_norm _ _
    _ = sourceDistance A s t := by rw [originalSourceState_norm hA, one_mul]; rfl

/-- Exact coordinate conversion: the relative gap, rather than the integer label, is read. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variant67d2b7396233b3b835871cfb0d93dcd19e99b36505fd90b53739371b4b395304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variant67d2b7396233b3b835871cfb0d93dcd19e99b36505fd90b53739371b4b395304.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50dacaf2064e3a3bddd26ece26732c83e011899e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
