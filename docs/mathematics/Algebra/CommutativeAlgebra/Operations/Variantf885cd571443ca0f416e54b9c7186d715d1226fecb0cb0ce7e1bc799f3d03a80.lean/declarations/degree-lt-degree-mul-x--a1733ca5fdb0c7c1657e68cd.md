# degree_lt_degree_mul_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75f9e667-b7ad-b774-d375-b04706c4f06b",
  "kind": "theorem",
  "lexical_name": "degree_lt_degree_mul_X",
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
  "slug": "degree-lt-degree-mul-x--a1733ca5fdb0c7c1657e68cd",
  "source": {
    "blob": "9b78ca48e47b27efd166aba6eabf275c0e8a92f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 475,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Operations/Variantf885cd571443ca0f416e54b9c7186d715d1226fecb0cb0ce7e1bc799f3d03a80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1733ca5fdb0c7c1657e68cd4c816a6a551c236b9c628f0db0bd1eb79b7a308d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Operations/Variantf885cd571443ca0f416e54b9c7186d715d1226fecb0cb0ce7e1bc799f3d03a80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75f9e667-b7ad-b774-d375-b04706c4f06b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_lt_degree_mul_X (hp : p ≠ 0) : p.degree < (p * X).degree := by
  haveI := Nontrivial.of_polynomial_ne hp
  have : leadingCoeff p * leadingCoeff X ≠ 0 := by simpa
  rw [degree_mul' this, degree_eq_natDegree hp, degree_X, ← Nat.cast_one, ← Nat.cast_add]
  norm_cast
  exact Nat.lt_succ_self _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Operations/Variantf885cd571443ca0f416e54b9c7186d715d1226fecb0cb0ce7e1bc799f3d03a80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Operations/Variantf885cd571443ca0f416e54b9c7186d715d1226fecb0cb0ce7e1bc799f3d03a80.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b78ca48e47b27efd166aba6eabf275c0e8a92f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
