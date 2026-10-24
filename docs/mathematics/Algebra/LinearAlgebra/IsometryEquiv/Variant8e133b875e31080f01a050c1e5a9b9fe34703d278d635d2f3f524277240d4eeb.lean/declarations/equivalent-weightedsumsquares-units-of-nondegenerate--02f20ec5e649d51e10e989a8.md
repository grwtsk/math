# equivalent_weightedSumSquares_units_of_nondegenerate'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e42b0391d785897726d0e5802cdbed3a81b8d0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecfb9737-a992-153d-cb94-11f62d0ee838",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c56cc02-4a62-14c4-50b3-9de8fd1f77d2",
  "kind": "theorem",
  "lexical_name": "equivalent_weightedSumSquares_units_of_nondegenerate'",
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
  "slug": "equivalent-weightedsumsquares-units-of-nondegenerate--02f20ec5e649d51e10e989a8",
  "source": {
    "blob": "2e42b0391d785897726d0e5802cdbed3a81b8d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 178,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02f20ec5e649d51e10e989a84546497cb92d76ef005acebfa7dae88cf62b8ded",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c56cc02-4a62-14c4-50b3-9de8fd1f77d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equivalent_weightedSumSquares_units_of_nondegenerate' (Q : QuadraticForm K V)
    (hQ : (associated (R := K) Q).SeparatingLeft) :
    ∃ w : Fin (Module.finrank K V) → Kˣ, Equivalent Q (weightedSumSquares K w) := by
  obtain ⟨v, hv₁⟩ := exists_orthogonal_basis (associated_isSymm K Q)
  have hv₂ := hv₁.not_isOrtho_basis_self_of_separatingLeft hQ
  simp_rw [associated_eq_self_apply] at hv₂
  exact ⟨fun i => Units.mk0 _ (hv₂ i), ⟨Q.isometryEquivWeightedSumSquares v hv₁⟩⟩

variable {ι S R : Type*}
variable [Fintype ι] [CommSemiring R] [Monoid S] [DistribMulAction S R] [SMulCommClass S R R]
variable [IsScalarTower S R R]
variable {w : ι → S} {w' : ι → S}

/-- The isometry between two weighted sum of squares of equal weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant8e133b875e31080f01a050c1e5a9b9fe34703d278d635d2f3f524277240d4eeb.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e42b0391d785897726d0e5802cdbed3a81b8d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
