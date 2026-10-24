# mem_closure_isSwap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "908ff498dba7ed201ede815804322815001d96da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8232e15-0564-5ab7-40d6-957db1e37749",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3760087f-fc64-5766-fa63-fe3146b166d1",
  "kind": "theorem",
  "lexical_name": "mem_closure_isSwap",
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
  "slug": "mem-closure-isswap--7c9df48d874b1387ab2e1843",
  "source": {
    "blob": "908ff498dba7ed201ede815804322815001d96da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 102,
    "path": "GRWTSK/Algebra/GroupTheory/ClosureSwap/Varianteac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c9df48d874b1387ab2e1843f1f8203f2673a747a2f62231c493f3e79866e03c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ClosureSwap/Varianteac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3760087f-fc64-5766-fa63-fe3146b166d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_closure_isSwap {S : Set (Perm α)} (hS : ∀ f ∈ S, f.IsSwap) {f : Perm α} :
    f ∈ closure S ↔ (fixedBy α f)ᶜ.Finite ∧ ∀ x, f x ∈ orbit (closure S) x := by
  refine ⟨fun hf ↦ ⟨?_, fun x ↦ mem_orbit_iff.mpr ⟨⟨f, hf⟩, rfl⟩⟩, ?_⟩
  · exact finite_compl_fixedBy_closure_iff.mpr (fun f hf ↦ (hS f hf).finite_compl_fixedBy) _ hf
  rintro ⟨fin, hf⟩
  set supp := (fixedBy α f)ᶜ with supp_eq
  suffices h : (fixedBy α f)ᶜ ⊆ supp → f ∈ closure S from h supp_eq.symm.subset
  clear_value supp; clear supp_eq; revert f
  apply fin.induction_on ..
  · rintro f - emp; convert! (closure S).one_mem; ext; by_contra h; exact emp h
  rintro a s - - ih f hf supp_subset
  refine (mul_mem_cancel_left ((swap_mem_closure_isSwap hS).2 (hf a))).1
    (ih (fun b ↦ ?_) fun b hb ↦ ?_)
  · rw [Perm.mul_apply, swap_apply_def]; split_ifs with h1 h2
    · rw [← orbit_eq_iff.mpr (hf b), h1, orbit_eq_iff.mpr (hf a)]; apply mem_orbit_self
    · rw [← orbit_eq_iff.mpr (hf b), h2]; apply hf
    · exact hf b
  · contrapose hb
    simp_rw [notMem_compl_iff, mem_fixedBy, Perm.smul_def, Perm.mul_apply, swap_apply_def,
      apply_eq_iff_eq]
    by_cases hb' : f b = b
    · rw [hb']; split_ifs with h <;> simp only [h]
    simp [show b = a by simpa [hb] using supp_subset hb']

/-- A permutation is a product of transpositions if and only if it has finite support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ClosureSwap/Varianteac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ClosureSwap/Varianteac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `908ff498dba7ed201ede815804322815001d96da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
