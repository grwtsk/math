# shellBlockRightCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e72b07a873e6e4afa8dbc5f9b3fb3cb042ea433137bb19d3dbdaecd1967b23b",
  "kind": "def",
  "lexical_name": "shellBlockRightCoefficient",
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
  "slug": "shellblockrightcoefficient--2a9fa695c7bcd46a465f0f35",
  "source": {
    "blob": "601d6b8657272202c2b0ccb9f95b1b37b3b6c67b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalFactorBlock/Varianta2037e7db5bc087ff0ea6f151888d6eb57bd466c3dfdb69885a25e5f784b86f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a9fa695c7bcd46a465f0f352e1a362d6ed3c2c3121be6de2bc4ce18409f10cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalFactorBlock/Varianta2037e7db5bc087ff0ea6f151888d6eb57bd466c3dfdb69885a25e5f784b86f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e72b07a873e6e4afa8dbc5f9b3fb3cb042ea433137bb19d3dbdaecd1967b23b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shellBlockRightCoefficient {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : B.Right → ℂ :=
  blockRightCoefficient B.1

/-! The interval matrix is defined after the product-shell interval type.
It is a literal zero-one matrix and contains no estimate. -/

/-- Restriction of a product-shell dyadic interval to one canonical factor
rectangle.  An entry is one exactly when the product of its factor indices
belongs to the interval. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalFactorBlock/Varianta2037e7db5bc087ff0ea6f151888d6eb57bd466c3dfdb69885a25e5f784b86f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalFactorBlock/Varianta2037e7db5bc087ff0ea6f151888d6eb57bd466c3dfdb69885a25e5f784b86f8.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `601d6b8657272202c2b0ccb9f95b1b37b3b6c67b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
