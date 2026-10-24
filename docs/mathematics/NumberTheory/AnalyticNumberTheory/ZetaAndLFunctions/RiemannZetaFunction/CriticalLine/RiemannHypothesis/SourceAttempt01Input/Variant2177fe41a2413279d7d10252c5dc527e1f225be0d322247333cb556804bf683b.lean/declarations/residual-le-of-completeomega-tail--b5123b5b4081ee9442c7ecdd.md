# residual_le_of_completeOmega_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7e83ac0-57cb-422b-b316-196284a43a10",
  "kind": "theorem",
  "lexical_name": "residual_le_of_completeOmega_tail",
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
  "slug": "residual-le-of-completeomega-tail--b5123b5b4081ee9442c7ecdd",
  "source": {
    "blob": "a516a43ec94cfbe161fde15f78e85ebac1516360",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAttempt01Input/Variant2177fe41a2413279d7d10252c5dc527e1f225be0d322247333cb556804bf683b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5123b5b4081ee9442c7ecdda73f84d6894265851093fd29a12f7e4e50e7440b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAttempt01Input/Variant2177fe41a2413279d7d10252c5dc527e1f225be0d322247333cb556804bf683b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7e83ac0-57cb-422b-b316-196284a43a10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_le_of_completeOmega_tail {K R : ℝ} (hR : 91 ≤ R)
    (hOmega : ∀ A : ℝ, R ≤ A → completeOmega A ≤ K) :
    ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ K + (riemannZeta (1 / 2)).re +
        260 / R ^ 2 + 21440 / R ^ 3 := by
  intro A hRA
  have he := (abs_le.mp
    (residual_sub_completeOmega_sub_zeta_abs_le A (hR.trans hRA))).2
  have hr := reconstruction_error_le_at_radius hR hRA
  have ho := hOmega A hRA
  linarith

/-- The sharper quantitative constant composes the existing all-real finite-prefix receiver. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAttempt01Input/Variant2177fe41a2413279d7d10252c5dc527e1f225be0d322247333cb556804bf683b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAttempt01Input/Variant2177fe41a2413279d7d10252c5dc527e1f225be0d322247333cb556804bf683b.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a516a43ec94cfbe161fde15f78e85ebac1516360` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
