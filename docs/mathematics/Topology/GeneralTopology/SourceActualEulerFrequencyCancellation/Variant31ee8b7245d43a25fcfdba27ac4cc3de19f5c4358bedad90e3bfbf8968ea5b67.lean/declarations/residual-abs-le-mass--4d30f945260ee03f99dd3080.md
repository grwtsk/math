# residual_abs_le_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ffdf6a2-18f4-4d47-e569-bfc3b2cd4e6b",
  "kind": "theorem",
  "lexical_name": "residual_abs_le_mass",
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
  "slug": "residual-abs-le-mass--4d30f945260ee03f99dd3080",
  "source": {
    "blob": "f7d02e97b38e3fdd2732712ec9a5a776fdba01ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant31ee8b7245d43a25fcfdba27ac4cc3de19f5c4358bedad90e3bfbf8968ea5b67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d30f945260ee03f99dd30808518a4f6c3a655aea2b2df13f7270525bd0e662c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant31ee8b7245d43a25fcfdba27ac4cc3de19f5c4358bedad90e3bfbf8968ea5b67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ffdf6a2-18f4-4d47-e569-bfc3b2cd4e6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem residual_abs_le_mass {A : ℝ} (hA : 1 ≤ A) :
    |mertensResidual A| ≤ actualClosedAbsolutePrimeMoment A := by
  rw [actualMertensResidual_eq_variation_difference hA,
    actualClosedAbsolutePrimeMoment_eq_variation_sum]
  have hp := actualPositivePrimeVariation_nonneg A
  have hn := actualNegativePrimeVariation_nonneg A
  exact abs_le.mpr ⟨by linarith, by linarith⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant31ee8b7245d43a25fcfdba27ac4cc3de19f5c4358bedad90e3bfbf8968ea5b67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant31ee8b7245d43a25fcfdba27ac4cc3de19f5c4358bedad90e3bfbf8968ea5b67.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7d02e97b38e3fdd2732712ec9a5a776fdba01ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
