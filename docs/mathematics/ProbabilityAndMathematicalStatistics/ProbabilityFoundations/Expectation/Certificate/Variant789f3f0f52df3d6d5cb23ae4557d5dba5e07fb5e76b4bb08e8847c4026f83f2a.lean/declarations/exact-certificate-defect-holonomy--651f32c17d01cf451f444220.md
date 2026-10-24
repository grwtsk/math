# exact_certificate_defect_holonomy

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
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e503766-f437-e66f-1c89-f4a12a36a786",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f83b113e-1159-c0c6-6f62-d8ce28294265",
  "kind": "theorem",
  "lexical_name": "exact_certificate_defect_holonomy",
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
  "slug": "exact-certificate-defect-holonomy--651f32c17d01cf451f444220",
  "source": {
    "blob": "28e8edb9b864f9d2effd293366f923ca3e3f59c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 128,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Certificate/Variant789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:651f32c17d01cf451f444220c21e615ae314c18fddbb7141d7a76c283200241b",
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

Occurrence: `result:f83b113e-1159-c0c6-6f62-d8ce28294265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_certificate_defect_holonomy
    {graph : GraphCut}
    {model : OperatorModel}
    {Test : Type uTest}
    {Chart : Type uChart}
    {Wall : Type uWall}
    (certificate :
      ExactResidueDeflectionCertificate
        graph model Test Chart Wall)
    (bypass : certificate.cut.Bypass)
    (residue : Residue3) :
    DeflectionPath.transportResidue
        certificate.traceSystem.polarized.phase.phase
        (certificate.cut.defectLoop bypass)
        residue =
      residue.reflect :=
  PhaseTransport.defectLoop_reflects
    certificate.traceSystem.polarized.phase
    bypass residue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Certificate/Variant789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Certificate/Variant789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28e8edb9b864f9d2effd293366f923ca3e3f59c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
