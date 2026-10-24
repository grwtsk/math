# instL1SeminormedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0027b2cc72c3669f1181f0f57690d1c47cb5e35571ec32c3ef3f973f270dc269",
  "kind": "instance",
  "lexical_name": "instL1SeminormedRing",
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
  "slug": "instl1seminormedring--207416472e633f8e5c511c66",
  "source": {
    "blob": "c14d8f72f5056142e93c73729d30d16ad338386d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 222,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:207416472e633f8e5c511c66124e29d94f91ec7cbaffd8e46f4ed2d4ffc36478",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0027b2cc72c3669f1181f0f57690d1c47cb5e35571ec32c3ef3f973f270dc269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instL1SeminormedRing : SeminormedRing (tsze R M) where
  norm_mul_le
  | ⟨r₁, m₁⟩, ⟨r₂, m₂⟩ => by
    simp_rw [norm_def]
    calc ‖r₁ * r₂‖ + ‖r₁ • m₂ + MulOpposite.op r₂ • m₁‖
    _ ≤ ‖r₁‖ * ‖r₂‖ + (‖r₁‖ * ‖m₂‖ + ‖r₂‖ * ‖m₁‖) := by
      gcongr
      · apply norm_mul_le
      · refine norm_add_le_of_le ?_ ?_ <;>
        apply norm_smul_le
    _ ≤ ‖r₁‖ * ‖r₂‖ + (‖r₁‖ * ‖m₂‖ + ‖r₂‖ * ‖m₁‖) + (‖m₁‖ * ‖m₂‖) := by
      apply le_add_of_nonneg_right
      positivity
    _ = (‖r₁‖ + ‖m₁‖) * (‖r₂‖ + ‖m₂‖) := by ring
  __ : SeminormedAddCommGroup (tsze R M) := inferInstance
  __ : Ring (tsze R M) := inferInstance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant2afe79cd3c871354e4e8ed4faaaddf329420ed740566e5099b157c51d12fa1e1.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c14d8f72f5056142e93c73729d30d16ad338386d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
