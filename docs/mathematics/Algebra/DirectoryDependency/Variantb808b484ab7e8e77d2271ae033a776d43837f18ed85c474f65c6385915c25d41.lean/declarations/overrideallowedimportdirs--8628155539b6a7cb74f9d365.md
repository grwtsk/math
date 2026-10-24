# overrideAllowedImportDirs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b1ebab6d3ce20d69b05b96f8b2aee5dcc410bd63a536f79a0d67834b1e14269",
  "kind": "def",
  "lexical_name": "overrideAllowedImportDirs",
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
  "slug": "overrideallowedimportdirs--8628155539b6a7cb74f9d365",
  "source": {
    "blob": "7f99a2a661efb1e04f1045027dff5349cdbe79a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 464,
    "path": "GRWTSK/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8628155539b6a7cb74f9d365f030902793f4c23cbcfc0ac113d973f9e382fe0f",
  "verification": {
    "reference": "docs/verification/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b1ebab6d3ce20d69b05b96f8b2aee5dcc410bd63a536f79a0d67834b1e14269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def overrideAllowedImportDirs : NamePrefixRel := .ofArray #[
  (`Mathlib.Algebra.Lie, `Mathlib.RepresentationTheory),
  (`Mathlib.Algebra.Notation, `Mathlib.Algebra.Notation),
  (`Mathlib.Deprecated, `Mathlib.Deprecated),
  (`Mathlib.Topology.Algebra, `Mathlib.Algebra),
]

end DirectoryDependency

open DirectoryDependency

@[inherit_doc Mathlib.Linter.linter.directoryDependency]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectoryDependency/Variantb808b484ab7e8e77d2271ae033a776d43837f18ed85c474f65c6385915c25d41.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f99a2a661efb1e04f1045027dff5349cdbe79a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
