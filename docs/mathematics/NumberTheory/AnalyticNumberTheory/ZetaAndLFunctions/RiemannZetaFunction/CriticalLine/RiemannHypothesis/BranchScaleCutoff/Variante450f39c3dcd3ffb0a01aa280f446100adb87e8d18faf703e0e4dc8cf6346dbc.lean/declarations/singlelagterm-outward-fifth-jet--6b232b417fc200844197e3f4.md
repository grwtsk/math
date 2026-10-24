# singleLagTerm_outward_fifth_jet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0e8b9e0-ab3e-8160-a4b1-8293472595b6",
  "kind": "theorem",
  "lexical_name": "singleLagTerm_outward_fifth_jet",
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
  "slug": "singlelagterm-outward-fifth-jet--6b232b417fc200844197e3f4",
  "source": {
    "blob": "857cbf477d72101af3a07798674c58f93478c66d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 152,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchScaleCutoff/Variante450f39c3dcd3ffb0a01aa280f446100adb87e8d18faf703e0e4dc8cf6346dbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b232b417fc200844197e3f424dd58c0f26a23f9f58d9d86fd3d03b0eb877f62",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchScaleCutoff/Variante450f39c3dcd3ffb0a01aa280f446100adb87e8d18faf703e0e4dc8cf6346dbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0e8b9e0-ab3e-8160-a4b1-8293472595b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singleLagTerm_outward_fifth_jet {a : ℝ} (w : ℝ) (ha : 0 < a) :
    iteratedDerivWithin 5 (singleLagTerm w a) (Icc (a / 2) a) a = 0 := by
  have he : EqOn (singleLagTerm w a) (fun _ ↦ 0) (Icc (a / 2) a) := by
    intro A hA
    exact singleLagTerm_zero_below w (by linarith [hA.1]) hA.2
  rw [iteratedDerivWithin_congr he (show a ∈ Icc (a / 2) a by
    constructor <;> linarith)]
  simp

/-- A nonzero literal lag weight forces failure of C⁵ at its moving cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchScaleCutoff/Variante450f39c3dcd3ffb0a01aa280f446100adb87e8d18faf703e0e4dc8cf6346dbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchScaleCutoff/Variante450f39c3dcd3ffb0a01aa280f446100adb87e8d18faf703e0e4dc8cf6346dbc.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `857cbf477d72101af3a07798674c58f93478c66d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
