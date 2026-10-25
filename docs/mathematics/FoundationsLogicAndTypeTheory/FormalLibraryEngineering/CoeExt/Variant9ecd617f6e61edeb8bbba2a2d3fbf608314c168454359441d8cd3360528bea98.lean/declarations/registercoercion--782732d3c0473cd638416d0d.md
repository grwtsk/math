# registerCoercion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37c8142b21b41899270b7928395e7fef4b4cc2317bbe63ba33264d9a90d3e822",
  "kind": "def",
  "lexical_name": "registerCoercion",
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
  "slug": "registercoercion--782732d3c0473cd638416d0d",
  "source": {
    "blob": "1baff3502fd17d0921d64994332a682f15c0d914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeExt/Variant9ecd617f6e61edeb8bbba2a2d3fbf608314c168454359441d8cd3360528bea98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:782732d3c0473cd638416d0d700b85239e46aa286965a1b97d123b1466defd78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeExt/Variant9ecd617f6e61edeb8bbba2a2d3fbf608314c168454359441d8cd3360528bea98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37c8142b21b41899270b7928395e7fef4b4cc2317bbe63ba33264d9a90d3e822`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def registerCoercion (name : Name) (info : Option CoeFnInfo := none) : MetaM Unit := do
  let info ← match info with | some info => pure info | none => do
    let fnInfo ← getFunInfo (← mkConstWithLevelParams name)
    let some coercee := fnInfo.paramInfo.findIdx? (·.binderInfo.isExplicit)
      | throwError "{name} has no explicit arguments"
    pure { numArgs := coercee + 1, coercee, type := .coe }
  modifyEnv (coeExt.addEntry · (name, info))
  addCoeDelaborator name info

/--
The `@[coe]` attribute on a function (which should also appear in a
`instance : Coe A B := ⟨myFn⟩` declaration) allows the delaborator to show
applications of this function as `↑` when printing expressions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeExt/Variant9ecd617f6e61edeb8bbba2a2d3fbf608314c168454359441d8cd3360528bea98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeExt/Variant9ecd617f6e61edeb8bbba2a2d3fbf608314c168454359441d8cd3360528bea98.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1baff3502fd17d0921d64994332a682f15c0d914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
