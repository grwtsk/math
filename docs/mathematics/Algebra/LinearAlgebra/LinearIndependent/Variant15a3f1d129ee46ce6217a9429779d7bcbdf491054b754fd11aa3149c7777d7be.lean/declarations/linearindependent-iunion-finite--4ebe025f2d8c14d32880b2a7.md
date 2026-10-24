# linearIndependent_iUnion_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f9ed26f-11ce-c8b8-63a4-1ff03d56e2e0",
  "kind": "theorem",
  "lexical_name": "linearIndependent_iUnion_finite",
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
  "slug": "linearindependent-iunion-finite--4ebe025f2d8c14d32880b2a7",
  "source": {
    "blob": "3624b387ea4062357a4d5b9465d82c958c5cb63a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 815,
    "line": 781,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variant15a3f1d129ee46ce6217a9429779d7bcbdf491054b754fd11aa3149c7777d7be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ebe025f2d8c14d32880b2a78024d9fc3455c26159a5f85eb8beffc35eec1e89",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearIndependent/Variant15a3f1d129ee46ce6217a9429779d7bcbdf491054b754fd11aa3149c7777d7be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f9ed26f-11ce-c8b8-63a4-1ff03d56e2e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 781–815.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_iUnion_finite {η : Type*} {ιs : η → Type*} {f : ∀ j : η, ιs j → M}
    (hindep : ∀ j, LinearIndependent R (f j))
    (hd : ∀ i, ∀ t : Set η,
      t.Finite → i ∉ t → Disjoint (span R (range (f i))) (⨆ i ∈ t, span R (range (f i)))) :
    LinearIndependent R fun ji : Σ j, ιs j => f ji.1 ji.2 := by
  nontriviality R
  apply LinearIndependent.of_subtype_range
  · rintro ⟨x₁, x₂⟩ ⟨y₁, y₂⟩ hxy
    by_cases h_cases : x₁ = y₁
    subst h_cases
    · apply Sigma.eq
      rw [LinearIndependent.injective (hindep _) hxy]
      rfl
    · have h0 : f x₁ x₂ = 0 := by
        apply
          disjoint_def.1 (hd x₁ {y₁} (finite_singleton y₁) fun h => h_cases (eq_of_mem_singleton h))
            (f x₁ x₂) (subset_span (mem_range_self _))
        rw [iSup_singleton]
        simp only at hxy
        rw [hxy]
        exact subset_span (mem_range_self y₂)
      exact False.elim ((hindep x₁).ne_zero _ h0)
  rw [range_sigma_eq_iUnion_range]
  apply linearIndependent_iUnion_finite_subtype (fun j => (hindep j).to_subtype_range) hd
#align linear_independent_Union_finite linearIndependent_iUnion_finite

end Subtype

section repr

variable (hv : LinearIndependent R v)

/-- Canonical isomorphism between linear combinations and the span of linearly independent vectors.
-/
@[simps (config := { rhsMd := default }) symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearIndependent/Variant15a3f1d129ee46ce6217a9429779d7bcbdf491054b754fd11aa3149c7777d7be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variant15a3f1d129ee46ce6217a9429779d7bcbdf491054b754fd11aa3149c7777d7be.lean#L781).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3624b387ea4062357a4d5b9465d82c958c5cb63a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
