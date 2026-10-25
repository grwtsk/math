# FormalPlane.ofBits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:291aa1f00a4a028f51911c32c8f9917bb026ba2ecef67d1aa85037199fca4d02",
  "kind": "def",
  "lexical_name": "FormalPlane.ofBits",
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
  "slug": "formalplane-ofbits--71de56bf65934fc6eaafab24",
  "source": {
    "blob": "7f7cc53036e9d8c9065d36f5c27dfbc2e3265587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plane/Variant79c31fb8c29224ae9411735945f03160993678db83ccb7a0137eacb49af793c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71de56bf65934fc6eaafab24da727ec1ef3ebf4ccd756369da198ff36d35d862",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plane/Variant79c31fb8c29224ae9411735945f03160993678db83ccb7a0137eacb49af793c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:291aa1f00a4a028f51911c32c8f9917bb026ba2ecef67d1aa85037199fca4d02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FormalPlane.ofBits
    (descriptor : PlaneDescriptor)
    (bits : BitSquare n)
    (certificateRoot : String) :
    FormalPlane n (fun i j ↦ bits i j = true) where
  descriptor := descriptor
  square := ResolvedSquare.fullyResolved bits
  positive := by
    intro i j observed
    simpa using observed
  negative := by
    intro i j observed
    have isFalse : bits i j = false := by
      simpa using observed
    simp [isFalse]
  certificateRoot := certificateRoot

end URSM.Contracts
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plane/Variant79c31fb8c29224ae9411735945f03160993678db83ccb7a0137eacb49af793c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plane/Variant79c31fb8c29224ae9411735945f03160993678db83ccb7a0137eacb49af793c1.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f7cc53036e9d8c9065d36f5c27dfbc2e3265587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
