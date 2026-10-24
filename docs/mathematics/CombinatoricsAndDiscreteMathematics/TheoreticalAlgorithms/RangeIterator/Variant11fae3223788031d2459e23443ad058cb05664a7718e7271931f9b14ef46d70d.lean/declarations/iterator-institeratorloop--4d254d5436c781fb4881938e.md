# Iterator.instIteratorLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d5681b7750fb43c45780280c37bd67182bfef0b63b7ce86fe66abafc9acded6",
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
  "slug": "iterator-institeratorloop--4d254d5436c781fb4881938e",
  "source": {
    "blob": "2c65cc1b08eaaaddbf107917b05560b21bd9d163",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1072,
    "line": 1031,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant11fae3223788031d2459e23443ad058cb05664a7718e7271931f9b14ef46d70d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d254d5436c781fb4881938ef3cbcf61c4801b0839f5868a69bab68d6f9e730e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant11fae3223788031d2459e23443ad058cb05664a7718e7271931f9b14ef46d70d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d5681b7750fb43c45780280c37bd67182bfef0b63b7ce86fe66abafc9acded6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1031–1072.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Iterator.instIteratorLoop [UpwardEnumerable α] [LT α] [DecidableLT α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLT α]
    {n : Type u → Type w} [Monad n] :
    IteratorLoop (Rxo.Iterator α) Id n where
  forIn _ γ Pl it init f :=
    match it with
    | ⟨⟨some next, upperBound⟩⟩ =>
      loop γ Pl (UpwardEnumerable.LE next ·) (fun a b hab hna => ?hle) upperBound init next ?hle'' (fun a ha₁ ha₂ c => f a ?hf c)
    | ⟨⟨none, _⟩⟩ => return init
  where
    @[always_inline, inline]
    loop γ (Pl : α → γ → ForInStep γ → Prop) (LargeEnough : α → Prop)
        (hl : ∀ a b : α, UpwardEnumerable.LE a b → LargeEnough a → LargeEnough b)
        (upperBound : α) (acc : γ) (next : α) (h : LargeEnough next)
        (f : (out : α) → LargeEnough out → out < upperBound → (c : γ) → n (Subtype (Pl out c))) : n γ :=
      haveI : Nonempty γ := ⟨acc⟩
      WellFounded.extrinsicFix₃ (C₃ := fun _ _ _ => n γ) (InvImage (IteratorLoop.rel _ Id Pl) (fun x => (⟨Rxo.Iterator.mk (some x.1) upperBound⟩, x.2.1)))
        (fun next acc (h : LargeEnough next) G => do
          if hu : next < upperBound then
            match ← f next h hu acc with
            | ⟨.yield acc', h'⟩ =>
              match hs : UpwardEnumerable.succ? next with
              | some next' => G next' acc' (hl _ _ ?hle' h) ?decreasing
              | none => return acc'
            | ⟨.done acc', _⟩ => return acc'
          else
            return acc) next acc h
  finally
    case hf =>
      rw [Monadic.isPlausibleIndirectOutput_iff]
      obtain ⟨n, hn⟩ := ha₁
      exact ⟨n, hn, ha₂⟩
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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant11fae3223788031d2459e23443ad058cb05664a7718e7271931f9b14ef46d70d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant11fae3223788031d2459e23443ad058cb05664a7718e7271931f9b14ef46d70d.lean#L1031).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c65cc1b08eaaaddbf107917b05560b21bd9d163` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
