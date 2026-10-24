# pos_or_neg_of_sum_smul_root_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77e95b084476d1b16dd82d35a3bed2517c25b1a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a42535e8-6a0b-e753-58dc-6905e5fa57aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13371e03-f9e1-5929-0758-7091e622cefb",
  "kind": "lemma",
  "lexical_name": "pos_or_neg_of_sum_smul_root_mem",
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
  "slug": "pos-or-neg-of-sum-smul-root-mem--9d78b019884f34508b3443bf",
  "source": {
    "blob": "77e95b084476d1b16dd82d35a3bed2517c25b1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 261,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d78b019884f34508b3443bf0c0d921ab0bce4056cb45723b14b31ec47462d3c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13371e03-f9e1-5929-0758-7091e622cefb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pos_or_neg_of_sum_smul_root_mem (f : ι → ℤ)
    (hf : ∑ j ∈ b.support, f j • P.root j ∈ range P.root) (hf₀ : f.support ⊆ b.support) :
    0 < f ∨ f < 0 := by
  suffices ∀ (f : ι → ℤ)
      (hf : ∑ j ∈ b.support, f j • P.root j ∈ AddSubmonoid.closure (P.root '' b.support))
      (hf₀ : f.support ⊆ b.support) (hf' : f ≠ 0), 0 < f by
    obtain ⟨k, hk⟩ := hf
    have hf' : f ≠ 0 := by rintro rfl; exact P.ne_zero k <| by simp [hk]
    rcases b.root_mem_or_neg_mem k with hk' | hk' <;> rw [hk] at hk'
    · left; exact this f hk' hf₀ hf'
    · right; simpa using this (-f) (by convert! hk'; simp) (by simpa only [support_neg]) (by simpa)
  intro f hf hf₀ hf'
  let f' : b.support → ℤ := fun i ↦ f i
  replace hf : ∑ j, f' j • P.root j ∈ AddSubmonoid.closure (P.root '' b.support) := by
    suffices ∑ j, f' j • P.root j = ∑ j ∈ b.support, f j • P.root j by rwa [this]
    rw [← b.support.sum_finset_coe]; rfl
  rw [← span_nat_eq_addSubmonoidClosure, mem_toAddSubmonoid,
    Fintype.mem_span_image_iff_exists_fun] at hf
  obtain ⟨c, hc⟩ := hf
  replace hc (i : b.support) : c i = f' i := Fintype.linearIndependent_iffₛ.mp
    (b.linearIndepOn_root.restrict_scalars' ℤ) (Int.ofNat ∘ c) f' (by simpa) i
  have aux : 0 ≤ f := by
    intro i
    by_cases hi : i ∈ b.support
    · change 0 ≤ f' ⟨i, hi⟩
      simp [← hc]
    · replace hi : i ∉ f.support := by contrapose hi; exact hf₀ hi
      simp_all
  refine Pi.lt_def.mpr ⟨aux, ?_⟩
  by_contra! contra
  replace contra : f = 0 := le_antisymm contra aux
  contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e95b084476d1b16dd82d35a3bed2517c25b1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
