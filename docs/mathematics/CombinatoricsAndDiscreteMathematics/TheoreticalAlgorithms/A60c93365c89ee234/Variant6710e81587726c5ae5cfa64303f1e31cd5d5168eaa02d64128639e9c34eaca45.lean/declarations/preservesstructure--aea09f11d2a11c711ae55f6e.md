# PreservesStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:710c55f4f853784b9247318d2e32a112bd5c65a4976846470f2847bbb6627c5c",
  "kind": "def",
  "lexical_name": "PreservesStructure",
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
  "slug": "preservesstructure--aea09f11d2a11c711ae55f6e",
  "source": {
    "blob": "fabf37b3620594da0334c61678cab8455567f335",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 14,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A60c93365c89ee234/Variant6710e81587726c5ae5cfa64303f1e31cd5d5168eaa02d64128639e9c34eaca45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aea09f11d2a11c711ae55f6e13c97c4addc42f68cd2102138e03ce7ec85e81c9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A60c93365c89ee234/Variant6710e81587726c5ae5cfa64303f1e31cd5d5168eaa02d64128639e9c34eaca45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:710c55f4f853784b9247318d2e32a112bd5c65a4976846470f2847bbb6627c5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PreservesStructure
    (left : PolyHierarchy signature)
    (right : PolyHierarchy signature)
    (equivalence : left.Element ≃ right.Element) : Prop :=
  (∀ element,
      left.elementSort element = right.elementSort (equivalence element)) ∧
  (∀ element,
      left.isNode element ↔ right.isNode (equivalence element)) ∧
  (∀ authority relation arguments,
      left.fact authority relation arguments ↔
        right.fact authority relation
          (fun index ↦ equivalence (arguments index)))

namespace StructuralIso

variable {left middle right : PolyHierarchy signature}

end StructuralIso

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A60c93365c89ee234/Variant6710e81587726c5ae5cfa64303f1e31cd5d5168eaa02d64128639e9c34eaca45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A60c93365c89ee234/Variant6710e81587726c5ae5cfa64303f1e31cd5d5168eaa02d64128639e9c34eaca45.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fabf37b3620594da0334c61678cab8455567f335` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
