# reflectBV

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37198baa428b780646c01b1bd62d1f0eaff457e4f2a4d75fd0e7c758a77b3dd6",
  "kind": "def",
  "lexical_name": "reflectBV",
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
  "slug": "reflectbv--91c9d230b8dca21b0f5f4224",
  "source": {
    "blob": "86d9c093c0bad559109b7a4e044c378e0e5b760d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf7f50d25bd5315af8779eb4886db266046fba5ebaa8bb852ee8efc71d6222cff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91c9d230b8dca21b0f5f4224d4549d4945852b9e4ba35df1c21beab3abb09f7c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf7f50d25bd5315af8779eb4886db266046fba5ebaa8bb852ee8efc71d6222cff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37198baa428b780646c01b1bd62d1f0eaff457e4f2a4d75fd0e7c758a77b3dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def reflectBV (g : MVarId) : M ReflectionResult := g.withContext do
  let hyps ← getPropHyps
  let mut sats := #[]
  let mut unusedHypotheses := {}
  for hyp in hyps do
    checkSystem "bv_decide"
    if let (some reflected, lemmas) ← (SatAtBVLogical.of (mkFVar hyp)).run then
      sats := (sats ++ lemmas).push reflected
    else
      unusedHypotheses := unusedHypotheses.insert hyp
  if h : sats.size = 0 then
    let mut error := "None of the hypotheses are in the supported BitVec fragment after applying preprocessing.\n"
    error := error ++ "There are three potential reasons for this:\n"
    error := error ++ "1. If you are using custom BitVec constructs simplify them to built-in ones.\n"
    error := error ++ "2. If your problem is using only built-in ones it might currently be out of reach.\n"
    error := error ++ "   Consider expressing it in terms of different operations that are better supported.\n"
    error := error ++ "3. The original goal was reduced to False and is thus invalid."
    throwError error
  else
    let sat := sats[1...*].foldl (init := sats[0]) SatAtBVLogical.and
    return {
      bvExpr := ShareCommon.shareCommon sat.bvExpr,
      proveFalse := sat.proveFalse,
      unusedHypotheses := unusedHypotheses,
      expr := sat.expr
    }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf7f50d25bd5315af8779eb4886db266046fba5ebaa8bb852ee8efc71d6222cff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf7f50d25bd5315af8779eb4886db266046fba5ebaa8bb852ee8efc71d6222cff.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86d9c093c0bad559109b7a4e044c378e0e5b760d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
