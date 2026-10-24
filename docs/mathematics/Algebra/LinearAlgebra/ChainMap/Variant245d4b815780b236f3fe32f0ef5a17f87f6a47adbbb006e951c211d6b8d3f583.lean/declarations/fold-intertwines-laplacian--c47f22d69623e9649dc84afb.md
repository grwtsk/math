# fold_intertwines_laplacian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0648904-2125-51f1-8291-eb986d9a9e46",
  "kind": "theorem",
  "lexical_name": "fold_intertwines_laplacian",
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
  "slug": "fold-intertwines-laplacian--c47f22d69623e9649dc84afb",
  "source": {
    "blob": "a5a695d561cef585ab569539584488b04c2e4190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c47f22d69623e9649dc84afb31cb642f78957afa8eda4e6050778a90e6661efa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0648904-2125-51f1-8291-eb986d9a9e46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fold_intertwines_laplacian (fold : FoldUnitary terrain) :
    fold.operator * terrain.complex.laplacian =
      terrain.complex.laplacian * fold.operator := by
  rw [← terrain.complex.hodgeDirac_square]
  calc
    fold.operator * (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac) =
        (fold.operator * terrain.complex.hodgeDirac) *
          terrain.complex.hodgeDirac := by simp [mul_assoc]
    _ = (terrain.complex.hodgeDirac * fold.operator) *
          terrain.complex.hodgeDirac := by rw [fold.fold_intertwines_hodgeDirac]
    _ = terrain.complex.hodgeDirac *
        (fold.operator * terrain.complex.hodgeDirac) := by simp [mul_assoc]
    _ = terrain.complex.hodgeDirac *
        (terrain.complex.hodgeDirac * fold.operator) := by
          rw [fold.fold_intertwines_hodgeDirac]
    _ = (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac) *
        fold.operator := by simp [mul_assoc]

/-- Fold unitarity is exact matrix unitarity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ChainMap/Variant245d4b815780b236f3fe32f0ef5a17f87f6a47adbbb006e951c211d6b8d3f583.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5a695d561cef585ab569539584488b04c2e4190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
