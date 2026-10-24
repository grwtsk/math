# zeta_local_zero_count_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401f1318bdac29d95211200b7315ce03b0c8f64d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 926,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f624d92-2e10-fa71-1f66-0afdcaa620a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dfbb75c4-1ba9-ecca-aced-2c3d02b35a63",
  "kind": "theorem",
  "lexical_name": "zeta_local_zero_count_explicit",
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
  "slug": "zeta-local-zero-count-explicit--4f0acabc0f5bcf60d93afc4b",
  "source": {
    "blob": "401f1318bdac29d95211200b7315ce03b0c8f64d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 938,
    "line": 926,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f0acabc0f5bcf60d93afc4be909643525fdf46e2cba4a41f9c8e29e53113b7b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfbb75c4-1ba9-ecca-aced-2c3d02b35a63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 926–938.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_local_zero_count_explicit (t : ℝ) :
    (Zeta23.Ncount t (t + 1) : ℝ) ≤ 540000000 * Real.log (|t| + 3) := by
  rcases le_or_gt 6 (|t + 1/2|) with h | h
  · exact zeta_local_count_explicit_large t h
  · refine (zeta_local_count_box t h).trans ?_
    have h1 : (1:ℝ) ≤ Real.log (|t| + 3) := by
      rw [Real.le_log_iff_exp_le (by linarith [abs_nonneg t])]
      have := Real.exp_one_lt_d9
      linarith [abs_nonneg t]
    nlinarith

end WeilEF
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant249f0ff220ddeebc014bc82b880a6d97121ba10b579a2f6ae8c0805e5991baaf.lean#L926).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401f1318bdac29d95211200b7315ce03b0c8f64d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
