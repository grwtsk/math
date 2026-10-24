# normalizedBilateral_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3912afc7-4122-ed35-79ef-6e1d0f98b095",
  "kind": "theorem",
  "lexical_name": "normalizedBilateral_integrable",
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
  "slug": "normalizedbilateral-integrable--b5b91cfd406daeb57a1d9f32",
  "source": {
    "blob": "04610aa57ad3364645fae2bff4dd614c4ea7f3d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCommonMeanZeroSide/Variante164ffe9d8ba60e534cb9b505e4e47331b855b9459bd76020365dbfb37612591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5b91cfd406daeb57a1d9f3292f7a8529bb86700ec426d3fe937eebc94b8f0c9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualCommonMeanZeroSide/Variante164ffe9d8ba60e534cb9b505e4e47331b855b9459bd76020365dbfb37612591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3912afc7-4122-ed35-79ef-6e1d0f98b095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedBilateral_integrable {A : ℝ} (hA : 1 ≤ A) (o : ZeroOccurrence) :
    Integrable (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
      Complex.exp (shiftedValue o*(x:ℂ))) := by
  have h := (FormalResearch.RiemannHypothesis.ZeroSide.Assembly.zero_side_identity A hA).2.1 o
  have he : (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
      Complex.exp (shiftedValue o*(x:ℂ))) =
      fun x => ((actualTest A x : ℂ) * Complex.exp (shiftedValue o*(x:ℂ))) /
        (Real.sqrt (sourceNormalization A) : ℂ) := by
    funext x
    unfold normalizedTest actualTest
    rw [Complex.ofReal_div]
    ring
  rw [he]
  exact h.div_const _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualCommonMeanZeroSide/Variante164ffe9d8ba60e534cb9b505e4e47331b855b9459bd76020365dbfb37612591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualCommonMeanZeroSide/Variante164ffe9d8ba60e534cb9b505e4e47331b855b9459bd76020365dbfb37612591.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04610aa57ad3364645fae2bff4dd614c4ea7f3d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
