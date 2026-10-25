# merge'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5e57506-7dd2-ce0c-ac70-8a5f9d50f9ea",
  "kind": "theorem",
  "lexical_name": "merge'",
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
  "slug": "merge--89ef68a31cf480aa04505cec",
  "source": {
    "blob": "3066fc5f4bc4029ac10780c189c3cdfa82aefa1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89ef68a31cf480aa04505cec755b07754f18b46a117a0cfe0da99518b811b26d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5e57506-7dd2-ce0c-ac70-8a5f9d50f9ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem merge' {f g : α →. σ} (hf : Partrec f) (hg : Partrec g) :
    ∃ k : α →. σ,
      Partrec k ∧ ∀ a, (∀ x ∈ k a, x ∈ f a ∨ x ∈ g a) ∧ ((k a).Dom ↔ (f a).Dom ∨ (g a).Dom) := by
  let ⟨k, hk, H⟩ := Nat.Partrec.merge' (bind_decode₂_iff.1 hf) (bind_decode₂_iff.1 hg)
  let k' (a : α) := (k (encode a)).bind fun n => (decode (α := σ) n : Part σ)
  refine'
    ⟨k', ((nat_iff.2 hk).comp Computable.encode).bind (Computable.decode.ofOption.comp snd).to₂,
      fun a => _⟩
  suffices; refine' ⟨this, ⟨fun h => (this _ ⟨h, rfl⟩).imp Exists.fst Exists.fst, _⟩⟩
  · intro h
    rw [bind_dom]
    have hk : (k (encode a)).Dom :=
      (H _).2.2 (by simpa only [encodek₂, bind_some, coe_some] using h)
    exists hk
    simp only [exists_prop, mem_map_iff, mem_coe, mem_bind_iff, Option.mem_def] at H
    obtain ⟨a', _, y, _, e⟩ | ⟨a', _, y, _, e⟩ := (H _).1 _ ⟨hk, rfl⟩ <;>
      simp only [e.symm, encodek, coe_some, some_dom]
  intro x h'; simp only [exists_prop, mem_coe, mem_bind_iff, Option.mem_def] at h'
  obtain ⟨n, hn, hx⟩ := h'
  have := (H _).1 _ hn
  simp [mem_decode₂, encode_injective.eq_iff] at this
  obtain ⟨a', ha, rfl⟩ | ⟨a', ha, rfl⟩ := this <;> simp only [encodek, Option.some_inj] at hx <;>
    rw [hx] at ha
  · exact Or.inl ha
  exact Or.inr ha
#align partrec.merge' Partrec.merge'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3066fc5f4bc4029ac10780c189c3cdfa82aefa1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
