# runForNodeKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e683369eefc55af22430a7eebd740d1b36dd8e4c96001c4bf6e62c32df5cf269",
  "kind": "def",
  "lexical_name": "runForNodeKind",
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
  "slug": "runfornodekind--e8d4f321e031570f673e8abd",
  "source": {
    "blob": "2bd28694e7f3be093bd987bcdc5647e04aa46b3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant90b746bcd02b48a5296c74eff29ede92e3e0383a76764b814cd3e1c34f922f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8d4f321e031570f673e8abda90d7a25fcd00e8b83d84f7280be069e9e7d23d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant90b746bcd02b48a5296c74eff29ede92e3e0383a76764b814cd3e1c34f922f5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e683369eefc55af22430a7eebd740d1b36dd8e4c96001c4bf6e62c32df5cf269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def runForNodeKind {α} (attr : KeyedDeclsAttribute α) (k : SyntaxNodeKind) (interp : ParserDescr → CoreM α) : CoreM α := do
  match attr.getValues (← getEnv) k with
  | p::_ => pure p
  | _ =>
    -- assume `k` is from a `ParserDescr`, in which case we assume it's also the declaration name
    let info ← getConstInfo k
    if info.type.isConstOf ``ParserDescr || info.type.isConstOf ``TrailingParserDescr then
      let d ← evalConst ParserDescr k
      interp d
    else
      throwError "no declaration of attribute [{attr.defn.name}] found for `{k}`"

end PrettyPrinter
end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant90b746bcd02b48a5296c74eff29ede92e3e0383a76764b814cd3e1c34f922f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant90b746bcd02b48a5296c74eff29ede92e3e0383a76764b814cd3e1c34f922f5b.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bd28694e7f3be093bd987bcdc5647e04aa46b3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
