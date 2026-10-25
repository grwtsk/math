# DiscrTreeCache.getMatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9224c4f3b615b937e647a8c6423fd43d7c949be0cbb51e98dd68117c5cc43f02",
  "kind": "def",
  "lexical_name": "DiscrTreeCache.getMatch",
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
  "slug": "discrtreecache-getmatch--103f2c05b4ffb1a9df1e0837",
  "source": {
    "blob": "6e12b42490213aa7a866dab137569b8593d5af83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:103f2c05b4ffb1a9df1e0837fe74e8a590494ae0bcfb0aeb5f9a6db4440caec4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9224c4f3b615b937e647a8c6423fd43d7c949be0cbb51e98dd68117c5cc43f02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DiscrTreeCache.getMatch (c : DiscrTreeCache α) (e : Expr) : MetaM (Array α) := do
  let (locals, imports) ← c.get
  -- `DiscrTree.getMatch` returns results in batches, with more specific lemmas coming later.
  -- Hence we reverse this list, so we try out more specific lemmas earlier.
  return (← locals.getMatch e config).reverse ++ (← imports.getMatch e config).reverse
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e12b42490213aa7a866dab137569b8593d5af83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
