# ModuleHashMap.filterNeedsDecompression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75f669c09e60afbc5d2c66f0ea95139a052dfd2bd9d128b33d5233e6ee727887",
  "kind": "def",
  "lexical_name": "ModuleHashMap.filterNeedsDecompression",
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
  "slug": "modulehashmap-filterneedsdecompression--08c758a64558f82cda493624",
  "source": {
    "blob": "289a460cb04f5f093ab7128bf1b430099fe18f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 466,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantbbddddd5714c1d0c134e86b46f091c07b5b36eb4691bd96a5f6837c940dcd3cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08c758a64558f82cda4936242e90e0fe5c005e7dfa89275a077a2c6d9b13e86d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantbbddddd5714c1d0c134e86b46f091c07b5b36eb4691bd96a5f6837c940dcd3cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75f669c09e60afbc5d2c66f0ea95139a052dfd2bd9d128b33d5233e6ee727887`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ModuleHashMap.filterNeedsDecompression (hashMap : ModuleHashMap) : CacheM ModuleHashMap :=
  hashMap.foldM (init := ∅) fun acc mod hash => do
    if ← needsDecompression mod hash then
      return acc.insert mod hash
    else
      return acc

/-- Build the leantar JSON config array from a module hash map.
    Each entry is either a plain path string, or an object with `"file"` and `"base"` fields
    for mathlib dependency files that need path redirection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantbbddddd5714c1d0c134e86b46f091c07b5b36eb4691bd96a5f6837c940dcd3cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantbbddddd5714c1d0c134e86b46f091c07b5b36eb4691bd96a5f6837c940dcd3cc.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `289a460cb04f5f093ab7128bf1b430099fe18f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
