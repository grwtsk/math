# elabTermForConvert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a784c7979f2f0e162dece360666cc55d7e11a98316bebbc070e9af7cfd542aa1",
  "kind": "def",
  "lexical_name": "elabTermForConvert",
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
  "slug": "elabtermforconvert--b24b30c152d70f2b19a38ca9",
  "source": {
    "blob": "17baa946a720006dfcd45a77660f04d20901a51c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b24b30c152d70f2b19a38ca9e9a8d3c64063ffb1671ea3861f0ef80e22e00d85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a784c7979f2f0e162dece360666cc55d7e11a98316bebbc070e9af7cfd542aa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabTermForConvert (term : Syntax) (expectedType? : Option Expr) :
    TacticM (Expr × List MVarId) := do
  withCollectingNewGoalsFrom (parentTag := ← getMainTag) (tagSuffix := `convert)
      (allowNaturalHoles := true) do
    -- Allow typeclass inference failures since these will be inferred by unification
    -- or else become new goals
    withTheReader Term.Context (fun ctx => { ctx with ignoreTCFailures := true }) do
      let t ← elabTermEnsuringType (mayPostpone := true) term expectedType?
      -- Process everything so that tactics get run, but again allow TC failures
      Term.synthesizeSyntheticMVars (postpone := .no) (ignoreStuckTC := true)
      return t

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17baa946a720006dfcd45a77660f04d20901a51c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
