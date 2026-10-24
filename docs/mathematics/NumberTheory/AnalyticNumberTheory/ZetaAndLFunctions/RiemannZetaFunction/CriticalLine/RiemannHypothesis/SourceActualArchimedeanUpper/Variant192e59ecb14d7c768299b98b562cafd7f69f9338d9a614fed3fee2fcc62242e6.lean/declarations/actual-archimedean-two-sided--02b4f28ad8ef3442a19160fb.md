# actual_archimedean_two_sided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fdff579-9534-faa2-d33c-7c9149383e45",
  "kind": "theorem",
  "lexical_name": "actual_archimedean_two_sided",
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
  "slug": "actual-archimedean-two-sided--02b4f28ad8ef3442a19160fb",
  "source": {
    "blob": "a3b80497be8e67c4ed4d267d1dcc50d9ac23a67f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant192e59ecb14d7c768299b98b562cafd7f69f9338d9a614fed3fee2fcc62242e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02b4f28ad8ef3442a19160fb7d2a391c1b0eb4258b93d412bd3d48de0082a9c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant192e59ecb14d7c768299b98b562cafd7f69f9338d9a614fed3fee2fcc62242e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fdff579-9534-faa2-d33c-7c9149383e45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_archimedean_two_sided {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0 ∧
    archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0 ≤
      (18 * (162826 / 7623 : ℝ)) / A^2 := by
  have hlo := SourceCorrectionEstimate.actual_archimedean_lower A hA
  have hhi := actual_archimedean_quadratic_upper hA
  constructor <;> linarith

end
end FormalResearch.RiemannHypothesis.SourceActualArchimedeanUpper
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant192e59ecb14d7c768299b98b562cafd7f69f9338d9a614fed3fee2fcc62242e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant192e59ecb14d7c768299b98b562cafd7f69f9338d9a614fed3fee2fcc62242e6.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b80497be8e67c4ed4d267d1dcc50d9ac23a67f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
