# ValuativeCriterion.Existence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb06a0cb72d29bcac04cce958cccba4d8a31b6576117b547ccf22d8d51cc0186",
  "kind": "def",
  "lexical_name": "ValuativeCriterion.Existence",
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
  "slug": "valuativecriterion-existence--d67892b48a06990ca865c5e7",
  "source": {
    "blob": "852a5669d01da7cb8656f8daf081620a6f260c9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 86,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant9a9a46f5ef85fed391987628366bcdb3b03396637786ca9a220512f8873860d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d67892b48a06990ca865c5e7efcb6dea8c0460d0d02a104dd1b389060d636aa4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant9a9a46f5ef85fed391987628366bcdb3b03396637786ca9a220512f8873860d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb06a0cb72d29bcac04cce958cccba4d8a31b6576117b547ccf22d8d51cc0186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ValuativeCriterion.Existence : MorphismProperty Scheme :=
  fun _ _ f ↦ ∀ S : ValuativeCommSq f, S.commSq.HasLift

/-- A morphism `f : X ⟶ Y` satisfies the uniqueness part of the valuative criterion if
every valuative commutative square over `f` has at most one lift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant9a9a46f5ef85fed391987628366bcdb3b03396637786ca9a220512f8873860d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant9a9a46f5ef85fed391987628366bcdb3b03396637786ca9a220512f8873860d3.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `852a5669d01da7cb8656f8daf081620a6f260c9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
