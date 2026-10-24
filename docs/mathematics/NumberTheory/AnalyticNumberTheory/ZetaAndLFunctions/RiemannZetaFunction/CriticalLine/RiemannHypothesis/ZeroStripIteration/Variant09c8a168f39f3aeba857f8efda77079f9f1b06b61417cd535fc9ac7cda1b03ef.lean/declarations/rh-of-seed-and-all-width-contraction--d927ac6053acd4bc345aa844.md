# rh_of_seed_and_all_width_contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:444963ef-0edf-c3d2-00cb-8f5b9819740b",
  "kind": "theorem",
  "lexical_name": "rh_of_seed_and_all_width_contraction",
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
  "slug": "rh-of-seed-and-all-width-contraction--d927ac6053acd4bc345aa844",
  "source": {
    "blob": "e28f5a6b81550ad6f7679d36d6e089f93fdfad60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroStripIteration/Variant09c8a168f39f3aeba857f8efda77079f9f1b06b61417cd535fc9ac7cda1b03ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d927ac6053acd4bc345aa844d9587e966101f0be625cd53cb655ba2626c0bd00",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroStripIteration/Variant09c8a168f39f3aeba857f8efda77079f9f1b06b61417cd535fc9ac7cda1b03ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:444963ef-0edf-c3d2-00cb-8f5b9819740b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rh_of_seed_and_all_width_contraction {q eta : ℝ}
    (hq : 0 < q) (hq1 : q < 1) (heta : 0 < eta)
    (hseed : ZeroStrip eta)
    (hstep : ∀ xi : ℝ, 0 < xi → ZeroStrip xi → ZeroStrip (q * xi)) : RiemannHypothesis :=
  every_geometric_stage_implies_rh hq.le hq1 (every_geometric_stage hq heta hseed hstep)

end
end GRWTSK.RiemannHypothesis.Conversation.ZeroStripIteration
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroStripIteration/Variant09c8a168f39f3aeba857f8efda77079f9f1b06b61417cd535fc9ac7cda1b03ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroStripIteration/Variant09c8a168f39f3aeba857f8efda77079f9f1b06b61417cd535fc9ac7cda1b03ef.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e28f5a6b81550ad6f7679d36d6e089f93fdfad60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
