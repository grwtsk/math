# rate_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:293b2b55-8ad0-40e5-7160-078b46301d02",
  "kind": "theorem",
  "lexical_name": "rate_lower",
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
  "slug": "rate-lower--951b464f03db67bc1a25c60a",
  "source": {
    "blob": "134d774d37c6af8190af7b9a3d64fc2e58a17343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant0c73fb2e0ed8c0c53394b94e8ff64a5a2eb91a29c7a768a8415ad469061ae942.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:951b464f03db67bc1a25c60a86e3da833db8aba4e9e8815ede98ac9e362e27e7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant0c73fb2e0ed8c0c53394b94e8ff64a5a2eb91a29c7a768a8415ad469061ae942.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:293b2b55-8ad0-40e5-7160-078b46301d02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem rate_lower {l y : ℝ} (_hl : -2 < l) (hy : l < y) (n : ℕ) :
    lowerCoefficient l * ((n : ℝ) + 1) ≤ y + a n := by
  have h2 : lowerCoefficient l ≤ 2 := min_le_left _ _
  have hl2 : lowerCoefficient l ≤ l + 2 := min_le_right _ _
  have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  have hm := mul_nonneg (sub_nonneg.mpr h2) hn
  dsimp [a, ContinuousResearch.CompensatedGammaIntegral.physicalRate]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant0c73fb2e0ed8c0c53394b94e8ff64a5a2eb91a29c7a768a8415ad469061ae942.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt2/Variant0c73fb2e0ed8c0c53394b94e8ff64a5a2eb91a29c7a768a8415ad469061ae942.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `134d774d37c6af8190af7b9a3d64fc2e58a17343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
