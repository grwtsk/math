# IterM.Equiv.of_morphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fe99b28d103aec8a5365cce38f6441adbcc71f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f441215-7b5e-beaf-83d0-8d470da0928d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdbcf4ed-100b-e258-4a36-48f21ef7c43e",
  "kind": "theorem",
  "lexical_name": "IterM.Equiv.of_morphism",
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
  "slug": "iterm-equiv-of-morphism--f58fb6e52c5a4390138dcd1d",
  "source": {
    "blob": "0fe99b28d103aec8a5365cce38f6441adbcc71f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 244,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f58fb6e52c5a4390138dcd1ddc74130fdbe9c063ebf1d36cb667146d80b4f9af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdbcf4ed-100b-e258-4a36-48f21ef7c43e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.Equiv.of_morphism {α₁ α₂} {m : Type w → Type w'} [Monad m] [LawfulMonad m]
    {β : Type w} [Iterator α₁ m β] [Iterator α₂ m β]
    (ita : IterM (α := α₁) m β)
    (f : IterM (α := α₁) m β → IterM (α := α₂) m β)
    (h : ∀ it, IterM.stepAsHetT (f it) = IterStep.mapIterator f <$> IterM.stepAsHetT it) :
    IterM.Equiv ita (f ita) := by
  refine BundledIterM.Equiv.coinduct m β ?R ?implies (.ofIterM ita) (.ofIterM (f ita)) ?hf
  case R =>
    intro ita itb
    exact ∃ it, ita = .ofIterM it ∧ itb = .ofIterM (f it)
  case implies =>
    rintro _ _ ⟨it, rfl, rfl⟩
    simp only [BundledIterM.step, HetT.map_eq_pure_bind,
      HetT.bind_assoc, Function.comp_apply, HetT.pure_bind, IterStep.mapIterator_mapIterator,
      Functor.map, HetT.ext_iff, HetT.prun_bind, Equivalence.property_step, HetT.prun_pure,
      Equivalence.prun_step, HetT.property_bind, HetT.property_pure, h]
    refine ⟨?_, ?_⟩
    · unfold BundledIterM.ofIterM
      ext step
      constructor
      all_goals
        rintro ⟨step', hs', h⟩
        refine ⟨step', hs', ?_⟩
        rw [← h]
        congr 1
        ext it
      · apply Eq.symm
        apply Quot.sound
        refine ⟨it, rfl, rfl⟩
      · apply Quot.sound
        refine ⟨it, rfl, rfl⟩
    · intro β f
      apply bind_congr
      intro step
      congr 2
      ext it
      apply Quot.sound
      exact ⟨it, rfl, rfl⟩
  case hf =>
    exact ⟨ita, rfl, rfl⟩

end Std
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6ca9502edc392775bb2763f9ad677088bfd0711b629a45e066d00568c460045f.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fe99b28d103aec8a5365cce38f6441adbcc71f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
