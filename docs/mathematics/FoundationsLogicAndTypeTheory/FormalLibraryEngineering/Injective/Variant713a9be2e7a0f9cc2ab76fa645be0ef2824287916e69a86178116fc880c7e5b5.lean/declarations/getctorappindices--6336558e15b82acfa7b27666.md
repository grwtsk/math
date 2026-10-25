# getCtorAppIndices?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:007cd52514de257ed378df5ea382759d3cf480dfa7387654391eeda9f17e2e92",
  "kind": "def",
  "lexical_name": "getCtorAppIndices?",
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
  "slug": "getctorappindices--6336558e15b82acfa7b27666",
  "source": {
    "blob": "8b3a0dd95002b9346ad6a5ea89ae5b62cb0109a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6336558e15b82acfa7b27666290fb58e229bd9d75c065ff9740ad2fd4d614732",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:007cd52514de257ed378df5ea382759d3cf480dfa7387654391eeda9f17e2e92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getCtorAppIndices? (ctorApp : Expr) : MetaM (Option (Array Expr)) := do
  let type ← whnfD (← inferType ctorApp)
  type.withApp fun typeFn typeArgs => do
    let .const declName _ := typeFn | return none
    let .inductInfo val ← getConstInfo declName | return none
    if val.numIndices == 0 then return some #[]
    return some typeArgs[val.numParams...*].toArray

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injective/Variant713a9be2e7a0f9cc2ab76fa645be0ef2824287916e69a86178116fc880c7e5b5.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b3a0dd95002b9346ad6a5ea89ae5b62cb0109a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
