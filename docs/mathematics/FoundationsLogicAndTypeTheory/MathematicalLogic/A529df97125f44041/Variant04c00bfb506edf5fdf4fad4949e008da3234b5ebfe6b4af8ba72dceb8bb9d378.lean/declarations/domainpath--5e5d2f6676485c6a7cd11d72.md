# DomainPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4cbeb26b1bedb14e317363642e02de7d84a33f8e431bcd87939da83dd082fbe",
  "kind": "structure",
  "lexical_name": "DomainPath",
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
  "slug": "domainpath--5e5d2f6676485c6a7cd11d72",
  "source": {
    "blob": "f6186079988c4d7b8ac6553f7fd1b9c6306e962a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/A529df97125f44041/Variant04c00bfb506edf5fdf4fad4949e008da3234b5ebfe6b4af8ba72dceb8bb9d378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e5d2f6676485c6a7cd11d723aa1d29c10e058c2b92414ebc71d7380243dc35b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/A529df97125f44041/Variant04c00bfb506edf5fdf4fad4949e008da3234b5ebfe6b4af8ba72dceb8bb9d378.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4cbeb26b1bedb14e317363642e02de7d84a33f8e431bcd87939da83dd082fbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DomainPath where
  root : DomainId
  segments : List DomainId
  deriving DecidableEq, Inhabited

namespace DomainPath

end DomainPath

namespace DomainRegistry

end DomainRegistry

end Mathematics.Taxonomy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/A529df97125f44041/Variant04c00bfb506edf5fdf4fad4949e008da3234b5ebfe6b4af8ba72dceb8bb9d378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/A529df97125f44041/Variant04c00bfb506edf5fdf4fad4949e008da3234b5ebfe6b4af8ba72dceb8bb9d378.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6186079988c4d7b8ac6553f7fd1b9c6306e962a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
