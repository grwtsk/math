# finiteIndex_conjGL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84e90e46cf3976afed65352dd9329ade01056a2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea784a1a-b40f-1256-6dfe-d9bb95435fcb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29197857-c2d2-00f1-97fb-878f23fb4eb8",
  "kind": "lemma",
  "lexical_name": "finiteIndex_conjGL",
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
  "slug": "finiteindex-conjgl--cc0f90b94a48bd5d3bbe6a9f",
  "source": {
    "blob": "84e90e46cf3976afed65352dd9329ade01056a2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 321,
    "path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc0f90b94a48bd5d3bbe6a9f36fa6015710bb69051731ce302efa03fe04b2f37",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29197857-c2d2-00f1-97fb-878f23fb4eb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finiteIndex_conjGL (Γ : Subgroup SL(2, ℤ)) [Γ.FiniteIndex] (g : GL (Fin 2) ℚ) :
    (conjGL Γ (g.map <| Rat.castHom ℝ)).FiniteIndex := by
  constructor
  let t := (toConjAct <| g.map <| Rat.castHom ℝ)⁻¹
  let G := Γ.map (mapGL ℝ)
  let A := MonoidHom.range (mapGL ℝ : SL(2, ℤ) →* _)
  suffices (t • G ⊓ A).relindex A ≠ 0 by rwa [conjGL, index_comap, ← inf_relindex_right]
  apply relindex_ne_zero_trans (K := t • A ⊓ A)
  · -- Show that `[ (t • A ⊓ A) : (t • G ⊓ A)] < ∞`.
    apply relindex_inter_ne_zero
    rw [relindex_pointwise_smul, ← index_comap,
      comap_map_eq_self_of_injective mapGL_injective]
    exact FiniteIndex.index_ne_zero
  · -- Show that `[A : (t • A ⊓ A)] < ∞` (note this is independent of `Γ`)
    obtain ⟨N, hN, hN'⟩ := exists_Gamma_le_conj' g 1
    rw [Gamma_one_top, ← MonoidHom.range_eq_map] at hN'
    suffices Γ(N) ≤ (t • A ⊓ A).comap (mapGL ℝ) by
      haveI _ : NeZero N := ⟨hN⟩
      simpa only [index_comap] using (finiteIndex_of_le this).index_ne_zero
    intro k hk
    simpa [mem_pointwise_smul_iff_inv_smul_mem, A] using
      hN' <| smul_mem_pointwise_smul _ _ _ ⟨k, hk, rfl⟩

/-- If `Γ` is a congruence subgroup, then so is `g⁻¹ Γ g ∩ SL(2, ℤ)` for any `g ∈ GL(2, ℚ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e90e46cf3976afed65352dd9329ade01056a2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
