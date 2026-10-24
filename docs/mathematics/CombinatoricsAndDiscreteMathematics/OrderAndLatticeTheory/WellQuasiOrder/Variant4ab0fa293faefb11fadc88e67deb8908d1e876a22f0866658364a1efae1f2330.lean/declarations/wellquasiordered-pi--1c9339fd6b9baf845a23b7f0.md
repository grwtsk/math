# WellQuasiOrdered.pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d95c1d7d-6cff-174e-a400-58c0abfcbaab",
  "kind": "theorem",
  "lexical_name": "WellQuasiOrdered.pi",
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
  "slug": "wellquasiordered-pi--1c9339fd6b9baf845a23b7f0",
  "source": {
    "blob": "42940579c57840d95df50e0c1d5dac335a0f5b77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant4ab0fa293faefb11fadc88e67deb8908d1e876a22f0866658364a1efae1f2330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c9339fd6b9baf845a23b7f0499b6e24bee40e910b8de4fdc07b8f03304a4f10",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant4ab0fa293faefb11fadc88e67deb8908d1e876a22f0866658364a1efae1f2330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d95c1d7d-6cff-174e-a400-58c0abfcbaab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WellQuasiOrdered.pi {ι : Type*} {α : ι → Type*} [Finite ι] {r : ∀ i, (α i → α i → Prop)}
    [∀ i, IsPreorder (α i) (r i)] (hr : ∀ i, WellQuasiOrdered (r i)) :
    WellQuasiOrdered fun a b : ∀ i, α i => ∀ i, r i (a i) (b i) := by
  have := Fintype.ofFinite ι
  have : IsPreorder (∀ i, α i) (fun a b : ∀ i, α i => ∀ i, r i (a i) (b i)) :=
    { refl a i := refl (a i)
      trans a b c hab hbc i := _root_.trans (hab i) (hbc i) }
  suffices ∀ (s : Finset ι) (f : ℕ → ∀ i, α i),
    ∃ g : ℕ ↪o ℕ, ∀ ⦃a b : ℕ⦄, a ≤ b → ∀ i, i ∈ s → r i ((f ∘ g) a i) ((f ∘ g) b i) by
    rw [wellQuasiOrdered_iff_exists_monotone_subseq]
    intro f
    simpa only [Finset.mem_univ, true_imp_iff] using! this Finset.univ f
  refine Finset.cons_induction ?_ ?_
  · intro f
    exists RelEmbedding.refl (· ≤ ·)
    simp only [IsEmpty.forall_iff, imp_true_iff, Finset.notMem_empty]
  · intro i s hi ih f
    obtain ⟨g, hg⟩ := (hr i).exists_monotone_subseq (f · i)
    obtain ⟨g', hg'⟩ := ih (f ∘ g)
    refine ⟨g'.trans g, fun a b hab => (Finset.forall_mem_cons _ _).2 ?_⟩
    exact ⟨hg _ _ (OrderHomClass.mono g' hab), hg' hab⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant4ab0fa293faefb11fadc88e67deb8908d1e876a22f0866658364a1efae1f2330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant4ab0fa293faefb11fadc88e67deb8908d1e876a22f0866658364a1efae1f2330.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42940579c57840d95df50e0c1d5dac335a0f5b77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
