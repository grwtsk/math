# bifibrantResolutionObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c7ae139b551a791d756760fff4beeedd7003dbeba808033c858e5aa6fdf2804",
  "kind": "def",
  "lexical_name": "bifibrantResolutionObj",
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
  "slug": "bifibrantresolutionobj--23fa2683fe2bfe77f292aceb",
  "source": {
    "blob": "a2a2104c2103d2dfd3a95cbb57def638509921c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 250,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23fa2683fe2bfe77f292aceb5110c5929f782017f4c1be57df3527daf26db2c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c7ae139b551a791d756760fff4beeedd7003dbeba808033c858e5aa6fdf2804`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def bifibrantResolutionObj (X : CofibrantObject C) :
    BifibrantObject C :=
  (exists_bifibrant X).choose

/-- Given `X : CofibrantObject C`, this is a trivial cofibration
from `X` to a choice of bifibrant resolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a2104c2103d2dfd3a95cbb57def638509921c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
