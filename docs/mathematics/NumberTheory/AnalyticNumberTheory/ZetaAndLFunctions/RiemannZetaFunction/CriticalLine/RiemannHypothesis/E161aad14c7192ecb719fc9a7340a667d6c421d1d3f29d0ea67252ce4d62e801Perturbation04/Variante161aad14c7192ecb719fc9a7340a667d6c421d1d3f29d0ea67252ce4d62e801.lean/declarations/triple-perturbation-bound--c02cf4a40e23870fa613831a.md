# triple_perturbation_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60536416ef3f7b8cc1a09de4c997a04db559cab2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 14,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c264182-da0b-c53f-fc24-bb333384d34c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2663f294-3c0a-e46a-b6a5-b6b054535549",
  "kind": "theorem",
  "lexical_name": "triple_perturbation_bound",
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
  "slug": "triple-perturbation-bound--c02cf4a40e23870fa613831a",
  "source": {
    "blob": "60536416ef3f7b8cc1a09de4c997a04db559cab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 14,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801Perturbation04/Variante161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c02cf4a40e23870fa613831a46b2bd8e7d4cd8ed46c98ee3bfef472a0343f07d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801Perturbation04/Variante161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2663f294-3c0a-e46a-b6a5-b6b054535549`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem triple_perturbation_bound
    {a b c e f g A B C E F G : ℝ}
    (ha : |a| ≤ A) (hb : |b| ≤ B) (hc : |c| ≤ C)
    (he : |e| ≤ E) (hf : |f| ≤ F) (hg : |g| ≤ G) :
    |(a+e)*(b+f)*(c+g)-a*b*c| ≤ (A+E)*(B+F)*(C+G)-A*B*C := by
  have hA := (abs_nonneg a).trans ha
  have hB := (abs_nonneg b).trans hb
  have hC := (abs_nonneg c).trans hc
  have hE := (abs_nonneg e).trans he
  have hF := (abs_nonneg f).trans hf
  have hG := (abs_nonneg g).trans hg
  calc
    _ = |a*b*g+a*f*c+e*b*c+a*f*g+e*b*g+e*f*c+e*f*g| := by congr 1; ring
    _ ≤ |a*b*g|+|a*f*c|+|e*b*c|+|a*f*g|+|e*b*g|+|e*f*c|+|e*f*g| :=
      abs_add_seven _ _ _ _ _ _ _
    _ ≤ A*B*G+A*F*C+E*B*C+A*F*G+E*B*G+E*F*C+E*F*G := by
      simp only [abs_mul]
      gcongr
    _ = _ := by ring

/-- The polynomial with absolute determinant coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801Perturbation04/Variante161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801Perturbation04/Variante161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60536416ef3f7b8cc1a09de4c997a04db559cab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
