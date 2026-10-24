# estimate_of_residual_tail_direct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be0d939a-5d36-f4f9-fb3d-5fd016a073ab",
  "kind": "theorem",
  "lexical_name": "estimate_of_residual_tail_direct",
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
  "slug": "estimate-of-residual-tail-direct--73c662c03db9a284c39ea1d8",
  "source": {
    "blob": "812f3a5ea64673208389ace825ca8c389700ca6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceResidualBudget/Variantf47f6e3705428e6480640037828153d22a5b8ac504ed8c22f883b475fe028361.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73c662c03db9a284c39ea1d81790efaeeb1c1638e4ddbf26fc3c2d1e0275c413",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceResidualBudget/Variantf47f6e3705428e6480640037828153d22a5b8ac504ed8c22f883b475fe028361.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be0d939a-5d36-f4f9-fb3d-5fd016a073ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_residual_tail_direct (M R : ℝ) (hR : 1 ≤ R)
    (hres : ∀ A : ℝ, R ≤ A → mertensResidual A ≤ M) :
    CorrelationAssembly.EstimateObligation :=
  ⟨min (originalPrefixLower R) (archimedeanMultiplier 0 - 2 * M),
    all_real_source_lower_of_residual_tail M R hR hres⟩

end
end RH16ResumeBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceResidualBudget/Variantf47f6e3705428e6480640037828153d22a5b8ac504ed8c22f883b475fe028361.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceResidualBudget/Variantf47f6e3705428e6480640037828153d22a5b8ac504ed8c22f883b475fe028361.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `812f3a5ea64673208389ace825ca8c389700ca6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
