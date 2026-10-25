# ReconstructionDerivation.evaluate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9bc53767f09f3ede590691c6d5ab0be00dc18299fff66db81525aee58e9c0840",
  "kind": "def",
  "lexical_name": "ReconstructionDerivation.evaluate",
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
  "slug": "reconstructionderivation-evaluate--afba5fa0992f66f9715b710e",
  "source": {
    "blob": "c55f7bee8800cfc8e4b7bb8e17cfe82f3d93d480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afba5fa0992f66f9715b710ec46ae1622a19d2cac9be59b9b84cce6790d91bda",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation__SourceOccurrence45363f8f26269ff59f202d2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9bc53767f09f3ede590691c6d5ab0be00dc18299fff66db81525aee58e9c0840`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ReconstructionDerivation.evaluate
    {Artifact : Type u} {RuleId : Type v}
    [DecidableEq Artifact] [DecidableEq RuleId]
    {basis : Finset Artifact} {rules : RuleId → ArtifactRule Artifact}
    {eligible : Finset RuleId}
    (basisBytes : (artifact : Artifact) → artifact ∈ basis → ByteArray) :
    {artifact : Artifact} → ReconstructionDerivation basis rules eligible artifact → ByteArray :=
  ReconstructionDerivation.rec
    (motive := fun _ _ ↦ ByteArray)
    (fun member ↦ basisBytes _ member)
    (fun ruleId _ _ inputBytes ↦
      (rules ruleId).reconstruct (fun input member ↦ inputBytes input member))

/-- Local exactness of the literal basis and every admitted rule composes into
exact reconstruction of the derivation's output.  The reconstructed bytes on
the left are computed only from `basisBytes` and the finite derivation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation__SourceOccurrence45363f8f26269ff59f202d2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/ArtifactDerivation.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c55f7bee8800cfc8e4b7bb8e17cfe82f3d93d480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
