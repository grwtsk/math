# getUnusedUserNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bc8ac2dcd0d41fa3123c010600177d222d225126fca98143a4de3490a9636eb",
  "kind": "def",
  "lexical_name": "getUnusedUserNames",
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
  "slug": "getunusedusernames--3eff24e5cd18931c4f5624d8",
  "source": {
    "blob": "5d8240fa1e55d6ac23500576ec95722033659a16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedNames/Variant0264927440099a03cf82202e008bbb7f2ff2c7344947a0df6f48bada1f5366a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3eff24e5cd18931c4f5624d86f15162974a47a39b4d928487087997e95ce44fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedNames/Variant0264927440099a03cf82202e008bbb7f2ff2c7344947a0df6f48bada1f5366a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bc8ac2dcd0d41fa3123c010600177d222d225126fca98143a4de3490a9636eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getUnusedUserNames (lctx : LocalContext) (n : Nat) (suggestion : Name) :
    Array Name :=
  if n == 0 then
    #[]
  else
    let suggestion := suggestion.eraseMacroScopes
    let acc := Array.mkEmpty n
    match lctx.getUnusedUserNameIndex suggestion with
    | none => loop (acc.push suggestion) (n - 1) 1
    | some i => loop acc n i
where
  /-- Auxiliary definition for `getUnusedUserNames`. -/
  loop (acc : Array Name) (n i : Nat) : Array Name :=
    match n with
    | 0 => acc
    | n + 1 => loop (acc.push $ suggestion.appendIndexAfter i) n (i + 1)

end Lean.LocalContext


namespace Lean.Meta

/--
Obtain a name `n` such that `n` is unused in the current local context and
`suggestion` is a prefix of `n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedNames/Variant0264927440099a03cf82202e008bbb7f2ff2c7344947a0df6f48bada1f5366a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedNames/Variant0264927440099a03cf82202e008bbb7f2ff2c7344947a0df6f48bada1f5366a0.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d8240fa1e55d6ac23500576ec95722033659a16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
