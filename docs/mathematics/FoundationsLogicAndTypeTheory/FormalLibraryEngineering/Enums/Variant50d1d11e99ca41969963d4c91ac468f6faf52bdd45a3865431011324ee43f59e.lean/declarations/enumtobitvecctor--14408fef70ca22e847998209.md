# enumToBitVecCtor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:655ab2ca201ad8ee0603ae0275fbd887f94f0a43f715302429cc262ea1e8bc41",
  "kind": "def",
  "lexical_name": "enumToBitVecCtor",
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
  "slug": "enumtobitvecctor--14408fef70ca22e847998209",
  "source": {
    "blob": "d3b3038dceef4de44d81904f9de2141f40286e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 389,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variant50d1d11e99ca41969963d4c91ac468f6faf52bdd45a3865431011324ee43f59e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14408fef70ca22e847998209c9601e7900db1da47e1758272db07d70a61f8003",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variant50d1d11e99ca41969963d4c91ac468f6faf52bdd45a3865431011324ee43f59e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:655ab2ca201ad8ee0603ae0275fbd887f94f0a43f715302429cc262ea1e8bc41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def enumToBitVecCtor : Simp.Simproc := fun e => do
  let .app (.const fn ..) (.const arg ..) := e | return .continue
  let .str p s := fn | return .continue
  if s != enumToBitVecSuffix then return .continue
  if !(← isEnumType p) then return .continue
  let .inductInfo inductiveInfo ← getConstInfo p | unreachable!
  let ctors := inductiveInfo.ctors
  let some ctorIdx := ctors.findIdx? (· == arg) | return .continue
  let bvSize := getBitVecSize ctors.length
  return .done { expr := toExpr <| BitVec.ofNat bvSize ctorIdx }

/--
The state used for the post processing part of `enumsPass`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variant50d1d11e99ca41969963d4c91ac468f6faf52bdd45a3865431011324ee43f59e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enums/Variant50d1d11e99ca41969963d4c91ac468f6faf52bdd45a3865431011324ee43f59e.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b3038dceef4de44d81904f9de2141f40286e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
