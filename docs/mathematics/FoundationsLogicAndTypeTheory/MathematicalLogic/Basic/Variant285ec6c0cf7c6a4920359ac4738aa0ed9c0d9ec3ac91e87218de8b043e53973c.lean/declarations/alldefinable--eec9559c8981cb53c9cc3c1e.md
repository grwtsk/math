# allDefinable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd3b7d15cd556f1d4821ab68dd2e2bf6e14d17513c0ee0cf7cbb3ba8e27b759a",
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
  "slug": "alldefinable--eec9559c8981cb53c9cc3c1e",
  "source": {
    "blob": "b84d3134005502fa36af858313d8646a4edecb6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 685,
    "line": 663,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant285ec6c0cf7c6a4920359ac4738aa0ed9c0d9ec3ac91e87218de8b043e53973c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eec9559c8981cb53c9cc3c1eae522d25902956e3651a0b82e24a9777cd2c3864",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant285ec6c0cf7c6a4920359ac4738aa0ed9c0d9ec3ac91e87218de8b043e53973c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd3b7d15cd556f1d4821ab68dd2e2bf6e14d17513c0ee0cf7cbb3ba8e27b759a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–685.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant285ec6c0cf7c6a4920359ac4738aa0ed9c0d9ec3ac91e87218de8b043e53973c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant285ec6c0cf7c6a4920359ac4738aa0ed9c0d9ec3ac91e87218de8b043e53973c.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b84d3134005502fa36af858313d8646a4edecb6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
