# getLambdaTheorems

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:038e00486f68d3d4ae57a5478cf671306d17805bff37c36f58dc6da94e554d0e",
  "kind": "def",
  "lexical_name": "getLambdaTheorems",
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
  "slug": "getlambdatheorems--ce71b90856c04b0eef20d741",
  "source": {
    "blob": "56cffd3792e30421701d4b663453b1635aa2e5d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce71b90856c04b0eef20d7415d868d6f6ece79b6dd93711928f709e7102f58a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:038e00486f68d3d4ae57a5478cf671306d17805bff37c36f58dc6da94e554d0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def getLambdaTheorems (funPropName : Name) (type : LambdaTheoremType) :
    CoreM (Array LambdaTheorem) := do
  return (lambdaTheoremsExt.getState (← getEnv)).theorems.getD (funPropName,type) #[]


--------------------------------------------------------------------------------

/-- Function theorems are stated in uncurried or compositional form.

uncurried
```
theorem Continuous_add : Continuous (fun x => x.1 + x.2)
```

compositional
```
theorem Continuous_add (hf : Continuous f) (hg : Continuous g) : Continuous (fun x => (f x) + (g x))
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56cffd3792e30421701d4b663453b1635aa2e5d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
