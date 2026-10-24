# CanonicalTransportedMiddleLineData.exists_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d33a794f-c128-4afe-6a06-c5d4293db619",
  "kind": "theorem",
  "lexical_name": "CanonicalTransportedMiddleLineData.exists_scale",
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
  "slug": "canonicaltransportedmiddlelinedata-exists-scale--e667151cf4326db3bb2a2a1b",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2782,
    "line": 2754,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e667151cf4326db3bb2a2a1b74d1d7355062896b8ec10af8e15fbb0868cec853",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d33a794f-c128-4afe-6a06-c5d4293db619`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2754–2782.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CanonicalTransportedMiddleLineData.exists_scale
    {σ τ : E ≃ₐ[k] E}
    (D : CanonicalTransportedMiddleLineData σ τ) :
    ∃ c : E, c ≠ 0 ∧
      D.gamma = c •
        GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent.scalarConjugate
          σ D.beta := by
  exact CMEmbeddingTransport.exists_ne_zero_smul_scalarConjugate_eq
    (k := k) (E := E) σ τ
    D.beta_mem D.gamma_mem D.beta_ne_zero D.gamma_ne_zero

end CanonicalTransportedMiddleLine

section CohomologyToCanonicalComparison

open scoped TensorProduct
open CMRegularBaseChange
open CMEmbeddingTransport

variable {k E H : Type*} [Field k] [Field E] [Algebra k E]
  [FiniteDimensional k E] [IsGalois k E]
  [AddCommGroup H] [Module E H]

/-- Minimal comparison data between an actual cohomological realization and
the canonical Galois tensor model.

This structure does not assert that such a comparison exists; it records only
the exact compatibility needed to transport the already-local one-dimensional
eigenline argument back to cohomology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L2754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
