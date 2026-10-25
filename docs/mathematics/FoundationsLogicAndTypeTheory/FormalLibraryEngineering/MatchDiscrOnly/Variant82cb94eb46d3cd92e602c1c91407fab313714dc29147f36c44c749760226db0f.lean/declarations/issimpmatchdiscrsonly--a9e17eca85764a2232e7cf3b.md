# isSimpMatchDiscrsOnly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbbab164d54cf6fae165d100a6cd784dd32b38ef1386fac2cfd772cb78f4df5f",
  "kind": "def",
  "lexical_name": "isSimpMatchDiscrsOnly",
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
  "slug": "issimpmatchdiscrsonly--a9e17eca85764a2232e7cf3b",
  "source": {
    "blob": "32848003d4a0c4a41aefed1af086b6940193eace",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9e17eca85764a2232e7cf3bf976f13c1bc0d5dc8a52d0760eb1066a3d518ae9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbbab164d54cf6fae165d100a6cd784dd32b38ef1386fac2cfd772cb78f4df5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isSimpMatchDiscrsOnly (e : Expr) :=
  e.isAppOfArity ``Grind.simpMatchDiscrsOnly 2

builtin_simproc_decl reduceSimpMatchDiscrsOnly (Grind.simpMatchDiscrsOnly _) := fun e => do
  let_expr Grind.simpMatchDiscrsOnly _ m ← e | return .continue
  let .const declName _ := m.getAppFn
    | return .done { expr := e }
  let some info ← getMatcherInfo? declName
    | return .done { expr := e }
  if let some r ← Simp.simpMatchDiscrs? info m then
    return .done { r with expr := (← markAsSimpMatchDiscrsOnly r.expr) }
  return .done { expr := e }

/-- Adds `reduceSimpMatchDiscrsOnly` to `s` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32848003d4a0c4a41aefed1af086b6940193eace` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
