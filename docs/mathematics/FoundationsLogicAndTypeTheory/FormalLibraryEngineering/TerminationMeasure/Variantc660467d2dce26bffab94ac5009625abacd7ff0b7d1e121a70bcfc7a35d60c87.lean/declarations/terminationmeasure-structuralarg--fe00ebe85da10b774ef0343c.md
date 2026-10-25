# TerminationMeasure.structuralArg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc10bcd39b17c4527adfa6a28926e654a0a0131aa62d771e5c67a1ac5661b460",
  "kind": "def",
  "lexical_name": "TerminationMeasure.structuralArg",
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
  "slug": "terminationmeasure-structuralarg--fe00ebe85da10b774ef0343c",
  "source": {
    "blob": "bd9b520513d877501adeae20d62fcc4f3cea7498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe00ebe85da10b774ef0343cd525652615210073a97a5e345783a738d86776eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc10bcd39b17c4527adfa6a28926e654a0a0131aa62d771e5c67a1ac5661b460`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TerminationMeasure.structuralArg (measure : TerminationMeasure) : MetaM Nat := do
  assert! measure.structural
  lambdaTelescope measure.fn fun ys e => do
    let .some idx := ys.idxOf? e
      | panic! "TerminationMeasure.structuralArg: body not one of the parameters"
    return idx


open PrettyPrinter Delaborator SubExpr Parser.Termination Parser.Term in
/--
Delaborates a `TerminationMeasure` back to a `TerminationHint`, e.g. for `termination_by?`.

This needs extra information:
* `arity` is the value arity of the recursive function
* `extraParams` indicates how many of the function's parameters are bound “after the colon”.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd9b520513d877501adeae20d62fcc4f3cea7498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
