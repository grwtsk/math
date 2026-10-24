# exists_uniform_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5c561a5-c1ca-4c3b-1380-be21fd259f77",
  "kind": "theorem",
  "lexical_name": "exists_uniform_tail_bound",
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
  "slug": "exists-uniform-tail-bound--97101b7aa6f2473ce1c46992",
  "source": {
    "blob": "e99e6f0e823d4727d27c5fe9cb591031001ee621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 465,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97101b7aa6f2473ce1c469922fa007107a79054aad652fe82f5aae2eb5aa19a4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5c561a5-c1ca-4c3b-1380-be21fd259f77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_uniform_tail_bound :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ A : ℝ, 1 ≤ A → ∀ T : ℝ, 2 ≤ T →
      Summable (fun o : HeightTail T ↦ normalizedTransform A (shiftedValue o.val) ^ 2) ∧
        tailError A T ≤ K * A ^ (-9 : ℝ) * Real.exp A / T :=
  ⟨tailConstant, tailConstant_nonneg, fun A hA T hT ↦ actual_source_tail_bound A T hA hT⟩

/-- The finite retained ordinary-square readout approximates the complete source sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e99e6f0e823d4727d27c5fe9cb591031001ee621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
