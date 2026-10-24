# causalSourceTail_square_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:277d55a6-dd8d-12ac-e639-948b685d213f",
  "kind": "theorem",
  "lexical_name": "causalSourceTail_square_integrable",
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
  "slug": "causalsourcetail-square-integrable--1032739f4b30a5a58885ae73",
  "source": {
    "blob": "37e03688cb4d9fa6cfcea6a16396cadafe82e43d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 290,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1032739f4b30a5a58885ae731608c315ac77cadf1173a8b1d0e552545462d07c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:277d55a6-dd8d-12ac-e639-948b685d213f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalSourceTail_square_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun x ↦ causalSourceTail A x ^ 2) := by
  apply ((causalSourceTail_contDiff hA).continuous.pow 2).integrable_of_hasCompactSupport
  convert (causalSourceTail_hasCompactSupport hA).mul_right
      (f' := causalSourceTail A) using 1 <;> first | rfl | (funext x; exact pow_two _)

/-- The source/tail signed product is integrable before the compact-double comparison. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37e03688cb4d9fa6cfcea6a16396cadafe82e43d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
