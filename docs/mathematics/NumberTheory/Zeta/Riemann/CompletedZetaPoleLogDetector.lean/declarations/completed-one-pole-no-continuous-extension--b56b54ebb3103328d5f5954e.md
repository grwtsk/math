# completed_one_pole_no_continuous_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55f22588-7766-4f47-259c-d594e6b37b43",
  "kind": "theorem",
  "lexical_name": "completed_one_pole_no_continuous_extension",
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
  "slug": "completed-one-pole-no-continuous-extension--b56b54ebb3103328d5f5954e",
  "source": {
    "blob": "eac118be2215d95e026dbaa78eeb4559dfcde0f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b56b54ebb3103328d5f5954ee681a82747dd8b8a21e65f5496ff12f4c2dd6f29",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55f22588-7766-4f47-259c-d594e6b37b43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completed_one_pole_no_continuous_extension :
    ¬ ∃ H : ℂ → ℂ, ContinuousAt H 1 ∧ H =ᶠ[𝓝[≠] (1 : ℂ)] logDeriv completedRiemannZeta := by
  exact no_continuous_extension_of_nonzero_order completedRiemannZeta onePoleUnit 1 (-1)
    onePoleUnit_analytic_value.1 (by rw [onePoleUnit_analytic_value.2]; norm_num)
    completed_one_pole_factorization (by norm_num)
end GRWTSK.NumberTheory.Zeta.Riemann.CompletedPoleLogDetector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eac118be2215d95e026dbaa78eeb4559dfcde0f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
