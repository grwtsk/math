# exists_shatters_of_dualFamily_shatters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "992efd1ac04c80385259834277af1258b9cb235b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c39ebd5457bdbe6e9d52a2175c097a318b288beddc26e5c07d13361df4d1cb7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94c8e117-9df5-4f69-471e-6cfaef361637",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0af5f423-5884-9f5c-360c-9b74d97eda06",
  "kind": "theorem",
  "lexical_name": "exists_shatters_of_dualFamily_shatters",
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
  "slug": "exists-shatters-of-dualfamily-shatters--df11adebe1d43eaeb98cec82",
  "source": {
    "blob": "992efd1ac04c80385259834277af1258b9cb235b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DualVC/Variant7c39ebd5457bdbe6e9d52a2175c097a318b288beddc26e5c07d13361df4d1cb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df11adebe1d43eaeb98cec825a43e2bdccf3e9998963908829dd04e760d0f639",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DualVC/Variant7c39ebd5457bdbe6e9d52a2175c097a318b288beddc26e5c07d13361df4d1cb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0af5f423-5884-9f5c-360c-9b74d97eda06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_shatters_of_dualFamily_shatters
    (𝒜 : Finset (Finset α)) (X : Finset α)
    {S : Finset (Finset α)} (hS : (𝒜.dualFamily X).Shatters S)
    {n : ℕ} (hcard : 2 ^ n ≤ #S) :
    ∃ T : Finset α, T ⊆ X ∧ #T = n ∧ 𝒜.Shatters T := by
  classical
  have hSsub : S ⊆ 𝒜 := subset_of_dualFamily_shatters hS
  let cube := cubeEmbedding S hcard
  have hcols (k : Fin n) :
      ∃ x : α, x ∈ X ∧ ∀ A ∈ S, x ∈ A ↔ A ∈ cubeBitSlice cube k := by
    obtain ⟨u, hu, huT⟩ := hS (cubeBitSlice_subset cube k)
    obtain ⟨x, hxX, rfl⟩ := mem_dualFamily.mp hu
    refine ⟨x, hxX, fun A hA ↦ ?_⟩
    rw [← huT]; simp [mem_inter, mem_filter, hA, hSsub hA]
  choose x hxX hx using hcols
  have hx_cube (b : Fin n → Bool) (k : Fin n) :
      x k ∈ (cube b).val ↔ b k = true :=
    (hx k (cube b).val (cube b).property).trans (mem_cubeBitSlice_iff cube b k)
  -- `x` is injective via the singleton bitstring `b i := (i = j)`.
  have hx_inj : Function.Injective x := fun j k hjk ↦ by
    by_contra hne
    have h1 : x j ∈ (cube fun i ↦ decide (i = j)).val :=
      (hx_cube _ j).mpr (by simp)
    have h2 : x k ∉ (cube fun i ↦ decide (i = j)).val := fun hxk ↦
      hne (of_decide_eq_true ((hx_cube _ k).mp hxk)).symm
    exact h2 (hjk ▸ h1)
  refine ⟨univ.map ⟨x, hx_inj⟩, ?_, by simp, fun t ht ↦ ?_⟩
  · intro y hy
    obtain ⟨k, _, rfl⟩ := mem_map.mp hy
    exact hxX k
  · refine ⟨(cube fun k ↦ decide (x k ∈ t)).val, hSsub (cube _).property, ?_⟩
    ext y
    refine mem_inter.trans ⟨fun ⟨hyT, hyA⟩ ↦ ?_, fun hyt ↦ ?_⟩
    · obtain ⟨k, _, rfl⟩ := mem_map.mp hyT
      exact of_decide_eq_true ((hx_cube _ k).mp hyA)
    · obtain ⟨k, _, rfl⟩ := mem_map.mp (ht hyt)
      exact ⟨ht hyt, (hx_cube _ k).mpr (decide_eq_true hyt)⟩

/-- **Assouad's dual VC bound.** If `𝒜 : Finset (Finset α)` has VC dimension
at most `d`, then for any ground set `X : Finset α` the dual family has VC
dimension at most `2 ^ (d + 1) - 1`.

This is the Finset-level form of the standard statement
`vcDim(𝒞*) ≤ 2 ^ (vcDim(𝒞) + 1) - 1` (Assouad 1983, Theorem 2.13;
Matoušek, *Lectures on Discrete Geometry*, §10.3 Lemma 10.3.3). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DualVC/Variant7c39ebd5457bdbe6e9d52a2175c097a318b288beddc26e5c07d13361df4d1cb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DualVC/Variant7c39ebd5457bdbe6e9d52a2175c097a318b288beddc26e5c07d13361df4d1cb7.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `992efd1ac04c80385259834277af1258b9cb235b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
