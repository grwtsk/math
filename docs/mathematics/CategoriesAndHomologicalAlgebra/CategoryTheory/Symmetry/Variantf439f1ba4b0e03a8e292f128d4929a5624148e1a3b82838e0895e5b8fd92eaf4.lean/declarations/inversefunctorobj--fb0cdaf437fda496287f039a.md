# inverseFunctorObj'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db24e968144b79dd4fb8ed63e423ac81770f91a22c2765f8a2b7d539487e0192",
  "kind": "def",
  "lexical_name": "inverseFunctorObj'",
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
  "slug": "inversefunctorobj--fb0cdaf437fda496287f039a",
  "source": {
    "blob": "d9991105157d96627bda90f5571edb8217fd2ad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 110,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantf439f1ba4b0e03a8e292f128d4929a5624148e1a3b82838e0895e5b8fd92eaf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb0cdaf437fda496287f039a00c6c9bb6bab4a42a9a6d89edc95639a9842eae3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantf439f1ba4b0e03a8e292f128d4929a5624148e1a3b82838e0895e5b8fd92eaf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db24e968144b79dd4fb8ed63e423ac81770f91a22c2765f8a2b7d539487e0192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inverseFunctorObj' (e : C ≌ D) :
    Opposite.unop ((inverseFunctor C D).obj e) ≅ e.inverse :=
  Iso.refl _

set_option backward.isDefEq.respectTransparency.types false in
variable (C D) in
/-- Promoting `Equivalence.congrLeft` to a functor. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantf439f1ba4b0e03a8e292f128d4929a5624148e1a3b82838e0895e5b8fd92eaf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantf439f1ba4b0e03a8e292f128d4929a5624148e1a3b82838e0895e5b8fd92eaf4.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9991105157d96627bda90f5571edb8217fd2ad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
