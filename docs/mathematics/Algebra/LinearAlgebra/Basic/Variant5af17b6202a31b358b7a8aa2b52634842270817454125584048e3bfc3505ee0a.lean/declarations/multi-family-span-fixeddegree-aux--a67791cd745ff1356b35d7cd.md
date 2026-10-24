# ιMulti_family_span_fixedDegree_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b8327ebbb02692528b61993d2402682d51746aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7f060c0-13e6-3593-0a3e-7199dcf4c1c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be335667-0d23-2602-b00b-9345275d044c",
  "kind": "lemma",
  "lexical_name": "ιMulti_family_span_fixedDegree_aux",
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
  "slug": "multi-family-span-fixeddegree-aux--a67791cd745ff1356b35d7cd",
  "source": {
    "blob": "6b8327ebbb02692528b61993d2402682d51746aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 345,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a67791cd745ff1356b35d7cd4dc654fc718799a34ec5ebc50e89fca3cb849233",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be335667-0d23-2602-b00b-9345275d044c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma ιMulti_family_span_fixedDegree_aux
    {I : Type*} [LinearOrder I] (v : I → M) (α : Fin n → I) :
    ExteriorAlgebra.ιMulti R n (v ∘ α) ∈ span R (range (ExteriorAlgebra.ιMulti_family R n v)) := by
  by_cases α_inj : Injective α; swap
  · suffices ExteriorAlgebra.ιMulti R n (v ∘ α) = 0 by simp [this]
    exact AlternatingMap.map_eq_zero_of_not_injective _ _ <| fun h ↦ α_inj (Injective.of_comp h)
  suffices ∃ σ : Equiv.Perm (Fin n), (ExteriorAlgebra.ιMulti R n ((v ∘ α) ∘ σ)) ∈
      Submodule.span R (Set.range (ExteriorAlgebra.ιMulti_family R n v)) by
    obtain ⟨σ, hσ⟩ := this
    rw [AlternatingMap.map_perm] at hσ
    refine (Submodule.smul_mem_iff_of_isUnit _ (r := (σ.sign : R)) ?_).mp hσ
    rw [isUnit_iff_exists_inv]
    use (σ.sign : R)
    norm_cast
    simp only [Int.units_mul_self, Units.val_one, Int.cast_one]
  have α_card : (Finset.image α Finset.univ).card = n :=
    (Finset.card_image_of_injective Finset.univ α_inj).trans (Finset.card_fin n)
  use (Finset.orderIsoOfFin (Finset.image α Finset.univ) α_card).toEquiv.trans
    ((Set.equivOfEq Fintype.coe_image_univ).trans (Equiv.ofInjective α α_inj).symm)
  apply Submodule.mem_span_of_mem
  use ⟨(Finset.image α Finset.univ), α_card⟩
  rw [ExteriorAlgebra.ιMulti_family, Function.comp_assoc]
  congr
  ext i
  simp [Equiv.apply_ofInjective_symm]
  rfl

open Finset in
/-- If a family of vectors spans `M`, then the family of its `n`-fold exterior products spans
`⋀[R]^n M`. Here we work in the exterior algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5af17b6202a31b358b7a8aa2b52634842270817454125584048e3bfc3505ee0a.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b8327ebbb02692528b61993d2402682d51746aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
