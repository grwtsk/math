# generatedPartialPairIsValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7515316a3d9c4bd9eaf9b1718e719feb0260a7f8f050a7e516027f161853f924",
  "kind": "def",
  "lexical_name": "generatedPartialPairIsValid",
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
  "slug": "generatedpartialpairisvalid--b56e423dd18b14ee38138ea3",
  "source": {
    "blob": "717b30d74a420f15d9d2c04c86c1ff55998069d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Moebius/Checks/OwnerAudit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b56e423dd18b14ee38138ea3fa2719c1b13e1f61595c61600d9ec100c1c3799f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/Checks/OwnerAudit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7515316a3d9c4bd9eaf9b1718e719feb0260a7f8f050a7e516027f161853f924`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def generatedPartialPairIsValid (env : Environment) (owner : Name)
    (info : ConstantInfo) (entry : GeneratedPartialRuntimeEntry) : Bool :=
  info.name == entry.helper && owner == entry.owner &&
  Compiler.mkUnsafeRecName entry.original == entry.helper &&
  match info, env.find? entry.original with
  | .defnInfo helper, some (.defnInfo original) =>
      helper.safety == .partial && original.safety == .safe &&
      Expr.equal info.type original.type && info.levelParams == original.levelParams &&
      match env.getModuleIdxFor? info.name, env.getModuleIdxFor? entry.original with
      | some helperIdx, some originalIdx =>
          env.header.moduleNames[helperIdx]! == entry.owner &&
          env.header.moduleNames[originalIdx]! == entry.owner
      | _, _ => false
  | _, _ => false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Moebius/Checks/OwnerAudit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/Checks/OwnerAudit.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717b30d74a420f15d9d2c04c86c1ff55998069d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
