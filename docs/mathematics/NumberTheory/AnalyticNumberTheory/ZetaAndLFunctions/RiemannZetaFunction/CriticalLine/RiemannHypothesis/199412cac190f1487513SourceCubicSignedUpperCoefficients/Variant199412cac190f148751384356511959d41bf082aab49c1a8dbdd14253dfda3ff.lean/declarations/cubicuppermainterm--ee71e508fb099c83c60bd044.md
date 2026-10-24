# cubicUpperMainTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a817876d4d1c45adb31719190963ae6e3bb7be09734d3ecccdd9dafca3df383",
  "kind": "def",
  "lexical_name": "cubicUpperMainTerm",
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
  "slug": "cubicuppermainterm--ee71e508fb099c83c60bd044",
  "source": {
    "blob": "1fe2c66f51be866483a161dd8c8294cd3ba25959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee71e508fb099c83c60bd04444eb1e3446dcc1e8f9b1e0a654b3a8ed3cebd8d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a817876d4d1c45adb31719190963ae6e3bb7be09734d3ecccdd9dafca3df383`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cubicUpperMainTerm (A k : ℝ) : ℝ :=
  1 / Real.sqrt k *
    (cubicUpperBeta0 * sourceCorrelation explicitSecondDerivative A (Real.log k) +
      cubicUpperBeta1 * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) +
      cubicUpperBeta2 * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log k) +
      cubicUpperBeta3 * deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))
        (Real.log k))

/-- The actual cubic derivative model keeps all five independent signed moment densities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fe2c66f51be866483a161dd8c8294cd3ba25959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
