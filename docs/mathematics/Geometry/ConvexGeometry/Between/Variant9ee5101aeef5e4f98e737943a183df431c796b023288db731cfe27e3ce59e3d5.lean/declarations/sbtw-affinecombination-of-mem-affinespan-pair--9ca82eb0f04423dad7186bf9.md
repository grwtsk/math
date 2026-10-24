# Sbtw.affineCombination_of_mem_affineSpan_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4a5b803-aeb7-69e3-13b4-939eb8d887f0",
  "kind": "theorem",
  "lexical_name": "Sbtw.affineCombination_of_mem_affineSpan_pair",
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
  "slug": "sbtw-affinecombination-of-mem-affinespan-pair--9ca82eb0f04423dad7186bf9",
  "source": {
    "blob": "90cfcc91c41b613890812a3b0e00c15321c159a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 533,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ca82eb0f04423dad7186bf931364892b586ae9f9363b570e9369568d9497f7b",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4a5b803-aeb7-69e3-13b4-939eb8d887f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sbtw.affineCombination_of_mem_affineSpan_pair [NoZeroDivisors R] [NoZeroSMulDivisors R V]
    {ι : Type*} {p : ι → P} (ha : AffineIndependent R p) {w w₁ w₂ : ι → R} {s : Finset ι}
    (hw : ∑ i in s, w i = 1) (hw₁ : ∑ i in s, w₁ i = 1) (hw₂ : ∑ i in s, w₂ i = 1)
    (h : s.affineCombination R p w ∈
      line[R, s.affineCombination R p w₁, s.affineCombination R p w₂])
    {i : ι} (his : i ∈ s) (hs : Sbtw R (w₁ i) (w i) (w₂ i)) :
    Sbtw R (s.affineCombination R p w₁) (s.affineCombination R p w)
      (s.affineCombination R p w₂) := by
  rw [affineCombination_mem_affineSpan_pair ha hw hw₁ hw₂] at h
  rcases h with ⟨r, hr⟩
  rw [hr i his, sbtw_mul_sub_add_iff] at hs
  change ∀ i ∈ s, w i = (r • (w₂ - w₁) + w₁) i at hr
  rw [s.affineCombination_congr hr fun _ _ => rfl]
  dsimp only
  rw [← s.weightedVSub_vadd_affineCombination, s.weightedVSub_const_smul,
    ← s.affineCombination_vsub, ← lineMap_apply, sbtw_lineMap_iff, and_iff_left hs.2,
    ← @vsub_ne_zero V, s.affineCombination_vsub]
  intro hz
  have hw₁w₂ : (∑ i in s, (w₁ - w₂) i) = 0 := by
    simp_rw [Pi.sub_apply, Finset.sum_sub_distrib, hw₁, hw₂, sub_self]
  refine' hs.1 _
  have ha' := ha s (w₁ - w₂) hw₁w₂ hz i his
  rwa [Pi.sub_apply, sub_eq_zero] at ha'
#align sbtw.affine_combination_of_mem_affine_span_pair Sbtw.affineCombination_of_mem_affineSpan_pair

end OrderedRing

section StrictOrderedCommRing

variable [StrictOrderedCommRing R] [AddCommGroup V] [Module R V] [AddTorsor V P]

variable {R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90cfcc91c41b613890812a3b0e00c15321c159a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
