# minImpsCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e983267324a44ad8beca93e30bd092d783a7d01268c458d2bc97f6e9b7fe6c9",
  "kind": "def",
  "lexical_name": "minImpsCore",
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
  "slug": "minimpscore--987c3331ace84b2d7d6c55ef",
  "source": {
    "blob": "b4c5a3697bbd57676dd2a0e99725ad575a03de91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 255,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:987c3331ace84b2d7d6c55ef1d1e826ee92581dd907930288c2b511c55adfe33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e983267324a44ad8beca93e30bd092d783a7d01268c458d2bc97f6e9b7fe6c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def minImpsCore (stx id : Syntax) : CommandElabM Unit := do
    let tot := getIrredundantImports (← getEnv) (← getAllImports stx id)
    let fileNames := tot.toArray.qsort Name.lt
    logInfoAt (← getRef) m!"{"\n".intercalate (fileNames.map (s!"import {·}")).toList}"

/-- `#min_imports in cmd` scans the syntax `cmd` and the declaration obtained by elaborating `cmd`
to find a collection of minimal imports that should be sufficient for `cmd` to work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4c5a3697bbd57676dd2a0e99725ad575a03de91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
