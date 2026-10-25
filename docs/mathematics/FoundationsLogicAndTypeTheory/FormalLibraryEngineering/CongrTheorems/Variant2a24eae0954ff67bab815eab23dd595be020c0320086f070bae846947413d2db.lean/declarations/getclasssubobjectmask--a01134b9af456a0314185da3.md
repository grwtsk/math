# getClassSubobjectMask?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b77b5e3f25ad0c2be3a079e9cfb7993487f86955146e839e7053ba9babf5823a",
  "kind": "def",
  "lexical_name": "getClassSubobjectMask?",
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
  "slug": "getclasssubobjectmask--a01134b9af456a0314185da3",
  "source": {
    "blob": "2b0f7de86c99ab7a804854faf9d97370d0007f8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a01134b9af456a0314185da348e476c9e9417b0822eb771770c8eb08b7402ade",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b77b5e3f25ad0c2be3a079e9cfb7993487f86955146e839e7053ba9babf5823a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getClassSubobjectMask? (f : Expr) : MetaM (Option (Array Bool)) := do
  let .const declName _ := f | return none
  let .ctorInfo val ← getConstInfo declName | return none
  unless isClass (← getEnv) val.induct do return none
  forallTelescopeReducing val.type (cleanupAnnotations := true) fun xs _ => do
    let env ← getEnv
    let mut mask := #[]
    for h : i in *...xs.size do
      if i < val.numParams then
        mask := mask.push false
      else
        let localDecl ← xs[i].fvarId!.getDecl
        mask := mask.push (isSubobjectField? env val.induct localDecl.userName).isSome
    return some mask

/-- Computes `CongrArgKind`s for a simp congruence theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2a24eae0954ff67bab815eab23dd595be020c0320086f070bae846947413d2db.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b0f7de86c99ab7a804854faf9d97370d0007f8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
