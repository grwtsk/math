# all_real_source_lower_of_original_Mangoldt_work_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11e97716-3ff9-ff06-985d-985284e6d92d",
  "kind": "theorem",
  "lexical_name": "all_real_source_lower_of_original_Mangoldt_work_tail",
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
  "slug": "all-real-source-lower-of-original-mangoldt-work-tail--a6554820803d071915169d8d",
  "source": {
    "blob": "af329ed368cb819c42318eff667edbb46bc37c6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/67998fa9b97a69b9b8abSourceMangoldtDirectBudget/Variant95e5b38fa06be8de7d94731136a14371dbec68e6c8c8c6618494a8c349026926.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6554820803d071915169d8de00681f8a97d4280c8e7260288022d26c41770b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/67998fa9b97a69b9b8abSourceMangoldtDirectBudget/Variant95e5b38fa06be8de7d94731136a14371dbec68e6c8c8c6618494a8c349026926.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11e97716-3ff9-ff06-985d-985284e6d92d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_source_lower_of_original_Mangoldt_work_tail
    (C R : ℝ) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → -C ≤ criticalMangoldtWork A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (C - 1 + criticalBaselineCorrection R)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail (C - 1 + criticalBaselineCorrection R) R hR
  intro A hRA
  exact residual_upper_of_original_Mangoldt_work_lower C R A hR hRA (hwork A hRA)

end
end RH16ResumeBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/67998fa9b97a69b9b8abSourceMangoldtDirectBudget/Variant95e5b38fa06be8de7d94731136a14371dbec68e6c8c8c6618494a8c349026926.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/67998fa9b97a69b9b8abSourceMangoldtDirectBudget/Variant95e5b38fa06be8de7d94731136a14371dbec68e6c8c8c6618494a8c349026926.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af329ed368cb819c42318eff667edbb46bc37c6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
