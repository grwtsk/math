# elabInductives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3934b872f5dac41095c64ca3794d49b00ad3d9a8a414d1dc21a4e8bc877a7b2",
  "kind": "def",
  "lexical_name": "elabInductives",
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
  "slug": "elabinductives--3d3f19fd833f3085eb5add2a",
  "source": {
    "blob": "70adc2c0ca9bfa1e7a54b5e64de2521494b71cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1720,
    "line": 1702,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d3f19fd833f3085eb5add2ae38ff4b6fb7bf29cec2f90ac62cc5438ec12c2e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3934b872f5dac41095c64ca3794d49b00ad3d9a8a414d1dc21a4e8bc877a7b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1702–1720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabInductives (inductives : Array (Modifiers × Syntax)) : CommandElabM Unit := do
  let elabs ← runTermElabM fun _ => inductives.mapM fun (modifiers, stx) => mkInductiveView modifiers stx
  let isCoinductive := elabs.any (·.view.isCoinductive)
  checkNoInductiveNameConflicts elabs (isCoinductive := isCoinductive)
  elabs.forM fun e => checkValidInductiveModifier e.view.modifiers
  liftTermElabM <| elabs.forM fun e => withRef e.view.ref do
    Term.applyAttributesAt e.view.declName e.view.modifiers.attrs .beforeElaboration
  if isCoinductive then
    runTermElabM fun vars => do
      let flatElabs := elabs.map fun e => {e with view := updateViewWithFunctorName e.view}
      elabFlatInductiveViews vars flatElabs
      discard <| flatElabs.mapM fun e => MetaM.run' do mkSumOfProducts e.view.declName
      elabCoinductive (flatElabs.map InductiveViewToCoinductiveElab)
  else
    let res ← runTermElabM fun vars => do
      elabInductiveViews vars elabs
    elabInductiveViewsFinalize (elabs.map (·.view)) res
  elabInductiveViewsPostprocessing (elabs.map (·.view))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean#L1702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70adc2c0ca9bfa1e7a54b5e64de2521494b71cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
