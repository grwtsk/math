# HasBasis.exists_antitone_subbasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b7c9584-fa52-82c0-d41f-81e88064667e",
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
  "slug": "hasbasis-exists-antitone-subbasis--5b0d4eddb21fb54aaa1fc060",
  "source": {
    "blob": "5467ba2aa7bdb7c2ec5e8a908e34df4a1efe8a0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 121,
    "path": "GRWTSK/Algebra/LinearAlgebra/CountablyGenerated/Variant7b5bd0d06d343969f643a599d9719874858a434f9c201fde56bcb4f33c9c4cea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b0d4eddb21fb54aaa1fc06089ca8d7562a36ae76149533881e8cfc5b0c5f186",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CountablyGenerated/Variant7b5bd0d06d343969f643a599d9719874858a434f9c201fde56bcb4f33c9c4cea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b7c9584-fa52-82c0-d41f-81e88064667e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–145.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CountablyGenerated/Variant7b5bd0d06d343969f643a599d9719874858a434f9c201fde56bcb4f33c9c4cea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CountablyGenerated/Variant7b5bd0d06d343969f643a599d9719874858a434f9c201fde56bcb4f33c9c4cea.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5467ba2aa7bdb7c2ec5e8a908e34df4a1efe8a0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
