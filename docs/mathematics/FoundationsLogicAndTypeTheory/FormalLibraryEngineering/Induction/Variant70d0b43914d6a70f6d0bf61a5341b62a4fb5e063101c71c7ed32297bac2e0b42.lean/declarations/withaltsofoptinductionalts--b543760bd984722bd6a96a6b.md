# withAltsOfOptInductionAlts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a6a57a7bda964ae4181f7cd97bc7a8c08d0314a2287f57c222c13170603204d",
  "kind": "def",
  "lexical_name": "withAltsOfOptInductionAlts",
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
  "slug": "withaltsofoptinductionalts--b543760bd984722bd6a96a6b",
  "source": {
    "blob": "96201dae32b53e8b351c7f6a2177e432e71a990e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 641,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b543760bd984722bd6a96a6bf1416f92965a0de8c126cb96f955c66e651aca81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a6a57a7bda964ae4181f7cd97bc7a8c08d0314a2287f57c222c13170603204d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withAltsOfOptInductionAlts (optInductionAlts : Syntax)
    (cont : Option (Array Syntax) → TacticM α) : TacticM α :=
  Term.withNarrowedTacticReuse (stx := optInductionAlts) (fun optInductionAlts =>
    if optInductionAlts.isNone then
      -- if there are no alternatives, what to compare is irrelevant as there will be no reuse
      (mkNullNode #[], mkNullNode #[])
    else
      -- if there are no alts, then use the `with` token for `inner` for a ref for messages
      let altStxs := optInductionAlts[0].getArg 2
      let inner := if altStxs.getNumArgs > 0 then altStxs else optInductionAlts[0][0]
      -- `with` and tactic applied to all branches must be unchanged for reuse
      (mkNullNode optInductionAlts[0].getArgs[*...2], inner))
    (fun alts? =>
      if optInductionAlts.isNone then      -- no `with` clause
        cont none
      else if alts?.isOfKind nullKind then -- has alts
        cont (some alts?.getArgs)
      else                                 -- has `with` clause, but no alts
        cont (some #[]))

/--
Check for the specific proof structure `induction h with n n_ih` that can arise from
Natural-Numbers-Game-style `induction` proofs being used in standard Lean style proofs.

These errors are provided with a custom error explanation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96201dae32b53e8b351c7f6a2177e432e71a990e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
