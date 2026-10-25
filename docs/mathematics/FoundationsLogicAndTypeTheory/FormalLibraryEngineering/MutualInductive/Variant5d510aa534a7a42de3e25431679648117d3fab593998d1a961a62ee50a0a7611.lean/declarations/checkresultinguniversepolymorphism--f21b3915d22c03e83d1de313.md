# checkResultingUniversePolymorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:941b257d415d9a14f5bf9b8eae9a2f1d93b79cbb855d215449adf203b5fff8bc",
  "kind": "def",
  "lexical_name": "checkResultingUniversePolymorphism",
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
  "slug": "checkresultinguniversepolymorphism--f21b3915d22c03e83d1de313",
  "source": {
    "blob": "2f896ef31359aad0ee273d30032f02e843781076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1146,
    "line": 1132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f21b3915d22c03e83d1de3137a006ed2a762dc6b3d755b301fb3bd0e435ff51c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:941b257d415d9a14f5bf9b8eae9a2f1d93b79cbb855d215449adf203b5fff8bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1132–1146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkResultingUniversePolymorphism (views : Array InductiveView) (u : Level) (_numParams : Nat) (_indTypes : List InductiveType) : TermElabM Unit := do
  let doErrFor := fun view =>
    view.withTypeRef do
      throwError m!"\
        Invalid universe polymorphic resulting type: The resulting universe is not `Prop`, but it may be `Prop` for some parameter values:{indentD (mkSort u)}"
        ++ .hint' m!"A possible solution is to use levels of the form `max 1 _` or `_ + 1` to ensure the universe is of the form `Type _`"
  unless u.isZero || u.isNeverZero do
    for view in views do
      if !view.allowSortPolymorphism then
        doErrFor view
    if bootstrap.inductiveCheckResultingUniverse.get (← getOptions) then
      -- TODO: heuristic for allowing `Sort` polymorphism?
      doErrFor views[0]!

/-- Checks the universe constraints for each constructor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean#L1132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f896ef31359aad0ee273d30032f02e843781076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
