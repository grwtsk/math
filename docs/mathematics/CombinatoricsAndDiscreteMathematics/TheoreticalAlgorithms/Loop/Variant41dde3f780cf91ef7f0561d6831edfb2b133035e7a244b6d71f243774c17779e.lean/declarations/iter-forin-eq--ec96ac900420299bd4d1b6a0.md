# Iter.forIn'_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db8492eb-af04-6584-90cf-5d84e7a025b8",
  "kind": "theorem",
  "lexical_name": "Iter.forIn'_eq",
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
  "slug": "iter-forin-eq--ec96ac900420299bd4d1b6a0",
  "source": {
    "blob": "a554251c59f45781c3037de3033e14a5093aea5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec96ac900420299bd4d1b6a0d6b6e341af84f2296ff42f6647877a3f9998949c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db8492eb-af04-6584-90cf-5d84e7a025b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.forIn'_eq {α β : Type w} [Iterator α Id β] [Finite α Id]
    {m : Type x → Type x'} [Monad m] [LawfulMonad m] [IteratorLoop α Id m] [hl : LawfulIteratorLoop α Id m]
    {γ : Type x} {it : Iter (α := α) β} {init : γ}
    {f : (b : β) → it.IsPlausibleIndirectOutput b → γ → m (ForInStep γ)} :
    letI : ForIn' m (Iter (α := α) β) β _ := Iter.instForIn'
    ForIn'.forIn' it init f =
      IterM.DefaultConsumers.forIn' (n := m) (fun _ _ f x => f x.run) γ (fun _ _ _ => True)
        it.toIterM init _ (fun _ => id)
          (fun out h acc => return ⟨← f out (Iter.isPlausibleIndirectOutput_iff_isPlausibleIndirectOutput_toIterM.mpr h) acc, trivial⟩) := by
  simp only [ForIn'.forIn']
  have : ∀ a b c, f a b c = (Subtype.val <$> (⟨·, trivial⟩) <$> f a b c) := by simp
  simp +singlePass only [this]
  rw [hl.lawful (fun _ _ f x => f x.run) (wf := IteratorLoop.wellFounded_of_finite)]
  simp only [IteratorLoop.forIn, Functor.map_map, id_map',
    bind_pure_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a554251c59f45781c3037de3033e14a5093aea5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
