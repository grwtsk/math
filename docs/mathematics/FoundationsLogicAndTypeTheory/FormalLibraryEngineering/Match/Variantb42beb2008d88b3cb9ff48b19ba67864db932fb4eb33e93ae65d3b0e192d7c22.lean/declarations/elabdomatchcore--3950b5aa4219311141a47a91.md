# elabDoMatchCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19d07e237737f4e76abbbb312a64194a145a1e2a96adea285f461ff45a8920b6",
  "kind": "def",
  "lexical_name": "elabDoMatchCore",
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
  "slug": "elabdomatchcore--3950b5aa4219311141a47a91",
  "source": {
    "blob": "249e89b55de88b1457acca3fa26ce85855f4cf7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 204,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3950b5aa4219311141a47a91fd96dad0e6f8d79b4eca729eb8433c48fbd16e02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19d07e237737f4e76abbbb312a64194a145a1e2a96adea285f461ff45a8920b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabDoMatchCore (discrs : TSyntaxArray ``matchDiscr) (alts : Array DoMatchAltView)
    (nondupDec : DoElemCont) : DoElabM Expr := do
  let info ← alts.foldlM (fun info alt => info.alternative <$> inferControlInfoSeq alt.rhs)
    ControlInfo.empty
  nondupDec.withDuplicableCont info fun dec => do
  trace[Elab.do.match] "discrs: {discrs}, nondupDec.resultType: {nondupDec.resultType}, may postpone: {(← readThe Term.Context).mayPostpone}"
  tryPostponeIfDiscrTypeIsMVar discrs
  let (discrs, matchType, lhss, rhss) ← mapTermElabM Term.commitIfDidNotPostpone do
    let discrs ← Term.withSynthesize <| elabDiscrs discrs
    let (matchType, lhss, rhss) ← elabMatchAlts discrs alts dec
    Term.synthesizeSyntheticMVars
    let lhss ← Term.instantiateAltLHSs lhss
    return (discrs, matchType, lhss, rhss)
  compileMatch discrs matchType lhss rhss

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `249e89b55de88b1457acca3fa26ce85855f4cf7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
