# AccessAuthority.grants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:411bf3e2834e734c2fe991d4afdaa9d3e10480938bdf3b21b3c42e8d61a307bc",
  "kind": "def",
  "lexical_name": "AccessAuthority.grants",
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
  "slug": "accessauthority-grants--c7ee5d3a096bf4c4a4aa0b42",
  "source": {
    "blob": "0dd1644864cef1977abe024f5f30f325beff0e54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variant7ae55fe0b5830f550521ceb0ac80d63b775cd777af4d8728d5361ea0d9dc6e86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7ee5d3a096bf4c4a4aa0b427030ba26221408c2c0225202a0322a8f0e92db32",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variant7ae55fe0b5830f550521ceb0ac80d63b775cd777af4d8728d5361ea0d9dc6e86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:411bf3e2834e734c2fe991d4afdaa9d3e10480938bdf3b21b3c42e8d61a307bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AccessAuthority.grants :
    AccessAuthority → AccessCapability → Bool
  | .observe, .observe => true
  | .traverse, .observe => true
  | .traverse, .traverse => true
  | .sample, .observe => true
  | .sample, .sample => true
  | .propose, .observe => true
  | .propose, .traverse => true
  | .propose, .propose => true
  | _, _ => false

end Mathematics.GraphAccess
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variant7ae55fe0b5830f550521ceb0ac80d63b775cd777af4d8728d5361ea0d9dc6e86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variant7ae55fe0b5830f550521ceb0ac80d63b775cd777af4d8728d5361ea0d9dc6e86.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dd1644864cef1977abe024f5f30f325beff0e54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
