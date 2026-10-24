# RadiusNormalizedQuarticComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:266feef6603b014c17ec0da53e59a843ed41e6ebce6610d178d9a69a43fcbf75",
  "kind": "structure",
  "lexical_name": "RadiusNormalizedQuarticComparison",
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
  "slug": "radiusnormalizedquarticcomparison--eaced3113cb73a533d2fea70",
  "source": {
    "blob": "cc59b787c0a9b13408410e8aeff6f22e70811e46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 111,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaced3113cb73a533d2fea7091ce213bcf5fbc415bf9fc07496796e1ae9912ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:266feef6603b014c17ec0da53e59a843ed41e6ebce6610d178d9a69a43fcbf75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RadiusNormalizedQuarticComparison (α γ : ℝ) where
  weight : ℕ → ℝ
  error : ℕ → ℝ
  limitWeight : ℝ
  limitWeight_pos : 0 < limitWeight
  identity : ∀ n,
    radiusNormalizedCorrection n =
      weight n * witnessTrace α γ + error n
  weight_tendsto : Tendsto weight atTop (𝓝 limitWeight)
  error_tendsto : Tendsto error atTop (𝓝 0)

namespace RadiusNormalizedQuarticComparison

/-- The normalized fixed-family comparison is an instance of the generic
prime-power Gram extraction, using no target-dependent stage choice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSpectralNormalization.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc59b787c0a9b13408410e8aeff6f22e70811e46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
