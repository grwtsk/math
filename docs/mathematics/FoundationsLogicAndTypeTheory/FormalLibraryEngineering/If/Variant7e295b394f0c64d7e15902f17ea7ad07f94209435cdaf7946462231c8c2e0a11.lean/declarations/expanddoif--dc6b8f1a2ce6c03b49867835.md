# expandDoIf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f76a2b9b3690d416a208df659ee0b51461081acc8985c4f9a501d5767e8bad80",
  "kind": "def",
  "lexical_name": "expandDoIf",
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
  "slug": "expanddoif--dc6b8f1a2ce6c03b49867835",
  "source": {
    "blob": "5f5fc9353843052d4837bd5f1f6b138f03b11413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant7e295b394f0c64d7e15902f17ea7ad07f94209435cdaf7946462231c8c2e0a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc6b8f1a2ce6c03b498678359e869bfffb3aae1ee7e7ef169df61c7721839e78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant7e295b394f0c64d7e15902f17ea7ad07f94209435cdaf7946462231c8c2e0a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f76a2b9b3690d416a208df659ee0b51461081acc8985c4f9a501d5767e8bad80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_macro Lean.Parser.Term.doIf] def expandDoIf : Macro := fun stx =>
  match stx with
  | `(doElem|if $_:doIfProp then $_ else $_) =>
    Macro.throwUnsupported
  | `(doElem|if%$tk $cond:doIfCond then $t $[else if%$tks $conds:doIfCond then $ts]* $[else $e?]?) => do
    let mut e : Syntax ← e?.getDM `(doSeq| skip%$tk)
    let mut eIsSeq := true
    for (cond, t) in Array.zip (conds.reverse.push cond) (ts.reverse.push t) do
      e ← if eIsSeq then pure e else `(doSeq|$(⟨e⟩):doElem)
      e ← match cond with
        | `(doIfCond|let $pat := $d) => `(doElem| match $d:term with | $pat:term => $t | _ => $(⟨e⟩))
        | `(doIfCond|let $pat ← $d)  => `(doElem| match ← $d:term with | $pat:term => $t | _ => $(⟨e⟩))
        | `(doIfCond|$cond:doIfProp) => `(doElem| if $cond:doIfProp then $t else $(⟨e⟩))
        | _                          => Macro.throwUnsupported
      eIsSeq := false
    return e
  | _ => Macro.throwUnsupported

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant7e295b394f0c64d7e15902f17ea7ad07f94209435cdaf7946462231c8c2e0a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant7e295b394f0c64d7e15902f17ea7ad07f94209435cdaf7946462231c8c2e0a11.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f5fc9353843052d4837bd5f1f6b138f03b11413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
