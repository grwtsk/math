# addLocalEMatchTheorems

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5a671782ddfd33bbd003c91f8caa871b7745fed998ff35ce74630048eccd607",
  "kind": "def",
  "lexical_name": "addLocalEMatchTheorems",
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
  "slug": "addlocalematchtheorems--ff1927ac403dd10120d7e616",
  "source": {
    "blob": "8c4cb487edadd9bb9fbb2ea3356f06c94ac803a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff1927ac403dd10120d7e61678f5ca28a017665d0a9bd2804133bb1513fad991",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5a671782ddfd33bbd003c91f8caa871b7745fed998ff35ce74630048eccd607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addLocalEMatchTheorems (e : Expr) : GoalM Unit := do
  let proof ← mkEqTrueProof e
  let origin ← getOrigin proof
  let proof := mkOfEqTrueCore e proof
  -- **Note**: Do we really need to restrict the instantiation of local theorems?
  -- **Note**: Should we distinguish anchors restricting case-splits and local theorems?
  unless (← checkAnchorRefsEMatchTheoremProof proof) do return ()
  let size := (← get).ematch.newThms.size
  let gen ← getGeneration e
  let mut patternsFoundSoFar := #[]
  let symPrios ← getSymbolPriorities
  let minPrio := eval_prio default -- We only consider symbols with default priority and above when collecting singleton patterns.
  let thms ← mkEMatchTheoremUsingSingletonPatterns origin #[] proof minPrio symPrios
  for thm in thms do
    if isNewPat patternsFoundSoFar thm then
      activateTheorem thm gen
      patternsFoundSoFar := patternsFoundSoFar.push thm.patterns
  if let some thm ← mkEMatchTheoremWithKind'? origin proof .leftRight symPrios then
    if isNewPat patternsFoundSoFar thm then
      activateTheorem thm gen
      patternsFoundSoFar := patternsFoundSoFar.push thm.patterns
  if let some thm ← mkEMatchTheoremWithKind'? origin proof .rightLeft symPrios then
    if isNewPat patternsFoundSoFar thm then
      activateTheorem thm gen
      patternsFoundSoFar := patternsFoundSoFar.push thm.patterns
  if (← get).ematch.newThms.size == size then
    if let some thm ← mkEMatchTheoremWithKind'? origin proof (.default false) symPrios then
      activateTheorem thm gen
  if (← get).ematch.newThms.size == size then
    reportIssue! "failed to create E-match local theorem for{indentExpr e}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant4ce7b12ba9be261e3fbafccc8b5385869e537d816a2c11460a220cbf08278f4f.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c4cb487edadd9bb9fbb2ea3356f06c94ac803a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
