# eq_seminorms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "109a10e61542a07dd8f7d34f16e8329e239dd1a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4c0b34b-b29e-6872-770a-5a9381cc901b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43267c8c-49da-cff9-8e9d-a64e3f387d75",
  "kind": "theorem",
  "lexical_name": "eq_seminorms",
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
  "slug": "eq-seminorms--edfc9c1ef0193cbf094ffaf7",
  "source": {
    "blob": "109a10e61542a07dd8f7d34f16e8329e239dd1a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edfc9c1ef0193cbf094ffaf772512fbc7f8336b09d100cabe62fd105135049ba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43267c8c-49da-cff9-8e9d-a64e3f387d75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_seminorms {F : Type*} {α : outParam (Type*)} [Ring α] [FunLike F α ℝ]
    [RingSeminormClass F α ℝ] {f g : F} (hfpm : IsPowMul f) (hgpm : IsPowMul g)
    (hfg : ∃ (r : ℝ) (_ : 0 < r), ∀ a : α, f a ≤ r * g a)
    (hgf : ∃ (r : ℝ) (_ : 0 < r), ∀ a : α, g a ≤ r * f a) : f = g := by
  obtain ⟨r, hr0, hr⟩ := hfg
  obtain ⟨s, hs0, hs⟩ := hgf
  have hle : RingHom.IsBoundedWrt f g (RingHom.id _) := ⟨s, hs0, hs⟩
  have hge : RingHom.IsBoundedWrt g f (RingHom.id _) := ⟨r, hr0, hr⟩
  rw [← Function.Injective.eq_iff DFunLike.coe_injective']
  ext x
  exact le_antisymm (contraction_of_isPowMul_of_boundedWrt g hfpm hge x)
    (contraction_of_isPowMul_of_boundedWrt f hgpm hle x)

variable {R S : Type*} [NormedCommRing R] [CommRing S] [Algebra R S]

/-- If `R` is a normed commutative ring and `f₁` and `f₂` are two power-multiplicative `R`-algebra
  norms on `S`, then if `f₁` and `f₂` are equivalent on every  subring `R[y]` for `y : S`, it
  follows that `f₁ = f₂` [BGR, Proposition 3.1.5/1][bosch-guntzer-remmert]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `109a10e61542a07dd8f7d34f16e8329e239dd1a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
