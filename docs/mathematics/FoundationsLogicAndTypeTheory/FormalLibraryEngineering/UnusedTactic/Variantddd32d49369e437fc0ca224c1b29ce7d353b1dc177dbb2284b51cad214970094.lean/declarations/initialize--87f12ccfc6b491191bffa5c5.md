# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24ddec066661c7aa7df03a3c92e65a7313bd5b821442e9bd90bc44cad56aa447",
  "kind": "initialize",
  "lexical_name": null,
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
  "slug": "initialize--87f12ccfc6b491191bffa5c5",
  "source": {
    "blob": "2f2a7e343989871da3f524721d2bd2855c84ea53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variantddd32d49369e437fc0ca224c1b29ce7d353b1dc177dbb2284b51cad214970094.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87f12ccfc6b491191bffa5c5d245c03aa0b5d20d597abe7fb98f5857e6abf758",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variantddd32d49369e437fc0ca224c1b29ce7d353b1dc177dbb2284b51cad214970094.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24ddec066661c7aa7df03a3c92e65a7313bd5b821442e9bd90bc44cad56aa447`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize ignoreTacticKindsRef : IO.Ref NameHashSet ←
  IO.mkRef <| .ofArray #[
    `Mathlib.Tactic.Says.says,
    ``Parser.Term.binderTactic,
    ``Lean.Parser.Term.dynamicQuot,
    ``Lean.Parser.Tactic.quotSeq,
    ``Lean.Parser.Tactic.tacticStop_,
    ``Lean.Parser.Command.notation,
    ``Lean.Parser.Command.mixfix,
    ``Lean.Parser.Tactic.discharger,
    ``Lean.Parser.Tactic.Conv.conv,
    `Batteries.Tactic.seq_focus,
    `Mathlib.Tactic.Hint.registerHintStx,
    `Mathlib.Tactic.LinearCombination.linearCombination,
    `Mathlib.Tactic.LinearCombination'.linearCombination',
    `Aesop.Frontend.Parser.addRules,
    `Aesop.Frontend.Parser.aesopTactic,
    `Aesop.Frontend.Parser.aesopTactic?,
    -- the following `SyntaxNodeKind`s play a role in silencing `test`s
    ``Lean.Parser.Tactic.failIfSuccess,
    `Mathlib.Tactic.successIfFailWithMsg,
    `Mathlib.Tactic.failIfNoProgress
  ]

/-- Is this a syntax kind that contains intentionally unused tactic subterms? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variantddd32d49369e437fc0ca224c1b29ce7d353b1dc177dbb2284b51cad214970094.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variantddd32d49369e437fc0ca224c1b29ce7d353b1dc177dbb2284b51cad214970094.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2a7e343989871da3f524721d2bd2855c84ea53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
