# TransformAltFVars.all

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b3efa7cdb6d32e70e4536c3c29fc38b904cbde4036ccdd5d0dc14fe4c5a1093",
  "kind": "def",
  "lexical_name": "TransformAltFVars.all",
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
  "slug": "transformaltfvars-all--f5a205853b594a00a9c6d752",
  "source": {
    "blob": "6027b98417777a9f95bf1707bf6380210910797f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 250,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant884b732f1cccd78b5f3348ba380b2db1c2b1cca424e4ea76003319ce4ed81f0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5a205853b594a00a9c6d7528dd3920a521c1275afedfbd6dd61693c5343c2a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant884b732f1cccd78b5f3348ba380b2db1c2b1cca424e4ea76003319ce4ed81f0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b3efa7cdb6d32e70e4536c3c29fc38b904cbde4036ccdd5d0dc14fe4c5a1093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TransformAltFVars.all (fvars : TransformAltFVars) : Array Expr :=
  fvars.fields ++ fvars.overlaps ++ fvars.discrEqs ++ fvars.extraEqs

/--
Performs a possibly type-changing transformation to a `MatcherApp`.

* `onParams` is run on each parameter and discriminant
* `onMotive` runs on the body of the motive, and is passed the motive parameters
  (one for each `MatcherApp.discrs`)
* `onAlt` runs on each alternative, and is passed the expected type of the alternative,
   as inferred from the motive
* `onRemaining` runs on the remaining arguments (and may change their number)

If `useSplitter` is true, the matcher is replaced with the splitter.
NB: Not all operations on `MatcherApp` can handle one `matcherName` is a splitter.

If `addEqualities` is true, then equalities connecting the discriminant to the parameters of the
alternative (like in `match h : x with …`) are be added, if not already there.

This function works even if the type of alternatives do *not* fit the inferred type. This
allows you to post-process the `MatcherApp` with `MatcherApp.inferMatchType`, which will
infer a type, given all the alternatives.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant884b732f1cccd78b5f3348ba380b2db1c2b1cca424e4ea76003319ce4ed81f0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant884b732f1cccd78b5f3348ba380b2db1c2b1cca424e4ea76003319ce4ed81f0e.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6027b98417777a9f95bf1707bf6380210910797f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
