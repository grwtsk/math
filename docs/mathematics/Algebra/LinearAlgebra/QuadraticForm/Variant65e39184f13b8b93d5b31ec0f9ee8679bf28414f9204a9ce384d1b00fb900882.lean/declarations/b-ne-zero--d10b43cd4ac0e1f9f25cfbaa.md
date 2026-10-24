# B_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b0b2abe-6b50-0fec-354a-eddf281d4eae",
  "kind": "theorem",
  "lexical_name": "B_ne_zero",
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
  "slug": "b-ne-zero--d10b43cd4ac0e1f9f25cfbaa",
  "source": {
    "blob": "cc4215c28427de8084694963d37122ac783055db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d10b43cd4ac0e1f9f25cfbaa211127b442e84d3f80fe348168cab0c6385fefe0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b0b2abe-6b50-0fec-354a-eddf281d4eae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem B_ne_zero : B F ≠ 0 := fun h => by simpa using BilinForm.congr_fun h (1, 0) (1, 1)
#align counterexample.B_ne_zero Counterexample.B_ne_zero

/-- `BilinForm.toQuadraticForm` is not injective on symmetric bilinear forms.

This disproves a weaker version of `QuadraticForm.associated_left_inverse`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc4215c28427de8084694963d37122ac783055db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
