# CertifiedPrimitiveCore.infeasible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b953a93-1d65-5243-5cd6-a305b4f66167",
  "kind": "theorem",
  "lexical_name": "CertifiedPrimitiveCore.infeasible",
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
  "slug": "certifiedprimitivecore-infeasible--0fdfc385f8c33b8d326579f4",
  "source": {
    "blob": "c4d0cd6573c8b59b8464149ab7481ac191fa636d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Provenance/Variante2af38e904e0b9f52a43950a3d5789a9b6045aed34490a535556bf54a88b6348.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fdfc385f8c33b8d326579f402c3e94ca89dc97fbca6598ce7f361f9ce6d4388",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Provenance/Variante2af38e904e0b9f52a43950a3d5789a9b6045aed34490a535556bf54a88b6348.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b953a93-1d65-5243-5cd6-a305b4f66167`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CertifiedPrimitiveCore.infeasible
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    {SnapshotId : Type uSnapshot}
    {RegistryRevision : Type uRevision}
    {CheckerId : Type uChecker}
    {CheckerVersion : Type uVersion}
    {EvidenceId : Type uEvidence}
    [DecidableEq EvidenceId]
    (certificate :
      CertifiedPrimitiveCore
        semantics registry partial
        SnapshotId RegistryRevision
        CheckerId CheckerVersion EvidenceId) :
    semantics.Infeasible
      certificate.mathematicalCore.constraints
      partial :=
  certificate.mathematicalCore.infeasible

end Mathematics.BinaryFrontier.Obstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Provenance/Variante2af38e904e0b9f52a43950a3d5789a9b6045aed34490a535556bf54a88b6348.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Provenance/Variante2af38e904e0b9f52a43950a3d5789a9b6045aed34490a535556bf54a88b6348.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4d0cd6573c8b59b8464149ab7481ac191fa636d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
