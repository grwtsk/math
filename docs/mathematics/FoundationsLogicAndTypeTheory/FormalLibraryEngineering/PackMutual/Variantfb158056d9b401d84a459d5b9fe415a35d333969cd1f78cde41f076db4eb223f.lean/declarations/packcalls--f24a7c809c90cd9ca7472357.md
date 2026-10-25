# packCalls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc931acdb4a6dc67da0a5c592fc474077a127063d7a024e04f55e2b8f19b85fb",
  "kind": "def",
  "lexical_name": "packCalls",
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
  "slug": "packcalls--f24a7c809c90cd9ca7472357",
  "source": {
    "blob": "9de02b569a1e56257929195d528c00718087c3d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variantfb158056d9b401d84a459d5b9fe415a35d333969cd1f78cde41f076db4eb223f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f24a7c809c90cd9ca7472357353fd53c9f5cfa428bbad5fc1a3da6f2124a02b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variantfb158056d9b401d84a459d5b9fe415a35d333969cd1f78cde41f076db4eb223f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc931acdb4a6dc67da0a5c592fc474077a127063d7a024e04f55e2b8f19b85fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def packCalls (fixedParamPerms : FixedParamPerms) (argsPacker : ArgsPacker) (funNames : Array Name) (newF : Expr)
  (e : Expr) : MetaM Expr := do
  let fType ← inferType newF
  unless fType.isForall do
    throwError "Not a forall: {newF} : {fType}"
  let domain := fType.bindingDomain!
  transform e (skipConstInApp := true) (post := fun e => do
    let f := e.getAppFn
    if !f.isConst then
      return TransformStep.done e
    if let some fidx := funNames.idxOf? f.constName! then
      assert! fidx < fixedParamPerms.perms.size
      let mask := fixedParamPerms.perms[fidx]!.map Option.isSome
      let arity := mask.size
      let e' ← withAppN arity e fun args => do
        let varying := fixedParamPerms.perms[fidx]!.pickVarying args
        let packedArg ← argsPacker.pack domain fidx varying
        return mkApp newF packedArg
      return TransformStep.done e'
    return TransformStep.done e
    )

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variantfb158056d9b401d84a459d5b9fe415a35d333969cd1f78cde41f076db4eb223f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variantfb158056d9b401d84a459d5b9fe415a35d333969cd1f78cde41f076db4eb223f.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9de02b569a1e56257929195d528c00718087c3d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
