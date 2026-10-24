# piiUnionInter_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b82eed9b-6421-31e4-d306-7b40bda0c41f",
  "kind": "theorem",
  "lexical_name": "piiUnionInter_singleton",
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
  "slug": "piiunioninter-singleton--df64f4b3d134bdebeb013925",
  "source": {
    "blob": "17d92d336193f2b2708cc36da4a2ffe27bab63db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 344,
    "path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variant0eb65f1eb2622729508a885b9099086ab9f2135339c02ea150183abb781dfbdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df64f4b3d134bdebeb013925004571a49ab60cb6d620ebb299fa7b9df95a619b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PiSystem/Variant0eb65f1eb2622729508a885b9099086ab9f2135339c02ea150183abb781dfbdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b82eed9b-6421-31e4-d306-7b40bda0c41f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem piiUnionInter_singleton (π : ι → Set (Set α)) (i : ι) :
    piiUnionInter π {i} = π i ∪ {univ} := by
  ext1 s
  simp only [piiUnionInter, exists_prop, mem_union]
  refine ⟨?_, fun h => ?_⟩
  · rintro ⟨t, hti, f, hfπ, rfl⟩
    simp only [subset_singleton_iff, Finset.mem_coe] at hti
    by_cases hi : i ∈ t
    · have ht_eq_i : t = {i} := by
        ext1 x
        rw [Finset.mem_singleton]
        exact ⟨fun h => hti x h, fun h => h.symm ▸ hi⟩
      simp only [ht_eq_i, Finset.mem_singleton, iInter_iInter_eq_left]
      exact Or.inl (hfπ i hi)
    · have ht_empty : t = ∅ := by
        ext1 x
        simp only [Finset.notMem_empty, iff_false]
        exact fun hx => hi (hti x hx ▸ hx)
      simp [ht_empty, iInter_false, iInter_univ, Set.mem_singleton univ]
  · rcases h with hs | hs
    · refine ⟨{i}, ?_, fun _ => s, ⟨fun x hx => ?_, ?_⟩⟩
      · rw [Finset.coe_singleton]
      · rw [Finset.mem_singleton] at hx
        rwa [hx]
      · simp only [Finset.mem_singleton, iInter_iInter_eq_left]
    · refine ⟨∅, ?_⟩
      simpa only [Finset.coe_empty, subset_singleton_iff, mem_empty_iff_false, IsEmpty.forall_iff,
        imp_true_iff, Finset.notMem_empty, iInter_false, iInter_univ, true_and,
        exists_const] using hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PiSystem/Variant0eb65f1eb2622729508a885b9099086ab9f2135339c02ea150183abb781dfbdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PiSystem/Variant0eb65f1eb2622729508a885b9099086ab9f2135339c02ea150183abb781dfbdb.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17d92d336193f2b2708cc36da4a2ffe27bab63db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
