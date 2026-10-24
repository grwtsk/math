# Magma.AssocRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7552b1d920a7e3bf19617b8946ff71bad06454e589e5b144e024df4556ab6dfe",
  "kind": "inductive",
  "lexical_name": "Magma.AssocRel",
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
  "slug": "magma-assocrel--8903f79c7de933f56c4deb18",
  "source": {
    "blob": "3a908e6107ad17d3c24a838bedff2196bdd8e1f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 331,
    "path": "GRWTSK/Algebra/Free/Variantb930b6aa59b0d7bfc53d35b2f13c8fd6c16f90562d94a36b7b3ca6a4650a6c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8903f79c7de933f56c4deb18263aa3faf5ea705133ab31f1ff7decaa0771cb9e",
  "verification": {
    "reference": "docs/verification/Algebra/Free/Variantb930b6aa59b0d7bfc53d35b2f13c8fd6c16f90562d94a36b7b3ca6a4650a6c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7552b1d920a7e3bf19617b8946ff71bad06454e589e5b144e024df4556ab6dfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Magma.AssocRel (α : Type u) [Mul α] : α → α → Prop
  | intro : ∀ x y z, Magma.AssocRel α (x * y * z) (x * (y * z))
  | left : ∀ w x y z, Magma.AssocRel α (w * (x * y * z)) (w * (x * (y * z)))

namespace Magma

/-- Semigroup quotient of a magma. -/
@[to_additive AddMagma.FreeAddSemigroup /-- Additive semigroup quotient of an additive magma. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Free/Variantb930b6aa59b0d7bfc53d35b2f13c8fd6c16f90562d94a36b7b3ca6a4650a6c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Free/Variantb930b6aa59b0d7bfc53d35b2f13c8fd6c16f90562d94a36b7b3ca6a4650a6c68.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a908e6107ad17d3c24a838bedff2196bdd8e1f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
