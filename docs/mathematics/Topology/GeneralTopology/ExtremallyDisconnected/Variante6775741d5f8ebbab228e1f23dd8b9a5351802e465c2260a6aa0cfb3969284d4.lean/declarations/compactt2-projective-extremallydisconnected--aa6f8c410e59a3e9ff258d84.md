# CompactT2.Projective.extremallyDisconnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82981461-d03c-0fd5-89a0-4e5ed0052a7f",
  "kind": "theorem",
  "lexical_name": "CompactT2.Projective.extremallyDisconnected",
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
  "slug": "compactt2-projective-extremallydisconnected--aa6f8c410e59a3e9ff258d84",
  "source": {
    "blob": "46fda5d44dcf003b43bda908359c33f2b6336d79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa6f8c410e59a3e9ff258d84a5e882950fff6348e41dadd973634ea288523b9a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82981461-d03c-0fd5-89a0-4e5ed0052a7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem CompactT2.Projective.extremallyDisconnected [CompactSpace X] [T2Space X]
    (h : CompactT2.Projective X) : ExtremallyDisconnected X := by
  refine { open_closure := fun U hU => ?_ }
  let Z₁ : Set (X × Bool) := Uᶜ ×ˢ {true}
  let Z₂ : Set (X × Bool) := closure U ×ˢ {false}
  let Z : Set (X × Bool) := Z₁ ∪ Z₂
  have hZ₁₂ : Disjoint Z₁ Z₂ := disjoint_left.2 fun x hx₁ hx₂ => by cases hx₁.2.symm.trans hx₂.2
  have hZ₁ : IsClosed Z₁ := hU.isClosed_compl.prod (T1Space.t1 _)
  have hZ₂ : IsClosed Z₂ := isClosed_closure.prod (T1Space.t1 false)
  have hZ : IsClosed Z := hZ₁.union hZ₂
  let f : Z → X := Prod.fst ∘ Subtype.val
  have f_cont : Continuous f := continuous_fst.comp continuous_subtype_val
  have f_sur : Surjective f := by
    intro x
    by_cases hx : x ∈ U
    · exact ⟨⟨(x, false), Or.inr ⟨subset_closure hx, mem_singleton _⟩⟩, rfl⟩
    · exact ⟨⟨(x, true), Or.inl ⟨hx, mem_singleton _⟩⟩, rfl⟩
  haveI : CompactSpace Z := isCompact_iff_compactSpace.mp hZ.isCompact
  obtain ⟨g, hg, g_sec⟩ := h continuous_id f_cont f_sur
  let φ := Subtype.val ∘ g
  have hφ : Continuous φ := continuous_subtype_val.comp hg
  have hφ₁ : ∀ x, (φ x).1 = x := congr_fun g_sec
  suffices closure U = φ ⁻¹' Z₂ by
    rw [this, preimage_comp, ← isClosed_compl_iff, ← preimage_compl,
      ← preimage_subtype_coe_eq_compl Subset.rfl]
    · exact hZ₁.preimage hφ
    · rw [hZ₁₂.inter_eq, inter_empty]
  refine (closure_minimal ?_ <| hZ₂.preimage hφ).antisymm fun x hx => ?_
  · intro x hx
    have : φ x ∈ Z₁ ∪ Z₂ := (g x).2
    rcases this with hφ | hφ
    · exact ((hφ₁ x ▸ hφ.1) hx).elim
    · exact hφ
  · rw [← hφ₁ x]
    exact hx.1

end

section

variable {A D E : Type u} [TopologicalSpace A] [TopologicalSpace D] [TopologicalSpace E]

/-- Lemma 2.4 in [Gleason, *Projective topological spaces*][gleason1958]:
a continuous surjection $\pi$ from a compact space $D$ to a Fréchet space $A$ restricts to
a compact subset $E$ of $D$, such that $\pi$ maps $E$ onto $A$ and satisfies the
"Zorn subset condition", where $\pi(E_0) \ne A$ for any proper closed subset $E_0 \subsetneq E$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variante6775741d5f8ebbab228e1f23dd8b9a5351802e465c2260a6aa0cfb3969284d4.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46fda5d44dcf003b43bda908359c33f2b6336d79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
