# comap_map_eq_map_of_isLocalization_algebraMapSubmonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54bb340675a08f2a95a6f566b0ef31d11175e188",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fff1b54-af16-1e28-b792-62253b8eecc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f8ecbcd-e246-1275-5150-3f19e986a641",
  "kind": "lemma",
  "lexical_name": "comap_map_eq_map_of_isLocalization_algebraMapSubmonoid",
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
  "slug": "comap-map-eq-map-of-islocalization-algebramapsubmonoid--6b72934495d5b89099f1c4e2",
  "source": {
    "blob": "54bb340675a08f2a95a6f566b0ef31d11175e188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 100,
    "path": "GRWTSK/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b72934495d5b89099f1c4e226adc0e2b402b89db0177c950a7254d90ca9f336",
  "verification": {
    "reference": "docs/verification/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f8ecbcd-e246-1275-5150-3f19e986a641`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comap_map_eq_map_of_isLocalization_algebraMapSubmonoid :
    (Ideal.map (algebraMap R Sₚ) p).comap (algebraMap S Sₚ) = pS := by
  rw [IsScalarTower.algebraMap_eq R S Sₚ, ← Ideal.map_map, eq_comm]
  apply Ideal.le_comap_map.antisymm
  intro x hx
  obtain ⟨α, hα, hαx⟩ : ∃ α ∉ p, α • x ∈ pS := by
    have ⟨⟨y, s⟩, hy⟩ := (IsLocalization.mem_map_algebraMap_iff
      (Algebra.algebraMapSubmonoid S p.primeCompl) Sₚ).mp hx
    rw [← map_mul,
      IsLocalization.eq_iff_exists (Algebra.algebraMapSubmonoid S p.primeCompl)] at hy
    obtain ⟨c, hc⟩ := hy
    obtain ⟨α, hα, e⟩ := (c * s).prop
    refine ⟨α, hα, ?_⟩
    rw [Algebra.smul_def, e, Submonoid.coe_mul, mul_assoc, mul_comm _ x, hc]
    exact Ideal.mul_mem_left _ _ y.prop
  obtain ⟨β, γ, hγ, hβ⟩ : ∃ β γ, γ ∈ p ∧ β * α = 1 + γ := by
    obtain ⟨β, hβ⟩ := Ideal.Quotient.mk_surjective (I := p) (Ideal.Quotient.mk p α)⁻¹
    refine ⟨β, β * α - 1, ?_, ?_⟩
    · rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_one,
        map_mul, hβ, inv_mul_cancel₀, sub_self]
      rwa [Ne, Ideal.Quotient.eq_zero_iff_mem]
    · rw [add_sub_cancel]
  have := Ideal.mul_mem_left _ (algebraMap _ _ β) hαx
  rw [← Algebra.smul_def, smul_smul, hβ, add_smul, one_smul] at this
  refine (Submodule.add_mem_iff_left _ ?_).mp this
  rw [Algebra.smul_def]
  apply Ideal.mul_mem_right
  exact Ideal.mem_map_of_mem _ hγ

variable (S Sₚ)

/-- The isomorphism `S ⧸ pS ≃+* Sₚ ⧸ pSₚ`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54bb340675a08f2a95a6f566b0ef31d11175e188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
