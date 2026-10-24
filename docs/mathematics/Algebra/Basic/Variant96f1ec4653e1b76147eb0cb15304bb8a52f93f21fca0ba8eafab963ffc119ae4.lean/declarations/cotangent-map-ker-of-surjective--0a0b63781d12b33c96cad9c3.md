# Cotangent.map_ker_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9623745-ddaf-68bd-a595-0834c7165f17",
  "kind": "lemma",
  "lexical_name": "Cotangent.map_ker_of_surjective",
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
  "slug": "cotangent-map-ker-of-surjective--0a0b63781d12b33c96cad9c3",
  "source": {
    "blob": "62b70d574e93968f180bdcda95c79b34eae29422",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 526,
    "path": "GRWTSK/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a0b63781d12b33c96cad9c3833191b8ee09ba3a94b0c04d8b4f7d0ad7e86b55",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9623745-ddaf-68bd-a595-0834c7165f17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Cotangent.map_ker_of_surjective {P P' : Extension R S} {f : P.Hom P'}
    (h : Function.Surjective f) (eq : P'.ker.comap f.toRingHom = RingHom.ker f.toRingHom ⊔ P.ker) :
    (Cotangent.map f).ker.restrictScalars P.Ring =
      (Submodule.comap P.ker.subtype (RingHom.ker f.toRingHom ⊓ P.ker)).map Cotangent.mk := by
  have eq_map := Ideal.eq_map_of_comap_eq_ker_sup _ h eq
  refine le_antisymm (fun x hx ↦ ?_) (fun x hx ↦ ?_)
  · obtain ⟨x, rfl⟩ := Cotangent.mk_surjective x
    simp only [Submodule.restrictScalars_mem, LinearMap.mem_ker, map_mk, Hom.toAlgHom_apply,
      mk_eq_zero_iff] at hx
    rw [eq_map, ← Ideal.map_pow, ← Ideal.mem_comap,
      Ideal.comap_map_of_surjective' f.toRingHom h, Submodule.mem_sup] at hx
    rcases hx with ⟨y, y_in, z, z_in, hyz⟩
    suffices ∃ a, a ∈ RingHom.ker f.toRingHom ∧ a ∈ P.ker ∧ a - x ∈ P.ker ^ 2 by
      simpa [mk_eq_mk_iff_sub_mem]
    refine ⟨z, z_in, ?_, by simpa [← hyz]⟩
    rw [← eq_sub_iff_add_eq'] at hyz
    exact hyz ▸ Ideal.sub_mem _ x.prop (Ideal.pow_le_self (show 2 ≠ 0 by lia) y_in)
  · obtain ⟨x, rfl⟩ := Cotangent.mk_surjective x
    obtain ⟨y, y_in, y_in', hy⟩ : ∃ a ∈ RingHom.ker f.toRingHom, a ∈ P.ker ∧
      a - x ∈ P.ker ^ 2 := by simpa [mk_eq_mk_iff_sub_mem] using hx
    suffices f.toRingHom x ∈ P'.ker ^ 2 by simpa [mk_eq_zero_iff]
    rw [eq_map, ← Ideal.map_pow, ← Ideal.mem_comap,
      Ideal.comap_map_of_surjective' f.toRingHom h, Submodule.mem_sup]
    exact ⟨x - y, by rwa [← Submodule.neg_mem_iff, neg_sub], y, y_in, by ring⟩

variable (P) in
/-- The cotangent is isomorphic to `S ⊗[P] I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant96f1ec4653e1b76147eb0cb15304bb8a52f93f21fca0ba8eafab963ffc119ae4.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62b70d574e93968f180bdcda95c79b34eae29422` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
