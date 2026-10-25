# matrixCriticalDecay_implies_halfPlusEpsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b75b21433614f86c097c9b3683ea0cab0ec1160",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91a2f9d2-3767-e4ea-e4db-812116c313d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:007972ea-932e-b525-3e0a-d40be80452ea",
  "kind": "theorem",
  "lexical_name": "matrixCriticalDecay_implies_halfPlusEpsilon",
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
  "slug": "matrixcriticaldecay-implies-halfplusepsilon--82537f5b424ed65e6ef95404",
  "source": {
    "blob": "9b75b21433614f86c097c9b3683ea0cab0ec1160",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82537f5b424ed65e6ef954040324a65d13eaa1ed5796d43030a0a0c1c63f1f6f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:007972ea-932e-b525-3e0a-d40be80452ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrixCriticalDecay_implies_halfPlusEpsilon
    {counts : Surface.Core.AnalyticPrimeWalk.ResidueSixCounts} :
    MatrixCriticalDecay counts → MatrixHalfPlusEpsilonDecay counts := by
  rintro ⟨C₀, hC₀, hCritical⟩ epsilon hepsilon
  refine ⟨C₀ * (4 / epsilon ^ 2), by positivity, ?_⟩
  filter_upwards [hCritical,
    eventually_atTop.2 ⟨1, fun K hK ↦ hK⟩] with K hmain hK
  calc
    ‖indexedDiscrepancyOperator counts K‖ ≤
        C₀ * conductorThreeCriticalRate K := hmain
    _ ≤ C₀ * ((4 / epsilon ^ 2) *
        (((K + 2 : ℕ) : ℝ) ^ (-1 / 2 + epsilon))) :=
      mul_le_mul_of_nonneg_left
        (criticalRate_le_halfPlusEpsilonRate hepsilon hK) hC₀
    _ = (C₀ * (4 / epsilon ^ 2)) *
        (((K + 2 : ℕ) : ℝ) ^ (-1 / 2 + epsilon)) := by ring

end

end Surface.Core.ConductorThreeHalfPlusEpsilon
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeHalfPlusEpsilon/Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b75b21433614f86c097c9b3683ea0cab0ec1160` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
