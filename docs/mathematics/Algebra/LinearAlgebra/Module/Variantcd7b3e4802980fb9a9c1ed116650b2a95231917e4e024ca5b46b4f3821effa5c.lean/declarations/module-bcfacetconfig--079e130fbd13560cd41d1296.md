# Module.bcFacetConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2efa1e81f0ba1f9466742786a613fcb82d2c7feec391ce41a466150ac3a318f6",
  "kind": "def",
  "lexical_name": "Module.bcFacetConfig",
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
  "slug": "module-bcfacetconfig--079e130fbd13560cd41d1296",
  "source": {
    "blob": "1266fd0bf4094833269c7f4467edf175e110db67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1206,
    "line": 1189,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:079e130fbd13560cd41d1296fc863b12241d88131fc038c36e1de9d28afb3813",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2efa1e81f0ba1f9466742786a613fcb82d2c7feec391ce41a466150ac3a318f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1189–1206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Module.bcFacetConfig : ModuleFacetConfig bcFacet :=
  mkFacetJobConfig fun mod => do
    (← mod.leanArts.fetch).mapM (sync := true) fun arts => do
      let some art := arts.bc?
        | error "No LLVM bitcode generated. Ensure your Lean version supports the LLVM backend."
      /-
      Avoid recompiling unchanged bitcode files.
      Bitcode files are assumed to only depend on their content
      and not transitively on their inputs (e.g., imports).
      -/
      newTrace s!"{mod.name.toString}:bc"
      addTrace art.trace
      return art.path

/--
Recursively build the module's object file from its C file produced by `lean`
with `-DLEAN_EXPORTING` set, which exports Lean symbols defined within the C files.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean#L1189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1266fd0bf4094833269c7f4467edf175e110db67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
