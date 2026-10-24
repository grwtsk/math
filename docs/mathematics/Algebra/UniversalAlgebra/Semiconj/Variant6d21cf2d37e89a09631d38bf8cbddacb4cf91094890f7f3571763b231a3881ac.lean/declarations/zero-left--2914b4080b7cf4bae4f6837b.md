# zero_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a767944-425b-af3b-158d-234f90931b08",
  "kind": "theorem",
  "lexical_name": "zero_left",
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
  "slug": "zero-left--2914b4080b7cf4bae4f6837b",
  "source": {
    "blob": "cdaed30810e0055754c603beff0f8cd6f01d01e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 36,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2914b4080b7cf4bae4f6837b09fa671eb09e6a773a8362bf6ead12535e87a44b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a767944-425b-af3b-158d-234f90931b08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_left [MulZeroClass G₀] (x y : G₀) : SemiconjBy 0 x y := by
  simp only [SemiconjBy, mul_zero, zero_mul]
#align semiconj_by.zero_left SemiconjBy.zero_left

variable [GroupWithZero G₀] {a x y x' y' : G₀}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdaed30810e0055754c603beff0f8cd6f01d01e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
