# dirichletSeriesComplex_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e160a16d8d9e0c99f745e61e8dddbcaca9039f8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e766d88b-e100-6a6f-4680-0767f0867110",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53661625-f80e-09f1-322f-ed0df8e4b7cc",
  "kind": "theorem",
  "lexical_name": "dirichletSeriesComplex_add",
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
  "slug": "dirichletseriescomplex-add--349866d41c59c86786299dc4",
  "source": {
    "blob": "e160a16d8d9e0c99f745e61e8dddbcaca9039f8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 87,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/DirichletSeries/Variantea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:349866d41c59c86786299dc4e9795904a36b61240648431ec61525178627d0b0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/DirichletSeries/Variantea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53661625-f80e-09f1-322f-ed0df8e4b7cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletSeriesComplex_add
    (a b : ArithFn ℂ)
    (σ : Real)
    (ha : DirichletAbsSummableComplex a σ)
    (hb : DirichletAbsSummableComplex b σ) :
    dirichletSeriesComplex (fun n => a n + b n) σ =
      dirichletSeriesComplex a σ + dirichletSeriesComplex b σ := by
  have ha' : Summable fun n => dirichletTermComplexCoeff a σ n :=
    Summable.of_norm ha
  have hb' : Summable fun n => dirichletTermComplexCoeff b σ n :=
    Summable.of_norm hb
  have hterm :
      (fun n => dirichletTermComplexCoeff (fun n => a n + b n) σ n) =
        fun n =>
          dirichletTermComplexCoeff a σ n +
            dirichletTermComplexCoeff b σ n := by
    funext n
    by_cases hn : n = 0
    · simp [dirichletTermComplexCoeff, hn]
    · simp [dirichletTermComplexCoeff, hn, add_mul]
  calc
    dirichletSeriesComplex (fun n => a n + b n) σ
        = ∑' n : Nat,
            (dirichletTermComplexCoeff a σ n +
              dirichletTermComplexCoeff b σ n) := by
            simp [dirichletSeriesComplex, hterm]
    _ = dirichletSeriesComplex a σ + dirichletSeriesComplex b σ := by
            simpa [dirichletSeriesComplex] using ha'.tsum_add hb'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/DirichletSeries/Variantea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/DirichletSeries/Variantea084e5e9aa45529c8a0f70e77f608eef613dbead9f50d941671051184358d5a.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e160a16d8d9e0c99f745e61e8dddbcaca9039f8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
