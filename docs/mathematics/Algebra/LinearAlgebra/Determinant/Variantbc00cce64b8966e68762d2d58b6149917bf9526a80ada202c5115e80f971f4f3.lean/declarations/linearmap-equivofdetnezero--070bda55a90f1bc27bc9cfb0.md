# LinearMap.equivOfDetNeZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e15f4280cc0f6558b421ad23375da60126627c55a6ce242f0a0525a1d747ac0c",
  "kind": "abbrev",
  "lexical_name": "LinearMap.equivOfDetNeZero",
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
  "slug": "linearmap-equivofdetnezero--070bda55a90f1bc27bc9cfb0",
  "source": {
    "blob": "43388bddadbe90771fc50f56f6faa331d76d06c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 474,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variantbc00cce64b8966e68762d2d58b6149917bf9526a80ada202c5115e80f971f4f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:070bda55a90f1bc27bc9cfb03f892d8656a7ce62b4d0a7dab98f057c6d9fc2fc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variantbc00cce64b8966e68762d2d58b6149917bf9526a80ada202c5115e80f971f4f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e15f4280cc0f6558b421ad23375da60126627c55a6ce242f0a0525a1d747ac0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev LinearMap.equivOfDetNeZero {𝕜 : Type*} [Field 𝕜] {M : Type*} [AddCommGroup M] [Module 𝕜 M]
    [FiniteDimensional 𝕜 M] (f : M →ₗ[𝕜] M) (hf : LinearMap.det f ≠ 0) : M ≃ₗ[𝕜] M :=
  have : IsUnit (LinearMap.toMatrix (Module.finBasis 𝕜 M)
      (Module.finBasis 𝕜 M) f).det := by
    rw [LinearMap.det_toMatrix]
    exact isUnit_iff_ne_zero.2 hf
  LinearEquiv.ofIsUnitDet this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variantbc00cce64b8966e68762d2d58b6149917bf9526a80ada202c5115e80f971f4f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variantbc00cce64b8966e68762d2d58b6149917bf9526a80ada202c5115e80f971f4f3.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43388bddadbe90771fc50f56f6faa331d76d06c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
