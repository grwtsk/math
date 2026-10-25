# applyProjectionRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9bbda82717d4545f249896604878d046b9ef1ad4598a7e6aa19bf465860d7328",
  "kind": "def",
  "lexical_name": "applyProjectionRules",
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
  "slug": "applyprojectionrules--030aeee90079a4af440a98ab",
  "source": {
    "blob": "2d9ee464994d5563431c41fba169e9e9bf48ef5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 552,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:030aeee90079a4af440a98abffabfd59aa951dfcf980f6b758071035c1ae8a9f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9bbda82717d4545f249896604878d046b9ef1ad4598a7e6aa19bf465860d7328`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyProjectionRules (projs : Array ParsedProjectionData) (rules : Array ProjectionRule) :
  CoreM (Array ParsedProjectionData) := do
  let projs : Array ParsedProjectionData := rules.foldl (init := projs) fun projs rule ↦
    match rule with
    | .rename strName strStx newName newStx =>
      if (projs.map (·.newName)).contains strName then
        projs.map fun proj ↦ if proj.newName == strName then
          { proj with
            newName,
            newStx,
            strStx := if proj.strStx.isMissing then strStx else proj.strStx } else
          proj else
        projs.push {strName, strStx, newName, newStx}
    | .erase nm stx =>
      if (projs.map (·.newName)).contains nm then
        projs.map fun proj ↦ if proj.newName = nm then
          { proj with
            isDefault := false,
            strStx := if proj.strStx.isMissing then stx else proj.strStx } else
          proj else
        projs.push {strName := nm, newName := nm, strStx := stx, newStx := stx, isDefault := false}
    | .add nm stx =>
      if (projs.map (·.newName)).contains nm then
        projs.map fun proj ↦ if proj.newName = nm then
          { proj with
            isDefault := true,
            strStx := if proj.strStx.isMissing then stx else proj.strStx } else
          proj else
        projs.push {strName := nm, newName := nm, strStx := stx, newStx := stx}
    | .prefix nm stx =>
      if (projs.map (·.newName)).contains nm then
        projs.map fun proj ↦ if proj.newName = nm then
          { proj with
            isPrefix := true,
            strStx := if proj.strStx.isMissing then stx else proj.strStx } else
          proj else
        projs.push {strName := nm, newName := nm, strStx := stx, newStx := stx, isPrefix := true}
  trace[simps.debug] "Projection info after applying the rules: {projs}."
  unless (projs.map (·.newName)).toList.Nodup do throwError
    "Invalid projection names. Two projections have the same name.\n{""
    }This is likely because a custom composition of projections was given the same name as an {""
    }existing projection. Solution: rename the existing projection (before naming the {""
    }custom projection)."
  pure projs

/-- Auxiliary function for `getRawProjections`.
  Generates the default projection, and looks for a custom projection declared by the user,
  and replaces the default projection with the custom one, if it can find it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d9ee464994d5563431c41fba169e9e9bf48ef5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
