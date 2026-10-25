# subsetDotNotationLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1af846f671e9a8c29e321b23a63be263c98a2dc949a77b4c796ce813100fa2a",
  "kind": "def",
  "lexical_name": "subsetDotNotationLinter",
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
  "slug": "subsetdotnotationlinter--351d80d5714ec7e357d89911",
  "source": {
    "blob": "5f9aa5ae61b4be16ad3354fde2299c516b4c9201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantee38bf5c105cfc54912fc8cc24d88934f4412e67ed90cffc243d33aa2a4cd550.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:351d80d5714ec7e357d89911f07c72ec6cab1826709a5227e4d8f1b1e60ec280",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantee38bf5c105cfc54912fc8cc24d88934f4412e67ed90cffc243d33aa2a4cd550.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1af846f671e9a8c29e321b23a63be263c98a2dc949a77b4c796ce813100fa2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def subsetDotNotationLinter : Batteries.Tactic.Lint.Linter where
  noErrorsFound := "all names are correct"
  errorsFound := "SOME DECLARATIONS USE THE WRONG NAMESPACE"
  test declName := do
    if Linter.isDeprecated (← getEnv) declName then return none
    let n := declName.getNumParts
    if n ≤ 2 then return none
    let (nameStart, rest) := declName.splitAt (n - 2)
    let otherStart ← match nameStart with
      | ``Subset => pure ``LE.le
      | ``SSubset => pure ``LT.lt
      | _ => return none
    let mut type := (← getConstInfo declName).type
    while let .forallE _ d t _ := type do
      type := t
      if let .const c _ := d.getAppFn then
        if c == otherStart then
          return some m!"`{n}` should be named `{otherStart ++ rest}` in order to use dot-notation."
    return none

/-! ## Lemma translation -/

@[inherit_doc GuessName.GuessNameData.nameDict]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantee38bf5c105cfc54912fc8cc24d88934f4412e67ed90cffc243d33aa2a4cd550.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantee38bf5c105cfc54912fc8cc24d88934f4412e67ed90cffc243d33aa2a4cd550.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f9aa5ae61b4be16ad3354fde2299c516b4c9201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
