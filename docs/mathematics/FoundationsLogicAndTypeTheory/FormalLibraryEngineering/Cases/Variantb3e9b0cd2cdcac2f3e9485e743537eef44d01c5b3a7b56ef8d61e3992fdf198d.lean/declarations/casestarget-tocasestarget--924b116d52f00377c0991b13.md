# CasesTarget.toCasesTarget'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2b40cec5fa269e93443cbc73d06cefa55d7e235cf5700b54ebfda9b6af88613",
  "kind": "def",
  "lexical_name": "CasesTarget.toCasesTarget'",
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
  "slug": "casestarget-tocasestarget--924b116d52f00377c0991b13",
  "source": {
    "blob": "21791880a52fa5986c71242dac585a9059b4476c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantb3e9b0cd2cdcac2f3e9485e743537eef44d01c5b3a7b56ef8d61e3992fdf198d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:924b116d52f00377c0991b136fd8a99afb0a15fc4da09a1417392be4a2a6e185",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantb3e9b0cd2cdcac2f3e9485e743537eef44d01c5b3a7b56ef8d61e3992fdf198d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2b40cec5fa269e93443cbc73d06cefa55d7e235cf5700b54ebfda9b6af88613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CasesTarget.toCasesTarget' : CasesTarget → MetaM CasesTarget'
  | decl d => return .decl d
  | patterns ps => withoutModifyingState do
    let initialState ← saveState
    .patterns <$> ps.mapM λ p => do
      initialState.restore
      let e ← p.toExpr
      let s ← saveState
      return (e, s)

namespace RuleTac

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantb3e9b0cd2cdcac2f3e9485e743537eef44d01c5b3a7b56ef8d61e3992fdf198d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantb3e9b0cd2cdcac2f3e9485e743537eef44d01c5b3a7b56ef8d61e3992fdf198d.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21791880a52fa5986c71242dac585a9059b4476c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
