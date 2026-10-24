# XYIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:645f0e16279de8c974e0369d33a656766d27f1aedf5a92d24775bf1c9ffb3489",
  "kind": "def",
  "lexical_name": "XYIdeal",
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
  "slug": "xyideal--6aa8d9d1be5b35df4e5c09b5",
  "source": {
    "blob": "e5e9276cca4040bbe7400610096af7d9f043fae8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 250,
    "path": "GRWTSK/Algebra/LinearAlgebra/Point/Varianta086832677b69c0aeeb87b3d515af998c0b1e616429cad1f4ff447f9499c5678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6aa8d9d1be5b35df4e5c09b5a75106f244caaf918375271d5b9f89199d1cfde6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Point/Varianta086832677b69c0aeeb87b3d515af998c0b1e616429cad1f4ff447f9499c5678.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:645f0e16279de8c974e0369d33a656766d27f1aedf5a92d24775bf1c9ffb3489`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def XYIdeal (x : R) (y : R[X]) : Ideal W'.CoordinateRing :=
  .span {XClass W' x, YClass W' y}

/-- The `R`-algebra isomorphism from `R[W] / ⟨X - x, Y - y(X)⟩` to `R` obtained by evaluation at
some `y(X)` in `R[X]` and at some `x` in `R` provided that `W(x, y(x)) = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Point/Varianta086832677b69c0aeeb87b3d515af998c0b1e616429cad1f4ff447f9499c5678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Point/Varianta086832677b69c0aeeb87b3d515af998c0b1e616429cad1f4ff447f9499c5678.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5e9276cca4040bbe7400610096af7d9f043fae8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
