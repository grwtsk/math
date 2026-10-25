# relation_intro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b97d0fde-c4e8-6e96-dd6f-63ea2d0d3418",
  "kind": "theorem",
  "lexical_name": "relation_intro",
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
  "slug": "relation-intro--193581c6cd5e5c349195d0e6",
  "source": {
    "blob": "d2d27a95caff61476e46c378b5e29ffd0ac14913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant6cb5ee4746e70f866de1d0770b9aef1824b06c5f248b9b036ed520b6a271f475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:193581c6cd5e5c349195d0e6b3a809588631ae2eb3ca36e679e7333ef4d1e8f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant6cb5ee4746e70f866de1d0770b9aef1824b06c5f248b9b036ed520b6a271f475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b97d0fde-c4e8-6e96-dd6f-63ea2d0d3418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relation_intro (K : QuantifierRoute L.witnesses C L.base H)
    (hT : SortedAt P Γ T I) (mT : WellModed γ T .data)
    {G : Expr S} (hG : L.Family (R.predicateType T) G)
    (hy : HasType P Γ y (R.logicalType T)) (my : WellModed γ y .data)
    (hz : HasType P Γ z (R.logicalType T)) (mz : WellModed γ z .data)
    (hh : ∀ (Δ : List (Expr S)) (δ : Nat → Mode) (e : Embedding P Γ γ Δ δ),
      ∀ p, HasType P Δ p ((R.rename e.names).predicateType (T.rename e.names)) → WellModed δ p
        .data →
      Proves P Δ δ ((G.rename (Expr.liftRen e.names)).instantiate p) →
      Equivalent P Δ δ ((R.rename e.names).eval (T.rename e.names) p (y.rename e.names))
        ((R.rename e.names).eval (T.rename e.names) p (z.rename e.names))) :
    Proves P Γ γ (R.relation L.code K.code T G y z) := by
  apply L.guardAll_intro K (h.predicate_sorted hT) (h.predicate_mode mT) hG
    (h.compareBody_family hT mT hy my hz mz)
  intro Δ δ e p hp mp hg
  have ht : HasType P Δ p ((R.rename e.names).predicateType (T.rename e.names)) := by
    simpa only [predicateType_rename] using hp
  have hy' : HasType P Δ (y.rename e.names) ((R.rename e.names).logicalType (T.rename
    e.names)) := by
    simpa only [logicalType_rename] using e.typing hy
  have hz' : HasType P Δ (z.rename e.names) ((R.rename e.names).logicalType (T.rename
    e.names)) := by
    simpa only [logicalType_rename] using e.typing hz
  have hfy := (h.rename e).eval_formula (fun s hs => e.typing (hT s hs)) (e.moded mT) ht mp
    hy' (e.moded my)
  have hfz := (h.rename e).eval_formula (fun s hs => e.typing (hT s hs)) (e.moded mT) ht mp
    hz' (e.moded mz)
  simpa only [compareBody_rename,compareBody_instantiate,← LogicSetup.code_rename,
    LogicSetup.code_iff] using
    (L.rename e).iff_of_equivalent hfy hfz (hh Δ δ e p ht mp hg)
end Formed
end ChannelCode

namespace LogicSetup
variable {Γ Δ : List (Expr S)} {γ δ : Nat → Mode} {C : Set (Set S)}
    {L : LogicSetup P Γ γ C} {A B D : Expr S}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant6cb5ee4746e70f866de1d0770b9aef1824b06c5f248b9b036ed520b6a271f475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant6cb5ee4746e70f866de1d0770b9aef1824b06c5f248b9b036ed520b6a271f475.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2d27a95caff61476e46c378b5e29ffd0ac14913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
