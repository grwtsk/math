# subDown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ad4c61c2b2123ad578707f59e6de4fe9e5fdddf005e15d63beb78d300f4d176",
  "kind": "abbrev",
  "lexical_name": "subDown",
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
  "slug": "subdown--44d1ad4ed9d9890f1a0430bf",
  "source": {
    "blob": "2eff4918bd0e6841664566f56af8cc0260a5c7b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 485,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantb67b9d40d54689ebd2a746d38e3afc6ab82d2bf8f3a54e03ff7368a965614538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44d1ad4ed9d9890f1a0430bffbfd532f414f1b6d38c46d4ba1841173bb3c4477",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantb67b9d40d54689ebd2a746d38e3afc6ab82d2bf8f3a54e03ff7368a965614538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ad4c61c2b2123ad578707f59e6de4fe9e5fdddf005e15d63beb78d300f4d176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev subDown {d u n : Nat} (A : Matrix (Fin (u + d)) (Fin n) α) : Matrix (Fin d) (Fin n) α :=
  submatrix A (Fin.natAdd u) id

/-- The top-right `u × r` part of a `(u+d) × (l+r)` matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantb67b9d40d54689ebd2a746d38e3afc6ab82d2bf8f3a54e03ff7368a965614538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantb67b9d40d54689ebd2a746d38e3afc6ab82d2bf8f3a54e03ff7368a965614538.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eff4918bd0e6841664566f56af8cc0260a5c7b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
