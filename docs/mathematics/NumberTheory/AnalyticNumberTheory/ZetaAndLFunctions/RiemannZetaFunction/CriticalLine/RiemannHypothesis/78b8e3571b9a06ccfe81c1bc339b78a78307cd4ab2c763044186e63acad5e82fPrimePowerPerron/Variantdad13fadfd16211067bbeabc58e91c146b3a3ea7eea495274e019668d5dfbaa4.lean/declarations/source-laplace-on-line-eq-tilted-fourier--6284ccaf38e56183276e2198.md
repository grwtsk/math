# source_laplace_on_line_eq_tilted_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:655720b0-3087-93c5-f70c-1a0b39dd4cda",
  "kind": "theorem",
  "lexical_name": "source_laplace_on_line_eq_tilted_fourier",
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
  "slug": "source-laplace-on-line-eq-tilted-fourier--6284ccaf38e56183276e2198",
  "source": {
    "blob": "67e8ec7a17d958f0be464fd47547d0a4f5bbd4fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82fPrimePowerPerron/Variantdad13fadfd16211067bbeabc58e91c146b3a3ea7eea495274e019668d5dfbaa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6284ccaf38e56183276e2198fa54ad1076193e44209321dfb54abdadfeb82dcc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82fPrimePowerPerron/Variantdad13fadfd16211067bbeabc58e91c146b3a3ea7eea495274e019668d5dfbaa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:655720b0-3087-93c5-f70c-1a0b39dd4cda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_laplace_on_line_eq_tilted_fourier (A c t : ℝ) :
    sourceLaplace A ((c : ℂ) + (t : ℂ) * Complex.I) =
      Zeta23.paperFT (Zeta23.WeilEF.tilt
        (fun x ↦ (sourceCorrelation explicitSecondDerivative A x : ℂ)) c) t := by
  rw [← source_hfn_eq_bilateral_laplace]
  rw [show ((c : ℂ) + (t : ℂ) * Complex.I) + 1 / 2 =
    (((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I) by push_cast; ring]
  rw [Zeta23.WeilEF.Hfn_line]
  congr 2
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82fPrimePowerPerron/Variantdad13fadfd16211067bbeabc58e91c146b3a3ea7eea495274e019668d5dfbaa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82fPrimePowerPerron/Variantdad13fadfd16211067bbeabc58e91c146b3a3ea7eea495274e019668d5dfbaa4.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e8ec7a17d958f0be464fd47547d0a4f5bbd4fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
