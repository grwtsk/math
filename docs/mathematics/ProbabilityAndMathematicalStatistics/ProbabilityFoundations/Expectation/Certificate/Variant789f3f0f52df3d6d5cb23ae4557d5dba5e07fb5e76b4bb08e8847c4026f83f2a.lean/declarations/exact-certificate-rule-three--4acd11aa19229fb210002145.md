# exact_certificate_rule_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28e8edb9b864f9d2effd293366f923ca3e3f59c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86996a58-fdf5-edad-933d-76bb3c9bfa84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72a690be-533a-e15b-0c1a-4bf23847f40e",
  "kind": "theorem",
  "lexical_name": "exact_certificate_rule_three",
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
  "slug": "exact-certificate-rule-three--4acd11aa19229fb210002145",
  "source": {
    "blob": "28e8edb9b864f9d2effd293366f923ca3e3f59c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 169,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Certificate/Variant789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4acd11aa19229fb210002145457ea915d89b1f9126242f0770feb1590702d205",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Certificate/Variant789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72a690be-533a-e15b-0c1a-4bf23847f40e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_certificate_rule_three
    {graph : GraphCut}
    {model : OperatorModel}
    {Test : Type uTest}
    {Chart : Type uChart}
    {Wall : Type uWall}
    (certificate :
      ExactResidueDeflectionCertificate
        graph model Test Chart Wall)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (safePath :
      path.AllArcs
        (fun arc =>
          certificate.cut.safeArc arc = true))
    (reflected :
      path.phaseProduct
          certificate.traceSystem.polarized.phase.phase =
        .reflect)
    (polarizedSection : PolarizedSection)
    (test : Test) :
    path.AllArcs
        (fun arc =>
          certificate.cut.safeArc arc = true) ∧
      0 <
        (polarizedSection.transport
          certificate.traceSystem.polarized
          path).amplitude.value ∧
      (polarizedSection.transport
        certificate.traceSystem.polarized
        path).phaseResidue.Safe ∧
      (polarizedSection.transport
          certificate.traceSystem.polarized
          path).phaseResidue =
        polarizedSection.phaseResidue.reflect ∧
      polarPacketEnergy
          certificate.traceSystem target test =
        polarPacketEnergy
          certificate.traceSystem source test := by
  refine ⟨safePath, ?_, ?_, ?_, ?_⟩
  · exact
      exact_certificate_amplitude_positive
        certificate path polarizedSection
  · exact
      (polarizedSection.transport
        certificate.traceSystem.polarized
        path).phaseSafe
  · change
      path.transportResidue
          certificate.traceSystem.polarized.phase.phase
          polarizedSection.phaseResidue =
        polarizedSection.phaseResidue.reflect
    unfold DeflectionPath.transportResidue
    rw [reflected]
    rfl
  · exact
      exact_certificate_trace_conservation
        certificate path test

end Mathematics.SemiLocalDefect.ResidueDeflection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Certificate/Variant789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Certificate/Variant789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28e8edb9b864f9d2effd293366f923ca3e3f59c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
