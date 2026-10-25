# SpecAttr.SpecTheorems.findSpecs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:494cef00f34f3fecf12fdef74425b33ed5d8cc784ca51a74af113fea66b75964",
  "kind": "def",
  "lexical_name": "SpecAttr.SpecTheorems.findSpecs",
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
  "slug": "specattr-spectheorems-findspecs--95bda3f8427c429c19bcf118",
  "source": {
    "blob": "a43de50729d035246f57a650e2d10c893ba0406e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95bda3f8427c429c19bcf11881d6288cddbfe610655706d16201b72b3bc11dcf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:494cef00f34f3fecf12fdef74425b33ed5d8cc784ca51a74af113fea66b75964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def SpecAttr.SpecTheorems.findSpecs (database : SpecTheorems) (e : Expr) :
    SymM (Except (Array SpecTheorem) SpecTheorem × SpecTheorems) := do
  let e ← instantiateMVars e
  let e ← shareCommon e
  let candidates := Sym.getMatch database.specs e
  let candidates := candidates.filter fun spec => !database.erased.contains spec.proof
  if h : candidates.size = 1 then
    have : 0 < candidates.size := h ▸ Nat.zero_lt_one
    return (.ok candidates[0], database)
  -- It appears that insertion sort is *much* faster than qsort here.
  let candidates := candidates.insertionSort (·.priority > ·.priority)
  let mut database := database
  for spec in candidates do
    -- Match against the internalized pattern so its instance arguments are pointer-equal to the
    -- program's. A spec is internalized the first time it is tried and stored back in the database,
    -- so later lookups find it already in the share table and skip the work.
    let mut spec := spec
    unless ← isShared spec.pattern.pattern do
      spec := { spec with pattern := ← spec.pattern.shareCommon }
      -- Take sole ownership of the discrimination tree before inserting so the update is in place.
      let specs := database.specs
      database := { database with specs := default }
      database := { database with specs := Sym.insertPattern specs spec.pattern spec }
    let some _res ← spec.pattern.match? e | continue
    return (.ok spec, database)
  return (.error candidates, database)

end Lean.Elab.Tactic.Do.Internal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43de50729d035246f57a650e2d10c893ba0406e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
