# limitTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bfbae2f3281a8f7cae4a6aabf7abcf515a69b3d54210ab5b57d74712cc266fa",
  "kind": "def",
  "lexical_name": "limitTrace",
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
  "slug": "limittrace--c7dfe7b0968116f09c6c1942",
  "source": {
    "blob": "3efe01952b9add7896ea09cf0aa9890019b72e40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 114,
    "path": "GRWTSK/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7dfe7b0968116f09c6c194240b84011c9f93aa2d85d34a4add74791d2876a07",
  "verification": {
    "reference": "docs/verification/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bfbae2f3281a8f7cae4a6aabf7abcf515a69b3d54210ab5b57d74712cc266fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def limitTrace
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (certificate :
      CylinderEquivalenceCertificate traceSystem) :
    CylinderObservable certificate → ℂ :=
  Quotient.lift
    (fun presentation =>
      (finiteCrossedProductStableTrace
        (boundary.cut presentation.stage)).trace
          presentation.observable)
    (by
      intro left right related
      exact certificate.traceRespects related)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CylinderTrace/Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3efe01952b9add7896ea09cf0aa9890019b72e40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
