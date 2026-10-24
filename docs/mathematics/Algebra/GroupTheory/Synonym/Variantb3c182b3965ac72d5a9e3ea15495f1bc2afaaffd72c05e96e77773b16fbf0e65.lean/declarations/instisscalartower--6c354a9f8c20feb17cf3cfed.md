# instIsScalarTower'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11ae10e614284c93833d48ac5be5853562e5653fddcb62c27a6fdd3e5125feab",
  "kind": "instance",
  "lexical_name": "instIsScalarTower'",
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
  "slug": "instisscalartower--6c354a9f8c20feb17cf3cfed",
  "source": {
    "blob": "7c948e968c2b3db662483531edc1e2430b8f9ae0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 47,
    "path": "GRWTSK/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c354a9f8c20feb17cf3cfed9bdc9731a199ecaf1205d35abf77045c7bdf103b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11ae10e614284c93833d48ac5be5853562e5653fddcb62c27a6fdd3e5125feab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsScalarTower' [SMul M N] [SMul M α] [SMul N α] [IsScalarTower M N α] :
    IsScalarTower M Nᵒᵈ α := ‹IsScalarTower M N α›

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Synonym/Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c948e968c2b3db662483531edc1e2430b8f9ae0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
