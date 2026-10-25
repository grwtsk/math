# elabTermForConvert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45ee3169160a8a1abdbe9de7d82a2ec8e86620d5ce04ffa08d0c003883600369",
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
  "slug": "elabtermforconvert--2bd59fa53b6eb93bd770a0d8",
  "source": {
    "blob": "67e7ecde04c6ca6ff2d948a48bcf8bb84159043a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bd59fa53b6eb93bd770a0d888aba992006bf89e2d77b487923172f3fb8a9c32",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45ee3169160a8a1abdbe9de7d82a2ec8e86620d5ce04ffa08d0c003883600369`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–146.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e7ecde04c6ca6ff2d948a48bcf8bb84159043a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
