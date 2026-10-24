# continuous_integral_continuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:572dc740-1094-6a70-0880-b5fa10db116c",
  "kind": "lemma",
  "lexical_name": "continuous_integral_continuousMap",
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
  "slug": "continuous-integral-continuousmap--8f44e0742c3a5eaa874af3fd",
  "source": {
    "blob": "9dcd944ac71f1e139e8baba7e4dba96d2cdbf1eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 435,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant2e90fce19fab0f6a81f94d5e4c872ad872a02c02a3fd1c45c27c6e0b10ea4ff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f44e0742c3a5eaa874af3fd400f98a0f2987c79c51799a9e892150da715f860",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant2e90fce19fab0f6a81f94d5e4c872ad872a02c02a3fd1c45c27c6e0b10ea4ff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:572dc740-1094-6a70-0880-b5fa10db116c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_integral_continuousMap [FunLike F X ℝ] [ContinuousMapClass F X ℝ] (f : F) :
    Continuous fun μ : ProbabilityMeasure X ↦ ∫ x, f x ∂μ :=
  continuous_iff_forall_continuousMap_continuous_integral.1 continuous_id ⟨f, map_continuous f⟩

end convergence_in_distribution -- section

section Hausdorff

variable [TopologicalSpace Ω] [HasOuterApproxClosed Ω] [BorelSpace Ω]
variable (Ω)

/-- On topological spaces where indicators of closed sets have decreasing approximating sequences of
continuous functions (`HasOuterApproxClosed`), the topology of convergence in distribution of Borel
probability measures is Hausdorff (`T2Space`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant2e90fce19fab0f6a81f94d5e4c872ad872a02c02a3fd1c45c27c6e0b10ea4ff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant2e90fce19fab0f6a81f94d5e4c872ad872a02c02a3fd1c45c27c6e0b10ea4ff6.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dcd944ac71f1e139e8baba7e4dba96d2cdbf1eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
