# coneDiscreteComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5678879d281c19208686d05dc34365824fd46896d5fcaee42247351420ab0253",
  "kind": "def",
  "lexical_name": "coneDiscreteComp",
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
  "slug": "conediscretecomp--1a6911d8e8e64e9f2c2b1543",
  "source": {
    "blob": "e6832377f7ffe7db28f0156ec4e6b077d10d8646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a6911d8e8e64e9f2c2b15435d07350aa5415086aa3f80a24475f201f42d8bf4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5678879d281c19208686d05dc34365824fd46896d5fcaee42247351420ab0253`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coneDiscreteComp :
    Limits.Cone (Discrete.functor X ⋙ π) ≌ Limits.Cone (Discrete.functor fun i => πₓ (X i)) :=
  Limits.Cones.postcomposeEquivalence (Discrete.compNatIsoDiscrete X π)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variant0915cbcf857b9efe114b80a01cd9cced4dc75eb12a9993ed41193f616bdd64af.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6832377f7ffe7db28f0156ec4e6b077d10d8646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
