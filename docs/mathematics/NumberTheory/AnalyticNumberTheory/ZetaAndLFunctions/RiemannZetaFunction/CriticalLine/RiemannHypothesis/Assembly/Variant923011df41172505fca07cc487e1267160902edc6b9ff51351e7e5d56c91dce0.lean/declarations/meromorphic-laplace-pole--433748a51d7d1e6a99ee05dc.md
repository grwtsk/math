# meromorphic_laplace_pole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78c7fa64-b5ca-a373-d931-ffe6617d2d76",
  "kind": "theorem",
  "lexical_name": "meromorphic_laplace_pole",
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
  "slug": "meromorphic-laplace-pole--433748a51d7d1e6a99ee05dc",
  "source": {
    "blob": "9d8a856db7cf7e6487368d9b736eb66368890341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 162,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant923011df41172505fca07cc487e1267160902edc6b9ff51351e7e5d56c91dce0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:433748a51d7d1e6a99ee05dc156031a66998b3789ca197f46b82b34a2d9128be",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant923011df41172505fca07cc487e1267160902edc6b9ff51351e7e5d56c91dce0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78c7fa64-b5ca-a373-d931-ffe6617d2d76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphic_laplace_pole :
    MeromorphicLaplacePoleObligation := by
  refine ⟨kernel_checkpoint,
    equation17_growth_checkpoint,
    initial_formula_checkpoint,
    candidate_free_continuation_checkpoint,
    locallyFinite_scaled_values 2 (by norm_num),
    locallyFinite_scaled_values (-2) (by norm_num),
    continuedTransform_meromorphic,
    continuedTransform_analytic_positive_real, ?_⟩
  intro p hp
  obtain ⟨_, horder, _, _, hcoeff, _, _⟩ :=
    source_exact_ninth_order_pole p hp
  refine ⟨horder, ?_, hcoeff⟩
  unfold pointPairPrincipalCoefficient
  unfold principalCoefficient
  rfl

end
end FormalResearch.RiemannHypothesis.Laplace.Assembly
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant923011df41172505fca07cc487e1267160902edc6b9ff51351e7e5d56c91dce0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant923011df41172505fca07cc487e1267160902edc6b9ff51351e7e5d56c91dce0.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d8a856db7cf7e6487368d9b736eb66368890341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
