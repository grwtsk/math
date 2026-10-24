# eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b51209a9b81c293ac5ed8faa95ef873e8d351d55b797927d13727d000dba2278",
  "kind": "def",
  "lexical_name": "eq",
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
  "slug": "eq--aa94adfae763a09c60bfe462",
  "source": {
    "blob": "0394ec88cc0f0755af760c741704f4affe3918e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant65b418c31617ca40d4a5c36b21ed7bea586cd5cd3b11bcbb89e9843895ecd897.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa94adfae763a09c60bfe462660890ce301e306d8d30a3d30332df4159746dd4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant65b418c31617ca40d4a5c36b21ed7bea586cd5cd3b11bcbb89e9843895ecd897.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b51209a9b81c293ac5ed8faa95ef873e8d351d55b797927d13727d000dba2278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eq : KleisliCat m ≌ Kleisli (ofTypeMonad m) where
  functor :=
    { obj := fun X => X
      map := fun f => f
      map_id := fun _ => rfl
      map_comp := fun f g => by
        --unfold_projs
        funext t
        -- Porting note: missing tactic `unfold_projs`, using `change` instead.
        change _ = joinM (g <$> (f t))
        simp only [joinM, seq_bind_eq, Function.id_comp]
        rfl }
  inverse :=
    { obj := fun X => X
      map := fun f => f
      map_id := fun _ => rfl
      map_comp := fun f g => by
        --unfold_projs
        -- Porting note: Need these instances for some lemmas below.
        --Should they be added as actual instances elsewhere?
        letI : _root_.Monad (ofTypeMonad m).obj :=
          show _root_.Monad m from inferInstance
        letI : LawfulMonad (ofTypeMonad m).obj :=
          show LawfulMonad m from inferInstance
        funext t
        dsimp
        -- Porting note: missing tactic `unfold_projs`, using `change` instead.
        change joinM (g <$> (f t)) = _
        simp only [joinM, seq_bind_eq, Function.id_comp]
        rfl }
  unitIso := by
    refine NatIso.ofComponents (fun X => Iso.refl X) fun f => ?_
    change f >=> pure = pure >=> f
    simp [functor_norm]
  counitIso := NatIso.ofComponents fun X => Iso.refl X

end

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant65b418c31617ca40d4a5c36b21ed7bea586cd5cd3b11bcbb89e9843895ecd897.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant65b418c31617ca40d4a5c36b21ed7bea586cd5cd3b11bcbb89e9843895ecd897.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0394ec88cc0f0755af760c741704f4affe3918e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
