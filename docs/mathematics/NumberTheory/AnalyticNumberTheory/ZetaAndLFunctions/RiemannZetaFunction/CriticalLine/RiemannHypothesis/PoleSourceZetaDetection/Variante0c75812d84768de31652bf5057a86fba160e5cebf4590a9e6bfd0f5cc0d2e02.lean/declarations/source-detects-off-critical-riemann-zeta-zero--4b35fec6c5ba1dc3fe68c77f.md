# source_detects_off_critical_riemann_zeta_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0ffa3c5-dc20-8d77-ce5e-abde5aec4936",
  "kind": "theorem",
  "lexical_name": "source_detects_off_critical_riemann_zeta_zero",
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
  "slug": "source-detects-off-critical-riemann-zeta-zero--4b35fec6c5ba1dc3fe68c77f",
  "source": {
    "blob": "2ba1991b0f220dbe62a8192454c1d40c1517ae9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variante0c75812d84768de31652bf5057a86fba160e5cebf4590a9e6bfd0f5cc0d2e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b35fec6c5ba1dc3fe68c77f6ff0d9037343f1a3f41b1f81dced5c01b53aa0d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variante0c75812d84768de31652bf5057a86fba160e5cebf4590a9e6bfd0f5cc0d2e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0ffa3c5-dc20-8d77-ce5e-abde5aec4936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_detects_off_critical_riemann_zeta_zero (A : ℝ) (hA : 0 < A) (ρ : ℂ)
    (hzero : riemannZeta ρ = 0) (hstrip : 0 < ρ.re ∧ ρ.re < 1)
    (hoff : ρ.re ≠ 1 / 2) :
    bilateralLaplace (sourceCorrelation explicitSecondDerivative A) (ρ - 1 / 2) ≠ 0 :=
  source_detects_off_critical_zero A hA ρ (nontrivial_zeta_zero_of_strip ρ hzero hstrip) hoff

/-- Membership in Mathlib's actual zero set has an explicit source-detection consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variante0c75812d84768de31652bf5057a86fba160e5cebf4590a9e6bfd0f5cc0d2e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceZetaDetection/Variante0c75812d84768de31652bf5057a86fba160e5cebf4590a9e6bfd0f5cc0d2e02.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ba1991b0f220dbe62a8192454c1d40c1517ae9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
