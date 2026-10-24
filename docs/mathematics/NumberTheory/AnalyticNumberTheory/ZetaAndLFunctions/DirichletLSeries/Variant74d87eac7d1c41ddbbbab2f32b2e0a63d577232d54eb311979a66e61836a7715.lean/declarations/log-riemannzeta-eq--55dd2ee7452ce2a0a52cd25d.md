# log_riemannZeta_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca6aec6b78d565a5239855953de9829f1aacd6d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74d87eac7d1c41ddbbbab2f32b2e0a63d577232d54eb311979a66e61836a7715.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:699b75f8-30f2-db07-7204-151182452c05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f9ff4e4-97bd-9e50-4201-fafe3999a400",
  "kind": "theorem",
  "lexical_name": "log_riemannZeta_eq",
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
  "slug": "log-riemannzeta-eq--55dd2ee7452ce2a0a52cd25d",
  "source": {
    "blob": "ca6aec6b78d565a5239855953de9829f1aacd6d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 273,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant74d87eac7d1c41ddbbbab2f32b2e0a63d577232d54eb311979a66e61836a7715.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55dd2ee7452ce2a0a52cd25d4ed02391a677c0aeb442420d333deae8cc060701",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant74d87eac7d1c41ddbbbab2f32b2e0a63d577232d54eb311979a66e61836a7715.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f9ff4e4-97bd-9e50-4201-fafe3999a400`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_riemannZeta_eq {s : ℝ} (hs : 1 < s) :
    Real.log (riemannZeta (s : ℂ)).re = ∑' n, Λ n / (n ^ s * Real.log n) := by
  rw [← riemannZeta_eq_exp_LSeries (by simpa using hs), LSeries_def₀ (by simp)]
  convert Real.log_exp _
  convert exp_ofReal_re _
  push_cast
  congr! 2 with p
  rw [ofReal_cpow (by positivity)]
  simp [field]

end LogDirichlet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant74d87eac7d1c41ddbbbab2f32b2e0a63d577232d54eb311979a66e61836a7715.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variant74d87eac7d1c41ddbbbab2f32b2e0a63d577232d54eb311979a66e61836a7715.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca6aec6b78d565a5239855953de9829f1aacd6d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
