# first_cross_second

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:283ea4a6-b657-f7f8-59cb-d2cde68e2049",
  "kind": "theorem",
  "lexical_name": "first_cross_second",
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
  "slug": "first-cross-second--39092d09c4ad8ecf2d8ff7e6",
  "source": {
    "blob": "8567890d0a5b1f8fde59ea36ca8ffef1318fafca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 184,
    "path": "GRWTSK/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39092d09c4ad8ecf2d8ff7e68796782720f51274d07d624ddd852e0b9403cff0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:283ea4a6-b657-f7f8-59cb-d2cde68e2049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_cross_second (data : Data) :
    firstKernelVector data ⨯₃ secondKernelVector data =
      -normalVector data := by
  rw [Matrix.cross_apply]
  apply Matrix.vec3_eq
  · dsimp [firstKernelVector, secondKernelVector, normalVector]
    rw [← data.cast_a_eq_reduced_mul_gcd]
    ring
  · dsimp [firstKernelVector, secondKernelVector, normalVector]
    rw [← data.cast_b_eq_reduced_mul_gcd]
    ring
  · dsimp [firstKernelVector, secondKernelVector, normalVector]
    calc
      (data.reducedB : ℤ) *
            ((data.c : ℤ) * Nat.gcdB data.reducedA data.reducedB) -
          -(data.reducedA : ℤ) *
            ((data.c : ℤ) * Nat.gcdA data.reducedA data.reducedB) =
        (data.c : ℤ) *
          ((data.reducedA : ℤ) * Nat.gcdA data.reducedA data.reducedB +
            (data.reducedB : ℤ) * Nat.gcdB data.reducedA data.reducedB) := by
          ring
      _ = (data.c : ℤ) := by rw [data.reduced_bezout_identity]; ring

/-- Matrix whose rows are the two kernel vectors and the complementary
Bezout vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8567890d0a5b1f8fde59ea36ca8ffef1318fafca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
