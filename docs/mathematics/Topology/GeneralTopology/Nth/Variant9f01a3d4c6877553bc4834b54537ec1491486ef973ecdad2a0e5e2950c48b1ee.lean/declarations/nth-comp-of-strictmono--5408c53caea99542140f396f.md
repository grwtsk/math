# nth_comp_of_strictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9062ecc0f5dd233f03b73050d057b5fa46a15d2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27b42ffb-751c-0194-7e0d-bbc8e25bdc8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a4554bb-d861-5b4f-96da-1193400bf31f",
  "kind": "lemma",
  "lexical_name": "nth_comp_of_strictMono",
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
  "slug": "nth-comp-of-strictmono--5408c53caea99542140f396f",
  "source": {
    "blob": "9062ecc0f5dd233f03b73050d057b5fa46a15d2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 279,
    "path": "GRWTSK/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5408c53caea99542140f396fba8daf2561dc1c8dea89c4d8cad692c91e5a7ba8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a4554bb-d861-5b4f-96da-1193400bf31f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nth_comp_of_strictMono {n : ℕ} {f : ℕ → ℕ} (hf : StrictMono f)
    (h0 : ∀ k, p k → k ∈ Set.range f) (h : ∀ hfi : (setOf p).Finite, n < hfi.toFinset.card) :
    f (nth (fun i ↦ p (f i)) n) = nth p n := by
  have hs {p' : ℕ → Prop} (h0p' : ∀ k, p' k → k ∈ Set.range f) :
      f '' {i | p' (f i)} = setOf p' := by
    ext i
    refine ⟨fun ⟨_, hi, h⟩ ↦ h ▸ hi, fun he ↦ ?_⟩
    rcases h0p' _ he with ⟨t, rfl⟩
    exact ⟨t, he, rfl⟩
  induction n using Nat.case_strong_induction_on
  case _ =>
    simp_rw [nth_zero]
    replace h := nth_mem _ h
    rw [← hs h0, ← hf.monotone.map_csInf]
    rcases h0 _ h with ⟨t, ht⟩
    exact ⟨t, Set.mem_setOf_eq ▸ ht ▸ h⟩
  case _ n ih =>
    repeat nth_rw 1 [nth_eq_sInf]
    have h0' : ∀ k', (p k' ∧ ∀ k < n + 1, nth p k < k') → k' ∈ Set.range f := fun _ h ↦ h0 _ h.1
    rw [← hs h0', ← hf.monotone.map_csInf]
    · convert rfl using 8 with k m' hm
      nth_rw 2 [← hf.lt_iff_lt]
      convert Iff.rfl using 2
      exact ih m' (Nat.lt_add_one_iff.mp hm) fun hfi ↦ hm.trans (h hfi)
    · rcases h0 _ (nth_mem _ h) with ⟨t, ht⟩
      exact ⟨t, ht ▸ (nth_mem _ h), fun _ hk ↦ ht ▸ nth_lt_nth' hk h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9062ecc0f5dd233f03b73050d057b5fa46a15d2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
