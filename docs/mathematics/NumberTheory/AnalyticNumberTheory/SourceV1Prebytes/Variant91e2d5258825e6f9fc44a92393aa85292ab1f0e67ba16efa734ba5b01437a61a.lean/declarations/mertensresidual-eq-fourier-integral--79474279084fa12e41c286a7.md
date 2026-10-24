# mertensResidual_eq_fourier_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ced4856f-7627-a2c0-6943-d456ab0bd4fb",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_fourier_integral",
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
  "slug": "mertensresidual-eq-fourier-integral--79474279084fa12e41c286a7",
  "source": {
    "blob": "d8a13ffdaf1a01bd48feed794eb194ef67fea37d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 193,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV1Prebytes/Variant91e2d5258825e6f9fc44a92393aa85292ab1f0e67ba16efa734ba5b01437a61a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79474279084fa12e41c286a7ed98d1ddc993573cde762c177ebd14357765f1ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceV1Prebytes/Variant91e2d5258825e6f9fc44a92393aa85292ab1f0e67ba16efa734ba5b01437a61a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ced4856f-7627-a2c0-6943-d456ab0bd4fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_fourier_integral {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = ∫ ξ : ℝ,
      mangoldtFourierSymbol A ξ *
        Complex.normSq ((𝓕 (originalSourceState A) : ComplexL2) ξ) := by
  rw [mertensResidual_eq_quadratic hA, mangoldtInteraction_pointed_parseval]

/-- Compatibility with the Bochner transform requires the actual representative to be integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceV1Prebytes/Variant91e2d5258825e6f9fc44a92393aa85292ab1f0e67ba16efa734ba5b01437a61a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV1Prebytes/Variant91e2d5258825e6f9fc44a92393aa85292ab1f0e67ba16efa734ba5b01437a61a.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8a13ffdaf1a01bd48feed794eb194ef67fea37d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
