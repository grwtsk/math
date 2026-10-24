# jetBox_of_finite_and_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c0be4f7c53f508292733c2af7ddf883f284e3f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0bb785ef-001a-c836-902a-69d09e8c5f75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6982dbfd-4634-9e72-7460-ee97994bc92c",
  "kind": "theorem",
  "lexical_name": "jetBox_of_finite_and_tail",
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
  "slug": "jetbox-of-finite-and-tail--a4eca18bbb3273b10ca39cf7",
  "source": {
    "blob": "5c0be4f7c53f508292733c2af7ddf883f284e3f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 185,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4eca18bbb3273b10ca39cf76cb3468262dbcb42b5b4f40cfa93ef1052ac27ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6982dbfd-4634-9e72-7460-ee97994bc92c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jetBox_of_finite_and_tail (n : Fin 9) (x f : ℝ)
    (hf : Contains (finiteBox n.val) f)
    (ht : |x - f| ≤ (tailRadius n.val : ℝ)) :
    RankFiveInterval.Contains (RankFiveInterval.jetBox n.val) (2000000 * x) := by
  have hcert :
      |2000000 * ((finiteBox n.val).c : ℝ) - (RankFiveInterval.jetBox n.val).c| +
        2000000 * (((finiteBox n.val).r : ℝ) + (tailRadius n.val : ℝ)) ≤
          (RankFiveInterval.jetBox n.val).r := by
    exact_mod_cast finiteBox_with_tail_inside n
  have hxf : |x - (finiteBox n.val).c| ≤
      (tailRadius n.val : ℝ) + (finiteBox n.val).r := by
    calc
      |x - (finiteBox n.val).c| = |(x - f) + (f - (finiteBox n.val).c)| := by
        congr 1; ring
      _ ≤ |x - f| + |f - (finiteBox n.val).c| := abs_add_le _ _
      _ ≤ (tailRadius n.val : ℝ) + (finiteBox n.val).r := add_le_add ht hf
  unfold RankFiveInterval.Contains
  calc
    |2000000 * x - (RankFiveInterval.jetBox n.val).c| =
        |2000000 * (x - (finiteBox n.val).c) +
          (2000000 * (finiteBox n.val).c - (RankFiveInterval.jetBox n.val).c)| := by
      congr 1; ring
    _ ≤ |2000000 * (x - (finiteBox n.val).c)| +
        |2000000 * ((finiteBox n.val).c : ℝ) - (RankFiveInterval.jetBox n.val).c| := abs_add_le _ _
    _ ≤ (RankFiveInterval.jetBox n.val).r := by
      rw [abs_mul]
      norm_num
      linarith

end RankFiveRationalInterval
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta98ae69f205ce0007bdc0636720d41cd02102569a3fc88b3db83f00cdc540aeb.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c0be4f7c53f508292733c2af7ddf883f284e3f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
