# BlockTriangular.mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b249c5ce-ecf1-e5a2-36c2-e5fa9f3c5af8",
  "kind": "theorem",
  "lexical_name": "BlockTriangular.mul",
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
  "slug": "blocktriangular-mul--460f9b14183c3d729e5e5d2b",
  "source": {
    "blob": "e76935818d9641173894b307b04362f9b8e9cf43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 206,
    "path": "GRWTSK/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:460f9b14183c3d729e5e5d2b18fb6f25073ddd8610e3ca79d1956ccc15bfaa53",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b249c5ce-ecf1-e5a2-36c2-e5fa9f3c5af8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BlockTriangular.mul [Fintype m] [NonUnitalNonAssocSemiring R]
    {M N : Matrix m m R} (hM : BlockTriangular M b)
    (hN : BlockTriangular N b) : BlockTriangular (M * N) b := by
  intro i j hij
  apply Finset.sum_eq_zero
  intro k _
  by_cases! hki : b k < b i
  · simp_rw [hM hki, zero_mul]
  · simp_rw [hN (lt_of_lt_of_le hij hki), mul_zero]

variable (R b) in
/-- `BlockTriangular` matrices form a subsemiring. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Block/Variant27656077283e0fd8765bafc64bb95069aad68d8457aec79f486d4b53a8657a1b.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e76935818d9641173894b307b04362f9b8e9cf43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
