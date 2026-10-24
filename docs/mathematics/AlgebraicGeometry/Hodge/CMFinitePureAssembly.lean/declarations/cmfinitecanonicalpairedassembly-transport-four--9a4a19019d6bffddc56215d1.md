# CMFiniteCanonicalPairedAssembly_transport_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7981e637742b1d82f7d692dd11a07df4c69fd84e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 680,
      "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e6a5b13-6dc1-cd02-13f2-e46c83ac75bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b2cb8d1-3552-4c01-6ac2-c467091fcce6",
  "kind": "theorem",
  "lexical_name": "CMFiniteCanonicalPairedAssembly_transport_four",
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
  "slug": "cmfinitecanonicalpairedassembly-transport-four--9a4a19019d6bffddc56215d1",
  "source": {
    "blob": "7981e637742b1d82f7d692dd11a07df4c69fd84e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 680,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a4a19019d6bffddc56215d1ecb066c589940e60553c095dde7b559e9eba3df3",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b2cb8d1-3552-4c01-6ac2-c467091fcce6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 680–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CMFiniteCanonicalPairedAssembly_transport_four
    (E : CMGaloisIntermediateField)
    (σ : E.carrier ≃ₐ[ℚ] E.carrier)
    (t₁ t₂ t₃ t₄ : E.carrier ⊗[ℚ] E.carrier) :
    GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent.scalarConjugate σ
      (CMFiniteCanonicalPairedAssembly E
        (((t₁ ⊗ₜ[ℚ] t₂) ⊗ₜ[ℚ] t₃) ⊗ₜ[ℚ] t₄)) =
    CMFiniteCanonicalPairedAssembly E
      (((GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent.scalarConjugate σ t₁
          ⊗ₜ[ℚ]
          GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent.scalarConjugate σ t₂)
          ⊗ₜ[ℚ]
          GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent.scalarConjugate σ t₃)
          ⊗ₜ[ℚ]
          GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent.scalarConjugate σ t₄) := by
  rw [CMFiniteCanonicalPairedAssembly_scalarConjugate]
  simp [CMFiniteFourPairedCoefficientConjugate]

end
end GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorSwitchGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFinitePureAssembly.lean#L680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7981e637742b1d82f7d692dd11a07df4c69fd84e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
