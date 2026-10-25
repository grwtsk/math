# mkEMatchTheoremCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdab33038b84ce6e763d201e451fe5a7fd9795ad8b5259be8b32d875b76885a2",
  "kind": "def",
  "lexical_name": "mkEMatchTheoremCore",
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
  "slug": "mkematchtheoremcore--afc0f61021c55653a30f158f",
  "source": {
    "blob": "9d947cf9bc70039e5adf3ad5b7759178dd0d52bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 891,
    "line": 876,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afc0f61021c55653a30f158f4ddd1c8f05595a18728509ef189467dec8e27101",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdab33038b84ce6e763d201e451fe5a7fd9795ad8b5259be8b32d875b76885a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 876–891.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkEMatchTheoremCore (origin : Origin) (levelParams : Array Name) (numParams : Nat) (proof : Expr)
    (patterns : List Expr) (kind : EMatchTheoremKind) (cnstrs : List EMatchTheoremConstraint := []) (showInfo := false) (minIndexable : Bool := false) : MetaM EMatchTheorem := do
  -- the patterns have already been selected, there is no point in using priorities here
  let (patterns, symbols, bvarFound) ← NormalizePattern.main patterns (← getGlobalSymbolPriorities) (minPrio := 1)
  if symbols.isEmpty then
    throwError "invalid pattern for `{origin.pp}`{indentD (patterns.map ppPattern)}\nthe pattern does not contain constant symbols for indexing"
  trace[grind.ematch.pattern] "{origin.pp}: {patterns.map ppPattern}"
  if let .missing pos ← checkCoverage proof numParams bvarFound then
     let pats : MessageData := m!"{patterns.map ppPattern}"
     throwError "invalid pattern(s) for `{origin.pp}`{indentD pats}\nthe following theorem parameters cannot be instantiated:{indentD (← ppParamsAt proof numParams pos)}"
  logPatternWhen showInfo origin patterns
  return {
    proof, patterns, numParams, symbols
    levelParams, origin, kind, minIndexable, cnstrs
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean#L876).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d947cf9bc70039e5adf3ad5b7759178dd0d52bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
