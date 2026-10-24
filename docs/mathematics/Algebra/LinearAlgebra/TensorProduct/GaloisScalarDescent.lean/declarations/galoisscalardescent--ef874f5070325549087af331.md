# galoisScalarDescent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c63ed70d-34fe-4029-25a2-7f54b4d70dc3",
  "kind": "theorem",
  "lexical_name": "galoisScalarDescent",
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
  "slug": "galoisscalardescent--ef874f5070325549087af331",
  "source": {
    "blob": "e0751d298fefe79f8a5fc987922f18ec5b22fb35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 110,
    "path": "GRWTSK/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef874f5070325549087af3318c73728bcb71685d4d6ed039f73a7674d7d3aa78",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c63ed70d-34fe-4029-25a2-7f54b4d70dc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem galoisScalarDescent
    (P : Submodule K (K ⊗[k] V))
    (t : K ⊗[k] V)
    (ht : ∀ σ : K ≃ₐ[k] K, scalarConjugate σ t ∈ P) :
    t ∈ (rationalPart P).baseChange K := by
  obtain ⟨L, u, hu⟩ := tensor_defined_over_finiteGalois t
  let Q : Submodule L (L ⊗[k] V) :=
    (P.restrictScalars L).comap coefficientInclusion
  have hQ : rationalPart Q = rationalPart P :=
    rationalPart_comap_coefficientInclusion P
  have hconj (χ : L ≃ₐ[k] L) :
      scalarConjugate χ u ∈ Q := by
    obtain ⟨σ, hσ⟩ :=
      AlgEquiv.restrictNormalHom_surjective
        (F := k) (K₁ := L) K χ
    change coefficientInclusion
      (scalarConjugate χ u) ∈ P
    change σ.restrictNormal L = χ at hσ
    rw [← hσ, scalarConjugate_restrict, hu]
    exact ht σ
  have hdesc := finiteGalois_scalarDescent Q u hconj
  rw [hQ] at hdesc
  rw [← hu]
  exact coefficientInclusion_mem_baseChange
    (rationalPart P) u hdesc

end ArbitraryGalois

section AmbientDescent

variable {k K C V : Type*} [Field k] [Field K] [Field C]
  [Algebra k K] [IsGalois k K]
  [Algebra k C] [Algebra K C] [IsScalarTower k K C]
  [AddCommGroup V] [Module k V]

/-- Ambient scalar descent when the semantic subspace is defined only after a
further coefficient extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0751d298fefe79f8a5fc987922f18ec5b22fb35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
