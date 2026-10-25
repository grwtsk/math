# terminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c1ce0a6f21b0a826095224ad9e786077523ddc94d4280d14202b36850b0bc4d",
  "kind": "def",
  "lexical_name": "terminal",
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
  "slug": "terminal--89aafdb799451b83d8fa8608",
  "source": {
    "blob": "df9f4693ce5a840e437dac8b4bc2b14e85048f60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AEcc3315f44f482aa/Variant07d4c2217b3a71ffb6e234db82e5b1d1a8ceb445c2e4b500ed9ca0931b5fc410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89aafdb799451b83d8fa86089d4f3fe2c4bf1ea7adeb121a973e3dbf2339e5fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AEcc3315f44f482aa/Variant07d4c2217b3a71ffb6e234db82e5b1d1a8ceb445c2e4b500ed9ca0931b5fc410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c1ce0a6f21b0a826095224ad9e786077523ddc94d4280d14202b36850b0bc4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def terminal (path : DomainPath) : DomainId :=
  path.segments.getLastD path.root

end DomainPath

namespace DomainRegistry

end DomainRegistry

end Mathematics.Taxonomy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AEcc3315f44f482aa/Variant07d4c2217b3a71ffb6e234db82e5b1d1a8ceb445c2e4b500ed9ca0931b5fc410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AEcc3315f44f482aa/Variant07d4c2217b3a71ffb6e234db82e5b1d1a8ceb445c2e4b500ed9ca0931b5fc410.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df9f4693ce5a840e437dac8b4bc2b14e85048f60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
