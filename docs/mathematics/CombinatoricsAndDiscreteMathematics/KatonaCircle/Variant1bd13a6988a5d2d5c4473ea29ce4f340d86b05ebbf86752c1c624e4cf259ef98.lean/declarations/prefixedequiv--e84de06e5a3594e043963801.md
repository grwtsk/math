# prefixedEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e20d278f125f89e69ea747bc2c785691f35a35840ec1ff433fd124e4b8775b6",
  "kind": "def",
  "lexical_name": "prefixedEquiv",
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
  "slug": "prefixedequiv--e84de06e5a3594e043963801",
  "source": {
    "blob": "77bef1c03235f39706192772b67e0a1ec7195764",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KatonaCircle/Variant1bd13a6988a5d2d5c4473ea29ce4f340d86b05ebbf86752c1c624e4cf259ef98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e84de06e5a3594e04396380175c650199ee126674e98f97bc4b9ec508178b479",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KatonaCircle/Variant1bd13a6988a5d2d5c4473ea29ce4f340d86b05ebbf86752c1c624e4cf259ef98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e20d278f125f89e69ea747bc2c785691f35a35840ec1ff433fd124e4b8775b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prefixedEquiv (s : Finset X) : prefixed s ≃ Numbering s × Numbering ↑(sᶜ) where
  toFun f :=
    { fst.toFun x := ⟨f.1 x, by simp [← mem_prefixed.1 f.2 x]⟩
      fst.invFun n :=
        ⟨f.1.symm ⟨n, n.2.trans_le <| by simpa using s.card_le_univ⟩, by
          rw [mem_prefixed.1 f.2]; simpa using n.2⟩
      fst.left_inv x := by simp
      fst.right_inv n := by simp
      snd.toFun x := ⟨f.1 x - #s, by
        have := (mem_prefixed.1 f.2 x).not.1 (Finset.mem_compl.1 x.2)
        simp at this ⊢
        omega⟩
      snd.invFun n :=
        ⟨f.1.symm ⟨n + #s, Nat.add_lt_of_lt_sub <| by simpa using n.2⟩, by
          rw [s.mem_compl, mem_prefixed.1 f.2]; simp⟩
      snd.left_inv := by
        rintro ⟨x, hx⟩
        rw [s.mem_compl, mem_prefixed.1 f.2, not_lt] at hx
        simp [Nat.sub_add_cancel hx]
      snd.right_inv := by rintro ⟨n, hn⟩; simp }
  invFun := fun (g, g') ↦
    { val.toFun x :=
        if hx : x ∈ s then
          g ⟨x, hx⟩ |>.castLE (Fintype.card_subtype_le _)
        else
          g' ⟨x, by simpa⟩ |>.addNat #s |>.cast (by simp [card_le_univ])
      val.invFun n :=
        if hn : n < #s then
          g.symm ⟨n, by simpa using hn⟩
        else
          g'.symm ⟨n - #s, by simp; omega⟩
      val.left_inv x := by
        by_cases hx : x ∈ s
        · have : g ⟨x, hx⟩ < #s := by simpa using (g ⟨x, hx⟩).2
          simp [hx, this]
        · simp [hx]
      val.right_inv n := by
        obtain hns | hsn := lt_or_ge n.1 #s
        · simp [hns]
        · simp [hsn.not_gt, hsn, mem_compl.1 <| Subtype.prop _]
      property := mem_prefixed.2 fun x ↦ by
        constructor
        · intro hx
          simpa [hx, -Fin.is_lt] using (g _).is_lt
        · by_cases hx : x ∈ s <;> simp [hx] }
  left_inv f := by
    ext x
    by_cases hx : x ∈ s
    · simp [hx]
    · rw [mem_prefixed.1 f.2, not_lt] at hx
      simp [hx]
  right_inv g := by simp +contextual [Prod.ext_iff, DFunLike.ext_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KatonaCircle/Variant1bd13a6988a5d2d5c4473ea29ce4f340d86b05ebbf86752c1c624e4cf259ef98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KatonaCircle/Variant1bd13a6988a5d2d5c4473ea29ce4f340d86b05ebbf86752c1c624e4cf259ef98.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77bef1c03235f39706192772b67e0a1ec7195764` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
