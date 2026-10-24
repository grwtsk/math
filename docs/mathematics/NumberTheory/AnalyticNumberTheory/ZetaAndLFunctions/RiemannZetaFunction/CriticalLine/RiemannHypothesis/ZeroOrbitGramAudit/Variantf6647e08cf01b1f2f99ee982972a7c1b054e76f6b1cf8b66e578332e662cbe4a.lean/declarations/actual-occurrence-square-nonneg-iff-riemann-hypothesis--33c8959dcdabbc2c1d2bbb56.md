# actual_occurrence_square_nonneg_iff_riemann_hypothesis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51f7b9197afde12e543c79927053a61070438cb9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 323,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6647e08cf01b1f2f99ee982972a7c1b054e76f6b1cf8b66e578332e662cbe4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0692bdf2-632d-eb13-571c-ae97fed63124",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edd8fb71-b55e-c06a-f8ed-fcfa0d2bd05e",
  "kind": "theorem",
  "lexical_name": "actual_occurrence_square_nonneg_iff_riemann_hypothesis",
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
  "slug": "actual-occurrence-square-nonneg-iff-riemann-hypothesis--33c8959dcdabbc2c1d2bbb56",
  "source": {
    "blob": "51f7b9197afde12e543c79927053a61070438cb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 323,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroOrbitGramAudit/Variantf6647e08cf01b1f2f99ee982972a7c1b054e76f6b1cf8b66e578332e662cbe4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33c8959dcdabbc2c1d2bbb565a4b97a72f20c827ddff6c74439ec4106c996c22",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroOrbitGramAudit/Variantf6647e08cf01b1f2f99ee982972a7c1b054e76f6b1cf8b66e578332e662cbe4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edd8fb71-b55e-c06a-f8ed-fcfa0d2bd05e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_occurrence_square_nonneg_iff_riemann_hypothesis :
    ActualOccurrenceSquareNonneg ↔ _root_.RiemannHypothesis := by
  constructor
  · exact fun h ↦ estimate_iff_riemann_hypothesis.mp (estimate_of_actual_occurrence_square_nonneg h)
  · intro hRH A hA o
    have hi := actual_transform_im_zero A hA _ (shifted_value_re_zero_of_rh hRH o)
    simp only [pow_two, Complex.mul_re, hi, mul_zero, sub_zero]
    exact mul_self_nonneg _

/-- The two prescribed pole factors remain zeros of the actual unnormalized test transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroOrbitGramAudit/Variantf6647e08cf01b1f2f99ee982972a7c1b054e76f6b1cf8b66e578332e662cbe4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroOrbitGramAudit/Variantf6647e08cf01b1f2f99ee982972a7c1b054e76f6b1cf8b66e578332e662cbe4a.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51f7b9197afde12e543c79927053a61070438cb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
