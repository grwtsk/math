# mkBRecOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb56775a0b0e2e27312dc9c378d2209c8ce6423f8a45d5a571c9b27fc1dc763c",
  "kind": "def",
  "lexical_name": "mkBRecOn",
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
  "slug": "mkbrecon--605ecc2abd3dd9ec65ebdbc1",
  "source": {
    "blob": "eb887ec1c026a8c1c24e2c225561ca654801a6d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 318,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:605ecc2abd3dd9ec65ebdbc11e68af882b7d0eda8d867ea31f5ff831e4d9a541",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb56775a0b0e2e27312dc9c378d2209c8ce6423f8a45d5a571c9b27fc1dc763c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkBRecOn (indName : Name) : MetaM Unit := do
  withTraceNode `Meta.mkBRecOn (fun _ => return m!"{indName}") do
  let .inductInfo indVal ← getConstInfo indName | return
  unless indVal.isRec do return
  if ← isPropFormerType indVal.type then return

  let recName := mkRecName indName
  let brecOnName := mkBRecOnName indName
  mkBRecOnFromRec recName indVal.numParams indVal.all.toArray brecOnName

  -- If this is the first inductive in a mutual group with nested inductives,
  -- generate the constructions for the nested inductives now.
  if indVal.all[0]! = indName then
    for i in *...indVal.numNested do
      let recName := recName.appendIndexAfter (i + 1)
      let brecOnName := brecOnName.appendIndexAfter (i + 1)
      mkBRecOnFromRec recName indVal.numParams indVal.all.toArray brecOnName

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb887ec1c026a8c1c24e2c225561ca654801a6d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
