# CohomologyCanonicalLineComparison.exists_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78baa1e3-e77e-2169-b181-dcd1a62e04b1",
  "kind": "theorem",
  "lexical_name": "CohomologyCanonicalLineComparison.exists_scale",
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
  "slug": "cohomologycanonicallinecomparison-exists-scale--7f7c0edcf2702729907b6eb6",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2845,
    "line": 2818,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f7c0edcf2702729907b6eb6cb860ddc98c408d0a6454ffe7d126f743b8f7cac",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78baa1e3-e77e-2169-b181-dcd1a62e04b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2818–2845.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CohomologyCanonicalLineComparison.exists_scale
    {σ τ : E ≃ₐ[k] E}
    (D : CohomologyCanonicalLineComparison σ τ) :
    ∃ c : E, c ≠ 0 ∧
      D.gamma = c • D.actualConjugate D.beta := by
  let C : CanonicalTransportedMiddleLineData (k := k) σ τ where
    beta := D.toCanonical D.beta
    gamma := D.toCanonical D.gamma
    beta_mem := D.beta_line
    gamma_mem := D.gamma_line
    beta_ne_zero := D.beta_canonical_ne_zero
    gamma_ne_zero := D.gamma_canonical_ne_zero
  obtain ⟨c, hc, hcan⟩ := C.exists_scale
  refine ⟨c, hc, D.toCanonical.injective ?_⟩
  rw [map_smul, D.conjugation_compatibility]
  exact hcan

end CohomologyToCanonicalComparison

section PositiveMiddlePairing

variable {V : Type*} [AddCommGroup V] [Module ℂ V]

/-- Abstract positivity package for the middle-factor pairing in the
transition-composition formula.

This is deliberately weaker than a geometric Hodge--Riemann theorem: it only
records the exact consequences needed to prove one scalar pairing is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L2818).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
