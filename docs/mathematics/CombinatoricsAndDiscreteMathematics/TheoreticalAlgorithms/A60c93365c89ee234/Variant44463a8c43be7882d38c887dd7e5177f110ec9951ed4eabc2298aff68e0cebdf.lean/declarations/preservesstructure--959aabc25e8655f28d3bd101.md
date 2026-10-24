# PreservesStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce15ad5dcad968c4e5fbdb51b28e87e16240be48f4e4bf521da9648f725a1dfc",
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
  "slug": "preservesstructure--959aabc25e8655f28d3bd101",
  "source": {
    "blob": "c4d03c18e4014df5109950d347cf4a1dfafcde51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A60c93365c89ee234/Variant44463a8c43be7882d38c887dd7e5177f110ec9951ed4eabc2298aff68e0cebdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:959aabc25e8655f28d3bd10101f1602964c1a0ff556f9a24efc64aae207680df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A60c93365c89ee234/Variant44463a8c43be7882d38c887dd7e5177f110ec9951ed4eabc2298aff68e0cebdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce15ad5dcad968c4e5fbdb51b28e87e16240be48f4e4bf521da9648f725a1dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–41.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A60c93365c89ee234/Variant44463a8c43be7882d38c887dd7e5177f110ec9951ed4eabc2298aff68e0cebdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A60c93365c89ee234/Variant44463a8c43be7882d38c887dd7e5177f110ec9951ed4eabc2298aff68e0cebdf.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4d03c18e4014df5109950d347cf4a1dfafcde51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
