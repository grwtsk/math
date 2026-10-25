# joint_solved_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd5d223d-cfce-f12d-5862-b02f8646c616",
  "kind": "theorem",
  "lexical_name": "joint_solved_sound",
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
  "slug": "joint-solved-sound--0a22d0cabded85018e6b1cad",
  "source": {
    "blob": "1469553e457b3be8c382aebe3d8080a391efb443",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JointUnified/Variant6f3890c9369f41af15577fe2a2d42f233fe98e36bce45d3b7138905c2072baf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a22d0cabded85018e6b1cad0da89ef1f8451acbb6fa8004db67d0393fe62cef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JointUnified/Variant6f3890c9369f41af15577fe2a2d42f233fe98e36bce45d3b7138905c2072baf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd5d223d-cfce-f12d-5862-b02f8646c616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem joint_solved_sound
    {cut : JointCutBinding}
    {profile : JointResolverProfile cut Context N D Packet}
    (result : JointResolution profile)
    (positive : result.IsPositive) :
    ∃ candidate : JointCandidate cut Context N D,
      CertifiedJointTensorAbelReynoldsSEAReuse candidate := by
  cases result with
  | solved _ _ candidate =>
      exact ⟨candidate, candidate.certified⟩
  | unknown =>
      exact positive.elim
  | rejected =>
      exact positive.elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JointUnified/Variant6f3890c9369f41af15577fe2a2d42f233fe98e36bce45d3b7138905c2072baf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JointUnified/Variant6f3890c9369f41af15577fe2a2d42f233fe98e36bce45d3b7138905c2072baf4.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1469553e457b3be8c382aebe3d8080a391efb443` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
