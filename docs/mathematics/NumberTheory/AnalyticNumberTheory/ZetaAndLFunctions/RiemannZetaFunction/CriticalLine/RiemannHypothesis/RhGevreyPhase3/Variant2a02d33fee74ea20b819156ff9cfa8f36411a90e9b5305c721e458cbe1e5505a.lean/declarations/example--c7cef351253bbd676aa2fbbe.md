# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd13325fb6401296482b188a797a43f7d87fc6859335b2be94760b8403c4f1e0",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--c7cef351253bbd676aa2fbbe",
  "source": {
    "blob": "ece00e4e28dd7e386e09ab901de29c807317bfaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 138,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhGevreyPhase3/Variant2a02d33fee74ea20b819156ff9cfa8f36411a90e9b5305c721e458cbe1e5505a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7cef351253bbd676aa2fbbe49b37676c3eeb39c43137dcf19f9a5bc44d5a117",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhGevreyPhase3/Variant2a02d33fee74ea20b819156ff9cfa8f36411a90e9b5305c721e458cbe1e5505a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd13325fb6401296482b188a797a43f7d87fc6859335b2be94760b8403c4f1e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (h : ℝ → ℝ) (hc : ContDiff ℝ 2 h) (hs : HasCompactSupport h)
    (A ξ : ℝ) (hA : 0 < A) :
    (∫ u : ℝ, ((∫ x : ℝ,
      GevreyNormalization.normalizedOperator h A x *
        GevreyNormalization.normalizedOperator h A (x - u) : ℝ) : ℂ) *
      Complex.exp (Complex.I * (ξ : ℂ) * (u : ℂ))) =
      (((A / GevreyNormalization.normalization h A) * (ξ ^ 2 + 1 / 4) ^ 2 *
        Complex.normSq (∫ y : ℝ, (h y : ℂ) *
          Complex.exp (Complex.I * ((A * ξ : ℝ) : ℂ) * (y : ℂ))) : ℝ) : ℂ) :=
  GevreyFourier.sourceFourier_normalized_autocorrelation hc hs hA ξ

-- The actual new normalization tends to the energy of h/4, with no new source premise.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhGevreyPhase3/Variant2a02d33fee74ea20b819156ff9cfa8f36411a90e9b5305c721e458cbe1e5505a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhGevreyPhase3/Variant2a02d33fee74ea20b819156ff9cfa8f36411a90e9b5305c721e458cbe1e5505a.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece00e4e28dd7e386e09ab901de29c807317bfaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
