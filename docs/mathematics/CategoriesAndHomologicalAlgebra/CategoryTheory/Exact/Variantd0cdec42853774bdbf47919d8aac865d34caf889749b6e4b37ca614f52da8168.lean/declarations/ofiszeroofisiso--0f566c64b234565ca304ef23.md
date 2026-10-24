# ofIsZeroOfIsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5324715702ac11ad3dd7cefaa22391320a2ee580cf56b209f18d8fda178f0be7",
  "kind": "def",
  "lexical_name": "ofIsZeroOfIsIso",
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
  "slug": "ofiszeroofisiso--0f566c64b234565ca304ef23",
  "source": {
    "blob": "e9c7f8d577dd727ed3f697649fc410e1d5247c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 673,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantd0cdec42853774bdbf47919d8aac865d34caf889749b6e4b37ca614f52da8168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f566c64b234565ca304ef234655b52685e89b7286d09d9b515329038bf85f81",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantd0cdec42853774bdbf47919d8aac865d34caf889749b6e4b37ca614f52da8168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5324715702ac11ad3dd7cefaa22391320a2ee580cf56b209f18d8fda178f0be7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofIsZeroOfIsIso (hf : IsZero S.X₁) (hg : IsIso S.g) : Splitting S where
  r := 0
  s := inv S.g
  f_r := hf.eq_of_src _ _

/-- The obvious splitting of a short complex when `S.f` is an isomorphism and `S.X₃` is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantd0cdec42853774bdbf47919d8aac865d34caf889749b6e4b37ca614f52da8168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantd0cdec42853774bdbf47919d8aac865d34caf889749b6e4b37ca614f52da8168.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9c7f8d577dd727ed3f697649fc410e1d5247c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
