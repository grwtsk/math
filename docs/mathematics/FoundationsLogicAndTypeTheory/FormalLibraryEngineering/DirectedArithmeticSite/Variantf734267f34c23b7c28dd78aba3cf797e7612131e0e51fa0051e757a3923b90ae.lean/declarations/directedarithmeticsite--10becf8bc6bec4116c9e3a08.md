# DirectedArithmeticSite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69e50cad6decaf16d4401729cbe71417ef0934fea94c9a49bf605a5d01674f20",
  "kind": "structure",
  "lexical_name": "DirectedArithmeticSite",
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
  "slug": "directedarithmeticsite--10becf8bc6bec4116c9e3a08",
  "source": {
    "blob": "d06af6541f8ca4218c1541a6e341b7e6d52d1357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectedArithmeticSite/Variantf734267f34c23b7c28dd78aba3cf797e7612131e0e51fa0051e757a3923b90ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10becf8bc6bec4116c9e3a08177547499bbe1c58d160ae77ccccb889d7074fe1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectedArithmeticSite/Variantf734267f34c23b7c28dd78aba3cf797e7612131e0e51fa0051e757a3923b90ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69e50cad6decaf16d4401729cbe71417ef0934fea94c9a49bf605a5d01674f20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DirectedArithmeticSite where
  Object : Type
  objectToPivot : Object → CanonicalPivot
  Morphism : Object → Object → Type
  isRefinement : ∀ {X Y}, Morphism X Y → Prop
  isOverlapInclusion : ∀ {X Y}, Morphism X Y → Prop
  isCertifiedTransport : ∀ {X Y}, Morphism X Y → Prop
  Cover : Object → Type
  coverIsPivotFamily : ∀ {X}, Cover X → Prop
  zeroFreeBoundariesPreventEscape : Prop
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectedArithmeticSite/Variantf734267f34c23b7c28dd78aba3cf797e7612131e0e51fa0051e757a3923b90ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectedArithmeticSite/Variantf734267f34c23b7c28dd78aba3cf797e7612131e0e51fa0051e757a3923b90ae.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d06af6541f8ca4218c1541a6e341b7e6d52d1357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
