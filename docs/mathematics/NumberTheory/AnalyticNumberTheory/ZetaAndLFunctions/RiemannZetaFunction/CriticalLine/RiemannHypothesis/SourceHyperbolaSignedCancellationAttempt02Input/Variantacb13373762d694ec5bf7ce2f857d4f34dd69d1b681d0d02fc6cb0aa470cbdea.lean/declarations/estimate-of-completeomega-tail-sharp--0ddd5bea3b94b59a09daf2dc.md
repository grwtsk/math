# estimate_of_completeOmega_tail_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd37eccb-66fe-09c8-54d0-8d12b7a42d41",
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
  "slug": "estimate-of-completeomega-tail-sharp--0ddd5bea3b94b59a09daf2dc",
  "source": {
    "blob": "99002fc629fb150225792c2d6e8e4a4fb7a7642e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variantacb13373762d694ec5bf7ce2f857d4f34dd69d1b681d0d02fc6cb0aa470cbdea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ddd5bea3b94b59a09daf2dc381c6ef291d6489d0dc7587f6262902b06e65ce7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variantacb13373762d694ec5bf7ce2f857d4f34dd69d1b681d0d02fc6cb0aa470cbdea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd37eccb-66fe-09c8-54d0-8d12b7a42d41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variantacb13373762d694ec5bf7ce2f857d4f34dd69d1b681d0d02fc6cb0aa470cbdea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHyperbolaSignedCancellationAttempt02Input/Variantacb13373762d694ec5bf7ce2f857d4f34dd69d1b681d0d02fc6cb0aa470cbdea.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99002fc629fb150225792c2d6e8e4a4fb7a7642e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
