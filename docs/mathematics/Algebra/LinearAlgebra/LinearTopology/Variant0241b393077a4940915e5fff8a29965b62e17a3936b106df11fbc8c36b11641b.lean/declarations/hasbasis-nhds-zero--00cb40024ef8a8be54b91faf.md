# hasBasis_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:623cbf30-9203-2522-12f1-a3956cf8a045",
  "kind": "lemma",
  "lexical_name": "hasBasis_nhds_zero",
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
  "slug": "hasbasis-nhds-zero--00cb40024ef8a8be54b91faf",
  "source": {
    "blob": "b4286e89bf861e6d490b512db067a4155db76158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00cb40024ef8a8be54b91faf2944e37a3b71831f4ad052e113046d408a71398d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:623cbf30-9203-2522-12f1-a3956cf8a045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasBasis_nhds_zero [IsLinearTopology R R] [IsLinearTopology Rᵐᵒᵖ R] :
    (𝓝 0 : Filter (MvPowerSeries σ R)).HasBasis
      (fun Id : TwoSidedIdeal R × (σ →₀ ℕ) ↦ (Id.1 : Set R) ∈ 𝓝 0)
      (fun Id ↦ basis _ _ Id) := by
  classical
  rw [nhds_pi]
  refine IsLinearTopology.hasBasis_twoSidedIdeal.pi_self.to_hasBasis ?_ ?_
  · intro ⟨D, I⟩ ⟨hD, hI⟩
    refine ⟨⟨I, Finset.sup hD.toFinset id⟩, hI, fun f hf d hd ↦ ?_⟩
    rw [SetLike.mem_coe, mem_basis_iff] at hf
    convert! hf _ <| Finset.le_sup (hD.mem_toFinset.mpr hd)
  · intro ⟨I, d⟩ hI
    refine ⟨⟨Iic d, I⟩, ⟨finite_Iic d, hI⟩, ?_⟩
    simpa [basis, coeff_apply, Iic, Set.pi] using! subset_rfl

/-- The topology on `MvPowerSeries` is a left linear topology
  when the ring of coefficients has a linear topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variant0241b393077a4940915e5fff8a29965b62e17a3936b106df11fbc8c36b11641b.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4286e89bf861e6d490b512db067a4155db76158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
