# ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec778722-5b26-22dc-f8e5-3da9ae27f7e0",
  "kind": "theorem",
  "lexical_name": "ext",
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
  "slug": "ext--d92f6d7f7ba313d8fe2ceb1e",
  "source": {
    "blob": "9040eac8a0d516b137a73671826ca0b94d85320e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d92f6d7f7ba313d8fe2ceb1ede26e7b9619c03f599f4848ff2474b5041a470a6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec778722-5b26-22dc-f8e5-3da9ae27f7e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ext ⦃q₁ q₂ : Basis A c₁ c₂⦄ (hi : q₁.i = q₂.i) (hj : q₁.j = q₂.j) : q₁ = q₂ := by
  cases q₁; rename_i q₁_i_mul_j _
  cases q₂; rename_i q₂_i_mul_j _
  congr
  rw [← q₁_i_mul_j, ← q₂_i_mul_j]
  congr
#align quaternion_algebra.basis.ext QuaternionAlgebra.Basis.ext

variable (R)

/-- There is a natural quaternionic basis for the `QuaternionAlgebra`. -/
@[simps i j k]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variant87647b1fbb8243ee036fd59a7b820c9ce179f2f6f2df39fd0df00c04fa2a666b.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9040eac8a0d516b137a73671826ca0b94d85320e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
