# estimate_of_completeOmega_tail_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:838ccb28-d48e-b9b4-3273-4516fb1df949",
  "kind": "theorem",
  "lexical_name": "estimate_of_completeOmega_tail_sharp",
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
  "slug": "estimate-of-completeomega-tail-sharp--9e5967008d04bf1e7a6c6281",
  "source": {
    "blob": "754c0833cefe61c471772d1f0b58238095875952",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variant2b9fa76839de73d3d9be47ccc8d9ee9ea1d2da00a8e372e20834ded8e52cae09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e5967008d04bf1e7a6c62813e3104604982a1e6c685091c7799cc92b33fad19",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variant2b9fa76839de73d3d9be47ccc8d9ee9ea1d2da00a8e372e20834ded8e52cae09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:838ccb28-d48e-b9b4-3273-4516fb1df949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_completeOmega_tail_sharp {K R : ℝ} (hR : 91 ≤ R)
    (hOmega : ∀ A : ℝ, R ≤ A → completeOmega A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_mertens_residual_tail
  refine ⟨max 0 (K + (riemannZeta (1 / 2)).re + 260 / R ^ 2 + 21440 / R ^ 3),
    le_max_left _ _, R, (by linarith), ?_⟩
  intro A hRA
  exact (residual_le_of_completeOmega_tail hR hOmega A hRA).trans (le_max_right _ _)

/-- The joint signed inequality permits linear growth offset by the actual early floor term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variant2b9fa76839de73d3d9be47ccc8d9ee9ea1d2da00a8e372e20834ded8e52cae09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variant2b9fa76839de73d3d9be47ccc8d9ee9ea1d2da00a8e372e20834ded8e52cae09.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `754c0833cefe61c471772d1f0b58238095875952` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
