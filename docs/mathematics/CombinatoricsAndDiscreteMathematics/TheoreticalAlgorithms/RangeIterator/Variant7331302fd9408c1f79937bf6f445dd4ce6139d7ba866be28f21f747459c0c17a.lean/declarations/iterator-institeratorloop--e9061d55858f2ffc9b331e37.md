# Iterator.instIteratorLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8166ea93c7cc2825b4af9fc8b9933f85262e96326cfa6dce5b80f5fd7a6834fd",
  "kind": "instance",
  "lexical_name": "Iterator.instIteratorLoop",
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
  "slug": "iterator-institeratorloop--e9061d55858f2ffc9b331e37",
  "source": {
    "blob": "2093b5bbbd36bee526de84a184714f26fcfadcf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1541,
    "line": 1506,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9061d55858f2ffc9b331e37ea87fe272bd44019bd0ef9638756be7c353dcd75",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8166ea93c7cc2825b4af9fc8b9933f85262e96326cfa6dce5b80f5fd7a6834fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1506–1541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Iterator.instIteratorLoop [UpwardEnumerable α] [LawfulUpwardEnumerable α]
    {n : Type u → Type w} [Monad n] :
    IteratorLoop (Rxi.Iterator α) Id n where
  forIn _ γ Pl it init f :=
    match it with
    | ⟨⟨some next⟩⟩ =>
      loop γ Pl (UpwardEnumerable.LE next ·) (fun a b hab hna => ?hle) init next ?hle'' (fun a ha c => f a ?hf c)
    | ⟨⟨none⟩⟩ => return init
  where
    @[always_inline, inline]
    loop γ (Pl : α → γ → ForInStep γ → Prop) (LargeEnough : α → Prop) (hl : ∀ a b : α, UpwardEnumerable.LE a b → LargeEnough a → LargeEnough b)
        (acc : γ) (next : α) (h : LargeEnough next)
        (f : (out : α) → LargeEnough out → (c : γ) → n (Subtype (Pl out c))) : n γ :=
      haveI : Nonempty γ := ⟨acc⟩
      WellFounded.extrinsicFix₃ (C₃ := fun _ _ _ => n γ) (InvImage (IteratorLoop.rel _ Id Pl) (fun x => (⟨Rxi.Iterator.mk (some x.1)⟩, x.2.1)))
        (fun next acc (h : LargeEnough next) G => do
          match ← f next h acc with
          | ⟨.yield acc', h'⟩ =>
            match hs : UpwardEnumerable.succ? next with
            | some next' => G next' acc' (hl _ _ ?hle' h) ?decreasing
            | none => return acc'
          | ⟨.done acc', _⟩ => return acc') next acc h
  finally
    case hf =>
      rw [Monadic.isPlausibleIndirectOutput_iff]
      exact ha
    case hle =>
      exact UpwardEnumerable.le_trans hna hab
    case hle' =>
      refine ⟨1, ?_⟩
      simpa [succMany?_one] using hs
    case hle'' =>
      exact UpwardEnumerable.le_refl _
    case decreasing =>
      simp_wf; simp [IteratorLoop.rel, Monadic.isPlausibleStep_iff, Monadic.step, *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean#L1506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2093b5bbbd36bee526de84a184714f26fcfadcf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
