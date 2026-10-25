# getProofWithFreshMVarLevels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b01c639380e2bb7b2b9a80aadc091198d092a6e5d4aeb11f282a77ab44490947",
  "kind": "def",
  "lexical_name": "getProofWithFreshMVarLevels",
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
  "slug": "getproofwithfreshmvarlevels--c26ebd61610be6e4aa27ec1d",
  "source": {
    "blob": "0ba54a26c0176afaf6b32471415df3fad21be889",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant8e6bf81331a960d483fed45c913be88f187435066c2458d7bcefba94ddba003d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c26ebd61610be6e4aa27ec1d992ff9bc51f3898de3f7a2a363bc1987b26b702f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant8e6bf81331a960d483fed45c913be88f187435066c2458d7bcefba94ddba003d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b01c639380e2bb7b2b9a80aadc091198d092a6e5d4aeb11f282a77ab44490947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getProofWithFreshMVarLevels [TheoremLike α] (thm : α) : MetaM Expr := do
  let proof := getProof thm
  let us := getLevelParams thm
  if proof.isConst && us.isEmpty then
    let declName := proof.constName!
    let info ← getConstVal declName
    if info.levelParams.isEmpty then
      return proof
    else
      mkConstWithFreshMVarLevels declName
  else if us.isEmpty then
    return proof
  else
    let us' ← us.mapM fun _ => mkFreshLevelMVar
    return proof.instantiateLevelParamsArray us us'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant8e6bf81331a960d483fed45c913be88f187435066c2458d7bcefba94ddba003d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variant8e6bf81331a960d483fed45c913be88f187435066c2458d7bcefba94ddba003d.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ba54a26c0176afaf6b32471415df3fad21be889` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
