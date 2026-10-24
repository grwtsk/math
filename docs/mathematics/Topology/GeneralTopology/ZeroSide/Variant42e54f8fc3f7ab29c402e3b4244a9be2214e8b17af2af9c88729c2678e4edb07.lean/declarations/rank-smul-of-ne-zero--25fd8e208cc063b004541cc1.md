# rank_smul_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6314b10374daf4ea5582a3010bce0fb4ec4813d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42e54f8fc3f7ab29c402e3b4244a9be2214e8b17af2af9c88729c2678e4edb07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbc61d63-403d-9c92-538b-d2e6bd532a62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37363cf9-f6e3-ec4f-8ff5-23e3cafe272a",
  "kind": "lemma",
  "lexical_name": "rank_smul_of_ne_zero",
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
  "slug": "rank-smul-of-ne-zero--25fd8e208cc063b004541cc1",
  "source": {
    "blob": "6314b10374daf4ea5582a3010bce0fb4ec4813d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroSide/Variant42e54f8fc3f7ab29c402e3b4244a9be2214e8b17af2af9c88729c2678e4edb07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25fd8e208cc063b004541cc10f4f444ef7bd28792f246b02deb8c6e36150e42b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroSide/Variant42e54f8fc3f7ab29c402e3b4244a9be2214e8b17af2af9c88729c2678e4edb07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37363cf9-f6e3-ec4f-8ff5-23e3cafe272a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rank_smul_of_ne_zero (A : Matrix n n 𝕜) {c : 𝕜} (hc : c ≠ 0) : (c • A).rank = A.rank := by
  apply le_antisymm
  · simpa using rank_mul_le_right (c • (1 : Matrix n n 𝕜)) A
  · calc A.rank = ((c⁻¹ • (1 : Matrix n n 𝕜)) * (c • A)).rank := by
          rw [Matrix.smul_mul, one_mul, smul_smul, inv_mul_cancel₀ hc, one_smul]
      _ ≤ (c • A).rank := rank_mul_le_right _ _

end Generic

/-! ## Section 2. The abstract block structure (paper §4: [eq:AE], Block structure, [eq:Ncount], [prop:block])

Paper §4, Block structure, verbatim: "Let 𝒵(I') be the set of distinct zeros with γ ∈ I'. Classify its
points as follows: 𝒮₁: β = ½ and m_ρ = 1 (simple zeros on the line); s₁ := #𝒮₁; 𝒮₂: β = ½ and
m_ρ ≥ 2; s₂ := #𝒮₂; 𝒫: unordered pairs {ρ, 1−ρ̄} with β ≠ ½ (both members lie in 𝒵(I'), they are
distinct points, and m_{1−ρ̄} = m_ρ); p := #𝒫. Thus #𝒵(I') = s₁+s₂+2p and, counting with
multiplicity, N(I') = Σ_{𝒮₁} 1 + Σ_{𝒮₂} m_ρ + Σ_{𝒫} 2m_ρ ≥ s₁+2s₂+2p. [eq:Ncount]
Write N_on(I') := Σ_{ρ∈𝒮₁∪𝒮₂} m_ρ, so that also N(I') ≥ N_on(I') + 2p."

We encode 𝒵(I') as a finite index type ι, the grid {0,…,d−1} as a finite type d, and carry:
multiplicities m (≥ 1, explicit — zeros are DISTINCT points), the involution σ = (ρ ↦ 1−ρ̄)
restricted to 𝒵(I') (it preserves the ordinate, hence 𝒵(I')), and the evaluation vectors
u_ρ = (φ̂(γ_ρ − τ_k))_{k<d} ∈ ℂ^d with u_{1−ρ̄} = conj u_ρ (from γ_{1−ρ̄} = conj γ_ρ, τ_k ∈ ℝ, and
conj φ̂(z̄) = φ̂(z) [subsec:family after eq:fk]). On-line ⟺ β = ½ ⟺ σ ρ = ρ.
-/

section Block

variable {ι d : Type*} [Fintype ι] [DecidableEq ι] [Fintype d] [DecidableEq d]

/-- Abstract zero-side data of the window 𝒵(I') [§4 Block structure]: distinct points z : ι with
explicit multiplicity `m z ≥ 1`, evaluation vectors `v z = (φ̂(γ_z − τ_k))_k`, and the involution
`σ = (ρ ↦ 1 − ρ̄)` with `m ∘ σ = m` and `v (σ z) = conj ∘ v z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroSide/Variant42e54f8fc3f7ab29c402e3b4244a9be2214e8b17af2af9c88729c2678e4edb07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroSide/Variant42e54f8fc3f7ab29c402e3b4244a9be2214e8b17af2af9c88729c2678e4edb07.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6314b10374daf4ea5582a3010bce0fb4ec4813d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
