# allDefinable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:045a110ce6f051b30864545ddfefb73bf210c2dfeb9537c58a9fcf15543179c4",
  "kind": "def",
  "lexical_name": "allDefinable",
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
  "slug": "alldefinable--ee3c8530baae72ea5f1a78ab",
  "source": {
    "blob": "4bb41f5caedd0896a8cf8104dc9be2de61dc5ebc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 677,
    "line": 655,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2646fb1773250cb5e1785d41b569e059e9ea9271a588a7ebb3e397f0d6b10f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee3c8530baae72ea5f1a78ab8698c14bcf7b0eedd691cc773152c017794c2101",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2646fb1773250cb5e1785d41b569e059e9ea9271a588a7ebb3e397f0d6b10f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:045a110ce6f051b30864545ddfefb73bf210c2dfeb9537c58a9fcf15543179c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 655–677.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def allDefinable : ∀ {n} (F : Arity ZFSet n), Definable n F
  | 0, F =>
    let p := @Quotient.exists_rep PSet _ F
    @Definable.EqMk 0 ⟨choose p, Equiv.rfl⟩ _ (choose_spec p)
  | n + 1, (F : Arity ZFSet (n + 1)) => by
    have I := fun x => allDefinable (F x)
    refine' @Definable.EqMk (n + 1) ⟨fun x : PSet => (@Definable.Resp _ _ (I ⟦x⟧)).1, _⟩ _ _
    · dsimp [Arity.Equiv]
      intro x y h
      rw [@Quotient.sound PSet _ _ _ h]
      exact (Definable.Resp (F ⟦y⟧)).2
    refine' funext fun q => Quotient.inductionOn q fun x => _
    simp_rw [Resp.eval_val, Resp.f]
    exact @Definable.eq _ (F ⟦x⟧) (I ⟦x⟧)
#align classical.all_definable Classical.allDefinable

end Classical

namespace ZFSet

open PSet

/-- Turns a pre-set into a ZFC set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2646fb1773250cb5e1785d41b569e059e9ea9271a588a7ebb3e397f0d6b10f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2646fb1773250cb5e1785d41b569e059e9ea9271a588a7ebb3e397f0d6b10f39.lean#L655).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bb41f5caedd0896a8cf8104dc9be2de61dc5ebc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
