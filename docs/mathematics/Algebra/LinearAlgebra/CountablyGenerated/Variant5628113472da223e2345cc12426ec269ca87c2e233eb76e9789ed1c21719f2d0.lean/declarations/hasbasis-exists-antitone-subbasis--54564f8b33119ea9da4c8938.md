# HasBasis.exists_antitone_subbasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1732fded7e6e4de54b0ee7290f109aa998c7d880",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b49f3fca-1c51-0dcb-16ad-4de4f9c39280",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5c39dd1-2a12-2f9d-bd4d-0e23906e6a1a",
  "kind": "theorem",
  "lexical_name": "HasBasis.exists_antitone_subbasis",
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
  "slug": "hasbasis-exists-antitone-subbasis--54564f8b33119ea9da4c8938",
  "source": {
    "blob": "1732fded7e6e4de54b0ee7290f109aa998c7d880",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 113,
    "path": "GRWTSK/Algebra/LinearAlgebra/CountablyGenerated/Variant5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54564f8b33119ea9da4c893838b68d1d66cdd98ef58c147e7ed110330d52d9bf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CountablyGenerated/Variant5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5c39dd1-2a12-2f9d-bd4d-0e23906e6a1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasBasis.exists_antitone_subbasis {f : Filter α} [h : f.IsCountablyGenerated]
    {p : ι' → Prop} {s : ι' → Set α} (hs : f.HasBasis p s) :
    ∃ x : ℕ → ι', (∀ i, p (x i)) ∧ f.HasAntitoneBasis fun i => s (x i) := by
  obtain ⟨x', hx'⟩ : ∃ x : ℕ → Set α, f = ⨅ i, 𝓟 (x i) := by
    rcases h with ⟨s, hsc, rfl⟩
    rw [generate_eq_biInf]
    exact countable_biInf_principal_eq_seq_iInf hsc
  have : ∀ i, x' i ∈ f := fun i => hx'.symm ▸ (iInf_le (fun i => 𝓟 (x' i)) i) (mem_principal_self _)
  let x : ℕ → { i : ι' // p i } := fun n =>
    Nat.recOn n (hs.index _ <| this 0) fun n xn =>
      hs.index _ <| inter_mem (this <| n + 1) (hs.mem_of_mem xn.2)
  have x_anti : Antitone fun i => s (x i).1 :=
    antitone_nat_of_succ_le fun i => (hs.set_index_subset _).trans inter_subset_right
  have x_subset : ∀ i, s (x i).1 ⊆ x' i := by
    rintro (_ | i)
    exacts [hs.set_index_subset _, (hs.set_index_subset _).trans inter_subset_left]
  refine ⟨fun i => (x i).1, fun i => (x i).2, ?_⟩
  have : (⨅ i, 𝓟 (s (x i).1)).HasAntitoneBasis fun i => s (x i).1 := .iInf_principal x_anti
  convert! this
  exact
    le_antisymm (le_iInf fun i => le_principal_iff.2 <| by cases i <;> apply hs.set_index_mem)
      (hx'.symm ▸
        le_iInf fun i => le_principal_iff.2 <| this.1.mem_iff.2 ⟨i, trivial, x_subset i⟩)

/-- A countably generated filter admits a basis formed by an antitone sequence of sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CountablyGenerated/Variant5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CountablyGenerated/Variant5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1732fded7e6e4de54b0ee7290f109aa998c7d880` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
