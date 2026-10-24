# Matrix.toLin_transpose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f1a9c73-0061-a861-d20c-561538132541",
  "kind": "theorem",
  "lexical_name": "Matrix.toLin_transpose",
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
  "slug": "matrix-tolin-transpose--c9900f3e9010f34479553f31",
  "source": {
    "blob": "1eb14a6e68b98942d0f39ae77bf0ad05215b3509",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant24eb8ca0863ddc313a2a7c92c1cb871a18424f75e9b1a247d79d8dd4215262bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9900f3e9010f34479553f31b7151400ca4041f474c7fba33b7e665d9cd0311d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dual/Variant24eb8ca0863ddc313a2a7c92c1cb871a18424f75e9b1a247d79d8dd4215262bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f1a9c73-0061-a861-d20c-561538132541`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Matrix.toLin_transpose (M : Matrix ι₁ ι₂ K) : Matrix.toLin B₁.dualBasis B₂.dualBasis Mᵀ =
    Module.Dual.transpose (R := K) (Matrix.toLin B₂ B₁ M) := by
  apply (LinearMap.toMatrix B₁.dualBasis B₂.dualBasis).injective
  rw [LinearMap.toMatrix_toLin, LinearMap.toMatrix_transpose, LinearMap.toMatrix_toLin]

end Transpose

/-- The dot product as a linear equivalence to the dual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Variant24eb8ca0863ddc313a2a7c92c1cb871a18424f75e9b1a247d79d8dd4215262bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Variant24eb8ca0863ddc313a2a7c92c1cb871a18424f75e9b1a247d79d8dd4215262bf.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eb14a6e68b98942d0f39ae77bf0ad05215b3509` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
