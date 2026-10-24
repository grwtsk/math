# AuthorityCategoryRefusalReason

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:caa29c86b57047007e17d107686e5d4665c1e7c82bfff5dfcb9d23fdf7a0ec9a",
  "kind": "inductive",
  "lexical_name": "AuthorityCategoryRefusalReason",
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
  "slug": "authoritycategoryrefusalreason--57e2af6955c20d0a88c97b79",
  "source": {
    "blob": "df83f5934f4ff540dfbb8072061aa9dab948ae5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M506970656c696e652f417574686f7269747943617465676f7279526f61646d61702e6c65616e/Variantc639065b5eb8c3f5790a5e9be879a3f2dd9bd159bbc2aa300b3513be89ce918d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57e2af6955c20d0a88c97b79d2a627c7b130df704dbcd2fecbbcbe65b2f6b1a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/M506970656c696e652f417574686f7269747943617465676f7279526f61646d61702e6c65616e/Variantc639065b5eb8c3f5790a5e9be879a3f2dd9bd159bbc2aa300b3513be89ce918d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:caa29c86b57047007e17d107686e5d4665c1e7c82bfff5dfcb9d23fdf7a0ec9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive AuthorityCategoryRefusalReason where
  | refused_as_theorem_language
  deriving DecidableEq, Repr

/-- The theorem export gate is separate from the canonical claim status. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/M506970656c696e652f417574686f7269747943617465676f7279526f61646d61702e6c65616e/Variantc639065b5eb8c3f5790a5e9be879a3f2dd9bd159bbc2aa300b3513be89ce918d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M506970656c696e652f417574686f7269747943617465676f7279526f61646d61702e6c65616e/Variantc639065b5eb8c3f5790a5e9be879a3f2dd9bd159bbc2aa300b3513be89ce918d.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df83f5934f4ff540dfbb8072061aa9dab948ae5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
