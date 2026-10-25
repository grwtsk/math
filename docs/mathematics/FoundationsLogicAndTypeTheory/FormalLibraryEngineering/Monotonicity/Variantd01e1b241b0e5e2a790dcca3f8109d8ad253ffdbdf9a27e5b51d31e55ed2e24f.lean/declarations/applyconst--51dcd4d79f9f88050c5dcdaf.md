# applyConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a632d84c61ea66668668c31f25afe5d9cc62d160f78a9468a7c3a9afa25ace4",
  "kind": "def",
  "lexical_name": "applyConst",
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
  "slug": "applyconst--51dcd4d79f9f88050c5dcdaf",
  "source": {
    "blob": "f127cab044ae0dd2fb1cd54ea5cd0cf997e484a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monotonicity/Variantd01e1b241b0e5e2a790dcca3f8109d8ad253ffdbdf9a27e5b51d31e55ed2e24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51dcd4d79f9f88050c5dcdafea075a5755ed62b7aa81998e638a4c20196eb112",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monotonicity/Variantd01e1b241b0e5e2a790dcca3f8109d8ad253ffdbdf9a27e5b51d31e55ed2e24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a632d84c61ea66668668c31f25afe5d9cc62d160f78a9468a7c3a9afa25ace4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def applyConst (goal : MVarId) (name : Name) : MetaM (List MVarId) := do
  prependError m!"Could not apply {.ofConstName name}:" do
    goal.applyConst name (cfg := { synthAssignedInstances := false})

/--
Base case for solveMonoStep: Handles goals of the form
```
monotone (fun f => f.1.2 x y)
```

It's tricky to solve them compositionally from the outside in, so here we construct the proof
from the inside out.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monotonicity/Variantd01e1b241b0e5e2a790dcca3f8109d8ad253ffdbdf9a27e5b51d31e55ed2e24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monotonicity/Variantd01e1b241b0e5e2a790dcca3f8109d8ad253ffdbdf9a27e5b51d31e55ed2e24f.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f127cab044ae0dd2fb1cd54ea5cd0cf997e484a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
