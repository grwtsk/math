# actual_five_eight_source_difference_norm_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d201b17-ea05-5107-fbf4-c72f76b12ef5",
  "kind": "theorem",
  "lexical_name": "actual_five_eight_source_difference_norm_pos",
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
  "slug": "actual-five-eight-source-difference-norm-pos--b740410298c453ae1e56c90e",
  "source": {
    "blob": "5108bdfc485974587935bf314982ac965f07d67d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceMetric/Variant715fcce9a9dc8cfed8c42fd1f388044cc9853e2afce9e339ed315e759e60c21f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b740410298c453ae1e56c90ed9e141f61f4e71f7d6cfa25d02516db6a031663c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceMetric/Variant715fcce9a9dc8cfed8c42fd1f388044cc9853e2afce9e339ed315e759e60c21f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d201b17-ea05-5107-fbf4-c72f76b12ef5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_five_eight_source_difference_norm_pos (q : ComplexL2)
    (hq : q =ᵐ[volume] fun x => (normalizedTest explicitSecondDerivative 2 x : ℂ)) :
    0 < ‖orbitAtom q false false 5 - orbitAtom q false false 8‖ :=
  norm_pos_iff.mpr (actual_five_eight_source_difference_ne_zero q hq)

open scoped BigOperators

/-- One actual logarithmic channel, retaining each original translate and its
full scalar coefficient; it is the original/original part of source synthesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceMetric/Variant715fcce9a9dc8cfed8c42fd1f388044cc9853e2afce9e339ed315e759e60c21f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceMetric/Variant715fcce9a9dc8cfed8c42fd1f388044cc9853e2afce9e339ed315e759e60c21f.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5108bdfc485974587935bf314982ac965f07d67d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
