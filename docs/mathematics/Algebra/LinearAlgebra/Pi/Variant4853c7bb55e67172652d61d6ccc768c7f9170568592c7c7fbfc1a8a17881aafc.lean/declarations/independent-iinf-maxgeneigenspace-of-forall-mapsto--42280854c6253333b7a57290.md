# independent_iInf_maxGenEigenspace_of_forall_mapsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbd78465d2f209c3e1b69dbb565436d838941b95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a4900ff-0b62-67b1-e102-c7c4482856b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64618bdf-b615-1087-0c27-9369add56271",
  "kind": "lemma",
  "lexical_name": "independent_iInf_maxGenEigenspace_of_forall_mapsTo",
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
  "slug": "independent-iinf-maxgeneigenspace-of-forall-mapsto--42280854c6253333b7a57290",
  "source": {
    "blob": "bbd78465d2f209c3e1b69dbb565436d838941b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 86,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42280854c6253333b7a57290d2c8c5a885653e65deeeef7552dba92de151adab",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64618bdf-b615-1087-0c27-9369add56271`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma independent_iInf_maxGenEigenspace_of_forall_mapsTo
    (h : ∀ i j φ, MapsTo (f i) ((f j).maxGenEigenspace φ) ((f j).maxGenEigenspace φ)) :
    iSupIndep fun χ : ι → R ↦ ⨅ i, (f i).maxGenEigenspace (χ i) := by
  replace h (l : ι) (χ : ι → R) :
      MapsTo (f l) (⨅ i, (f i).maxGenEigenspace (χ i)) (⨅ i, (f i).maxGenEigenspace (χ i)) := by
    intro x hx
    simp only [iInf_eq_iInter, mem_iInter, SetLike.mem_coe] at hx ⊢
    exact fun i ↦ h l i (χ i) (hx i)
  classical
  suffices ∀ χ (s : Finset (ι → R)) (_ : χ ∉ s),
      Disjoint (⨅ i, (f i).maxGenEigenspace (χ i))
        (s.sup fun (χ : ι → R) ↦ ⨅ i, (f i).maxGenEigenspace (χ i)) by
    simpa only [iSupIndep_iff_supIndep_of_injOn (injOn_iInf_maxGenEigenspace f),
      Finset.supIndep_iff_disjoint_erase] using fun s χ _ ↦ this _ _ (s.notMem_erase χ)
  intro χ₁ s
  induction s using Finset.induction_on with
  | empty => simp
  | insert χ₂ s _n ih =>
  intro hχ₁₂
  obtain ⟨hχ₁₂ : χ₁ ≠ χ₂, hχ₁ : χ₁ ∉ s⟩ := by rwa [Finset.mem_insert, not_or] at hχ₁₂
  specialize ih hχ₁
  rw [Finset.sup_insert, disjoint_iff, Submodule.eq_bot_iff]
  rintro x ⟨hx, hx'⟩
  simp only [SetLike.mem_coe] at hx hx'
  suffices x ∈ ⨅ i, (f i).maxGenEigenspace (χ₂ i) by
    rw [← Submodule.mem_bot (R := R), ← (disjoint_iInf_maxGenEigenspace f hχ₁₂).eq_bot]
    exact ⟨hx, this⟩
  obtain ⟨y, hy, z, hz, rfl⟩ := Submodule.mem_sup.mp hx'; clear hx'
  suffices ∀ l, ∃ (k : ℕ),
      ((f l - algebraMap R (Module.End R M) (χ₂ l)) ^ k) (y + z) ∈
      (⨅ i, (f i).maxGenEigenspace (χ₁ i)) ⊓
        Finset.sup s fun χ ↦ ⨅ i, (f i).maxGenEigenspace (χ i) by
    simpa [ih.eq_bot, Submodule.mem_bot] using this
  intro l
  let g : Module.End R M := f l - algebraMap R (Module.End R M) (χ₂ l)
  obtain ⟨k, hk : (g ^ k) y = 0⟩ := (mem_iInf_maxGenEigenspace_iff _ _ _).mp hy l
  have aux (f : End R M) (φ : R) (k : ℕ) (p : Submodule R M) (hp : MapsTo f p p) :
      MapsTo ((f - algebraMap R (Module.End R M) φ) ^ k) p p := by
    rw [Module.End.coe_pow]
    exact MapsTo.iterate (fun m hm ↦ p.sub_mem (hp hm) (p.smul_mem _ hm)) k
  refine ⟨k, Submodule.mem_inf.mp ⟨?_, ?_⟩⟩
  · refine aux (f l) (χ₂ l) k (⨅ i, (f i).maxGenEigenspace (χ₁ i)) ?_ hx
    simp only [Submodule.iInf_coe]
    exact h l χ₁
  · rw [map_add, hk, zero_add]
    suffices (s.sup fun χ ↦ (⨅ i, (f i).maxGenEigenspace (χ i))).map (g ^ k) ≤
        s.sup fun χ ↦ (⨅ i, (f i).maxGenEigenspace (χ i)) by
      refine this (Submodule.mem_map_of_mem ?_)
      simp_rw [Finset.sup_eq_iSup, ← Finset.sup_eq_iSup] at hz
      exact hz
    simp_rw [Finset.sup_eq_iSup, Submodule.map_iSup (ι := ι → R), Submodule.map_iSup (ι := _ ∈ s)]
    refine iSup₂_mono fun χ _ ↦ ?_
    rintro - ⟨u, hu, rfl⟩
    refine aux (f l) (χ₂ l) k (⨅ i, (f i).maxGenEigenspace (χ i)) ?_ hu
    simp only [Submodule.iInf_coe]
    exact h l χ

/-- Given a family of endomorphisms `i ↦ f i` which are compatible in the sense that every maximal
generalised eigenspace of `f i` is invariant wrt `f j`, if each `f i` is triangularizable, the
family is simultaneously triangularizable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbd78465d2f209c3e1b69dbb565436d838941b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
