# tateCohomology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75c1747ffbb17431b2b1ae16de4807d2313bfb3a5c704b29374eaf4dfab645c2",
  "kind": "abbrev",
  "lexical_name": "tateCohomology",
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
  "slug": "tatecohomology--7b99a3b6adf75d34c5664ec1",
  "source": {
    "blob": "6682ccaeddc09024cc477e00e3b4747ecc22da3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant296dabdbf04196374a3378c9d1c9ad80b74adb25961757954b92181c71fc620f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b99a3b6adf75d34c5664ec11f9a028e30fe7fd74c17a2878c4a9b2afaee0c06",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant296dabdbf04196374a3378c9d1c9ad80b74adb25961757954b92181c71fc620f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75c1747ffbb17431b2b1ae16de4807d2313bfb3a5c704b29374eaf4dfab645c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev tateCohomology (n : ℤ) : ModuleCat R := (tateCohomologyFunctor n).obj M

namespace TateCohomology

section Exact

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant296dabdbf04196374a3378c9d1c9ad80b74adb25961757954b92181c71fc620f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant296dabdbf04196374a3378c9d1c9ad80b74adb25961757954b92181c71fc620f.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6682ccaeddc09024cc477e00e3b4747ecc22da3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
