# mem_of_finset_sum_eq_one_of_pow_smul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5cfadcf41987d9cac83486d0e01ca63167277732",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1433,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42903b6e90e017685e548d19c0d5cb701cc0c647818819ac17dff7c565ab7306.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50cb254f-f710-461b-ba52-f80a299ceafc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb4d1c65-9231-4686-04ea-2f16115e5779",
  "kind": "theorem",
  "lexical_name": "mem_of_finset_sum_eq_one_of_pow_smul_mem",
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
  "slug": "mem-of-finset-sum-eq-one-of-pow-smul-mem--d36b625edf648f5e2ccad2c7",
  "source": {
    "blob": "5cfadcf41987d9cac83486d0e01ca63167277732",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1463,
    "line": 1433,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant42903b6e90e017685e548d19c0d5cb701cc0c647818819ac17dff7c565ab7306.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d36b625edf648f5e2ccad2c713cc55f4321e037546ed90e9f2da88c97076b5d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant42903b6e90e017685e548d19c0d5cb701cc0c647818819ac17dff7c565ab7306.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb4d1c65-9231-4686-04ea-2f16115e5779`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1433–1463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_of_finset_sum_eq_one_of_pow_smul_mem {S : Type*} [CommRing S] [Algebra R S]
    (S' : Subalgebra R S) {ι : Type*} (ι' : Finset ι) (s : ι → S) (l : ι → S)
    (e : ∑ i in ι', l i * s i = 1) (hs : ∀ i, s i ∈ S') (hl : ∀ i, l i ∈ S') (x : S)
    (H : ∀ i, ∃ n : ℕ, (s i ^ n : S) • x ∈ S') : x ∈ S' := by
  -- Porting note: needed to add this instance
  let _i : Algebra { x // x ∈ S' } { x // x ∈ S' } := Algebra.id _
  suffices x ∈ Subalgebra.toSubmodule (Algebra.ofId S' S).range by
    obtain ⟨x, rfl⟩ := this
    exact x.2
  choose n hn using H
  let s' : ι → S' := fun x => ⟨s x, hs x⟩
  let l' : ι → S' := fun x => ⟨l x, hl x⟩
  have e' : ∑ i in ι', l' i * s' i = 1 := by
    ext
    show S'.subtype (∑ i in ι', l' i * s' i) = 1
    simpa only [map_sum, map_mul] using e
  have : Ideal.span (s' '' ι') = ⊤ := by
    rw [Ideal.eq_top_iff_one, ← e']
    apply sum_mem
    intros i hi
    exact Ideal.mul_mem_left _ _ <| Ideal.subset_span <| Set.mem_image_of_mem s' hi
  let N := ι'.sup n
  have hN := Ideal.span_pow_eq_top _ this N
  apply (Algebra.ofId S' S).range.toSubmodule.mem_of_span_top_of_smul_mem _ hN
  rintro ⟨_, _, ⟨i, hi, rfl⟩, rfl⟩
  change s' i ^ N • x ∈ _
  rw [← tsub_add_cancel_of_le (show n i ≤ N from Finset.le_sup hi), pow_add, mul_smul]
  refine' Submodule.smul_mem _ (⟨_, pow_mem (hs i) _⟩ : S') _
  exact ⟨⟨_, hn i⟩, rfl⟩
#align subalgebra.mem_of_finset_sum_eq_one_of_pow_smul_mem Subalgebra.mem_of_finset_sum_eq_one_of_pow_smul_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant42903b6e90e017685e548d19c0d5cb701cc0c647818819ac17dff7c565ab7306.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant42903b6e90e017685e548d19c0d5cb701cc0c647818819ac17dff7c565ab7306.lean#L1433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cfadcf41987d9cac83486d0e01ca63167277732` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
