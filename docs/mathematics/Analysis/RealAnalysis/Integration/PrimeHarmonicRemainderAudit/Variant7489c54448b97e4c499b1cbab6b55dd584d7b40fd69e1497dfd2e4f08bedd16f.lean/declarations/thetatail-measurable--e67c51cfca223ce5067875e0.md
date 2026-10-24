# thetaTail_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a912423e032d75aa6f63893733276776a329b5ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:624ba4ad-7090-4d75-4812-918f81913563",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e389d692-9c7b-a7dd-1597-1018f201ff3d",
  "kind": "theorem",
  "lexical_name": "thetaTail_measurable",
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
  "slug": "thetatail-measurable--e67c51cfca223ce5067875e0",
  "source": {
    "blob": "a912423e032d75aa6f63893733276776a329b5ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e67c51cfca223ce5067875e030ea6b493d23a616ccee73ee14ccfe0b879cb294",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e389d692-9c7b-a7dd-1597-1018f201ff3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_measurable : Measurable thetaTail := by
  have hm : Measurable (fun p : ℝ × ℝ => if p.1 < p.2 then thetaLogError p.2 else 0) :=
    Measurable.ite (measurableSet_lt measurable_fst measurable_snd)
      (thetaLogError_measurable.comp measurable_snd) measurable_const
  have hi := hm.stronglyMeasurable.integral_prod_right' (ν := (volume : Measure ℝ))
  have he (u : ℝ) : (∫ v : ℝ, if u < v then thetaLogError v else 0) = thetaTail u := by
    change (∫ v : ℝ, (Ioi u).indicator thetaLogError v) = _
    exact integral_indicator measurableSet_Ioi
  convert hi.measurable using 1
  funext u
  exact (he u).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variant7489c54448b97e4c499b1cbab6b55dd584d7b40fd69e1497dfd2e4f08bedd16f.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a912423e032d75aa6f63893733276776a329b5ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
