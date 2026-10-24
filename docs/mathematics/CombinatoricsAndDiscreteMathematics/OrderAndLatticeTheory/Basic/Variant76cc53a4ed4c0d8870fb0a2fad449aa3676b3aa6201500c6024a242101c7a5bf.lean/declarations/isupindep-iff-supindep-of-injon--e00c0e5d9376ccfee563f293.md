# iSupIndep_iff_supIndep_of_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99449d2e-fbcc-f583-1e0a-dea82d75c9f3",
  "kind": "lemma",
  "lexical_name": "iSupIndep_iff_supIndep_of_injOn",
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
  "slug": "isupindep-iff-supindep-of-injon--e00c0e5d9376ccfee563f293",
  "source": {
    "blob": "de0a98ad215d5d6a6a17372a4bff7156263f66e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 461,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant76cc53a4ed4c0d8870fb0a2fad449aa3676b3aa6201500c6024a242101c7a5bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e00c0e5d9376ccfee563f2933d2d91d1f6a455716a40414b3a35cf4a2b732186",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant76cc53a4ed4c0d8870fb0a2fad449aa3676b3aa6201500c6024a242101c7a5bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99449d2e-fbcc-f583-1e0a-dea82d75c9f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iSupIndep_iff_supIndep_of_injOn {ι : Type*} {f : ι → α}
    (hf : InjOn f {i | f i ≠ ⊥}) :
    iSupIndep f ↔ ∀ (s : Finset ι), s.SupIndep f := by
  refine ⟨fun h ↦ h.supIndep', fun h ↦ iSupIndep_def'.mpr fun i ↦ ?_⟩
  simp_rw [disjoint_iff, inf_sSup_eq_iSup_inf_sup_finset, iSup_eq_bot, ← disjoint_iff]
  intro s hs
  classical
  rw [← Finset.sup_erase_bot]
  set t := s.erase ⊥
  replace hf : InjOn f (f ⁻¹' t) := fun i hi j _ hij ↦ by
    refine hf ?_ ?_ hij <;> aesop (add norm simp [t])
  have : (Finset.erase (insert i (t.preimage _ hf)) i).image f = t := by
    ext a
    simp only [Finset.mem_preimage, Finset.mem_erase, ne_eq, Finset.mem_insert, true_or, not_true,
      Finset.erase_insert_eq_erase, not_and, Finset.mem_image, t]
    refine ⟨by aesop, fun ⟨ha, has⟩ ↦ ?_⟩
    obtain ⟨j, hj, rfl⟩ := hs has
    exact ⟨j, ⟨hj, ha, has⟩, rfl⟩
  rw [← this, Finset.sup_image]
  specialize h (insert i (t.preimage _ hf))
  rw [Finset.supIndep_iff_disjoint_erase] at h
  exact h i (Finset.mem_insert_self i _)

@[deprecated (since := "2024-11-24")]
alias CompleteLattice.independent_iff_supIndep_of_injOn := iSupIndep_iff_supIndep_of_injOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant76cc53a4ed4c0d8870fb0a2fad449aa3676b3aa6201500c6024a242101c7a5bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant76cc53a4ed4c0d8870fb0a2fad449aa3676b3aa6201500c6024a242101c7a5bf.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de0a98ad215d5d6a6a17372a4bff7156263f66e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
