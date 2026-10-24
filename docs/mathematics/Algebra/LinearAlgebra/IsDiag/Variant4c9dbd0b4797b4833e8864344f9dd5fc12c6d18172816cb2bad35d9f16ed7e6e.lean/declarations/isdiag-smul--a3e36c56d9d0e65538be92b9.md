# IsDiag.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80f41871-12bf-c2c0-dfa0-f9c7322af42f",
  "kind": "theorem",
  "lexical_name": "IsDiag.smul",
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
  "slug": "isdiag-smul--a3e36c56d9d0e65538be92b9",
  "source": {
    "blob": "d9fe600688dfbb04c4c0dbd7703d7a4f88d75e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 98,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3e36c56d9d0e65538be92b90a73a6b84b1b3c872387ea507d134320bd3fcc84",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80f41871-12bf-c2c0-dfa0-f9c7322af42f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsDiag.smul [Zero α] [SMulZeroClass R α] (k : R) {A : Matrix n n α}
    (ha : A.IsDiag) : (k • A).IsDiag := by
  intro i j h
  simp [ha h]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsDiag/Variant4c9dbd0b4797b4833e8864344f9dd5fc12c6d18172816cb2bad35d9f16ed7e6e.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9fe600688dfbb04c4c0dbd7703d7a4f88d75e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
