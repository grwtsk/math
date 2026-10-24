# logResidual_negative_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1edfb9a3-6f24-db7b-a0e2-e188c8174ecb",
  "kind": "theorem",
  "lexical_name": "logResidual_negative_norm",
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
  "slug": "logresidual-negative-norm--7ca46a5a674b2e2b009bea03",
  "source": {
    "blob": "2175f671b40ee21dbfb24fe11f8d59984847b35d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ca46a5a674b2e2b009bea03ccfc0a4af756d0a06556559ccda9d11bec96a348",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1edfb9a3-6f24-db7b-a0e2-e188c8174ecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logResidual_negative_norm (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    ‖((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
      ((Iio (0 : ℝ)).indicator (logResidual X ε))‖ =
      ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ := by
  apply (sq_eq_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
  rw [indicator_toLp_norm_sq _ (logResidual_memLp X ε hX) _ measurableSet_Iio]
  exact logResidual_negative_integral X ε hX

/-- The actual positive-tail vector has the complete finite-coefficient square-root cutoff bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2175f671b40ee21dbfb24fe11f8d59984847b35d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
