# envelope_le_radiusBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d5ea146-6382-f817-a482-a97e4a3f1b47",
  "kind": "theorem",
  "lexical_name": "envelope_le_radiusBudget",
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
  "slug": "envelope-le-radiusbudget--582bbe8fc549ba39be5fab8c",
  "source": {
    "blob": "4c21eaaff2b59d78353ce5872dd756264185bcbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 102,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:582bbe8fc549ba39be5fab8cb95874863e26f15ba79e69904e0866696260eba5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d5ea146-6382-f817-a482-a97e4a3f1b47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem envelope_le_radiusBudget (R A : ℝ) (hR : 1 ≤ R) (hA : R ≤ A) :
    envelope A ≤ radiusBudget R := by
  unfold radiusBudget
  by_cases hR3 : R ≤ 3
  · rw [max_eq_left hR3]
    exact envelope_le_peak A (by linarith)
  · have h3R : 3 ≤ R := by linarith
    rw [max_eq_right h3R]
    exact envelope_le_of_three_le R A h3R hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c21eaaff2b59d78353ce5872dd756264185bcbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
