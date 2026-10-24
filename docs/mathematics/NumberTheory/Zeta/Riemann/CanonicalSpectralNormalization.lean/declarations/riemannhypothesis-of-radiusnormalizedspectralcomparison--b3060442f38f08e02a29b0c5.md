# riemannHypothesis_of_radiusNormalizedSpectralComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:167cba56-1276-3667-6dae-7ee23c155969",
  "kind": "theorem",
  "lexical_name": "riemannHypothesis_of_radiusNormalizedSpectralComparison",
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
  "slug": "riemannhypothesis-of-radiusnormalizedspectralcomparison--b3060442f38f08e02a29b0c5",
  "source": {
    "blob": "cc59b787c0a9b13408410e8aeff6f22e70811e46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 164,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3060442f38f08e02a29b0c50a5c1e0917adc1c1b59ff01a4a46636ef553a8e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:167cba56-1276-3667-6dae-7ee23c155969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannHypothesis_of_radiusNormalizedSpectralComparison
    (hcompare :
      ∀ s : ℂ, NontrivialZetaZero s →
        RadiusNormalizedQuarticComparison (s.re - 1 / 2) s.im) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_primePowerGramExtraction
  intro s hs
  exact (hcompare s hs).toQuarticExtraction

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc59b787c0a9b13408410e8aeff6f22e70811e46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
