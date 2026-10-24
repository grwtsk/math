# top_le_span_of_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d62e727b37ffb35b6cfb858aa16b30bd17b62485",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c97020de-516e-1157-05b9-f7971c5ae19e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8b15e2c-e272-41e0-cb8f-2366b0ff95d9",
  "kind": "lemma",
  "lexical_name": "top_le_span_of_aux",
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
  "slug": "top-le-span-of-aux--de14db9f001e5660a6534652",
  "source": {
    "blob": "d62e727b37ffb35b6cfb858aa16b30bd17b62485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 48,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de14db9f001e5660a65346523abc35a988a667a702b7dfd64c4916b5a3eb5892",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8b15e2c-e272-41e0-cb8f-2366b0ff95d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma top_le_span_of_aux (v : κ ⊕ σ → M)
    (hg : Function.Surjective g) (hslzero : ∀ i, s (v (.inl i)) = 0)
    (hli : LinearIndependent R (s ∘ v ∘ .inr)) (hsp : ⊤ ≤ Submodule.span R (Set.range v)) :
    ⊤ ≤ Submodule.span R (Set.range <| g ∘ v ∘ .inl) := by
  rintro p -
  obtain ⟨m, rfl⟩ := hg p
  wlog h : m ∈ LinearMap.ker s
  · let x : M := f (s m)
    rw [show g m = g (m - f (s m)) by simp [hfg.apply_apply_eq_zero]]
    apply this hs hfg v hg hslzero hli hsp
    replace hs := DFunLike.congr_fun hs (s m)
    simp only [LinearMap.coe_comp, Function.comp_apply, LinearMap.id_coe, id_eq] at hs
    simp [hs]
  have : m ∈ Submodule.span R (Set.range v) := hsp Submodule.mem_top
  obtain ⟨c, rfl⟩ := Finsupp.mem_span_range_iff_exists_finsupp.mp this
  simp only [LinearMap.mem_ker, Finsupp.sum, map_sum, map_smul,
    Finset.sum_sum_eq_sum_toLeft_add_sum_toRight, map_add, hslzero, smul_zero,
    Finset.sum_const_zero, zero_add] at h
  replace hli := (linearIndependent_iff'.mp hli) c.support.toRight (c ∘ .inr) h
  simp only [Finset.mem_toRight, Finsupp.mem_support_iff, Function.comp_apply, not_imp_self] at hli
  simp only [Finsupp.sum, Finset.sum_sum_eq_sum_toLeft_add_sum_toRight, hli, zero_smul,
    Finset.sum_const_zero, add_zero, map_sum, map_smul]
  exact Submodule.sum_mem _ (fun i hi ↦ Submodule.smul_mem _ _ <| Submodule.subset_span ⟨i, rfl⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d62e727b37ffb35b6cfb858aa16b30bd17b62485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
