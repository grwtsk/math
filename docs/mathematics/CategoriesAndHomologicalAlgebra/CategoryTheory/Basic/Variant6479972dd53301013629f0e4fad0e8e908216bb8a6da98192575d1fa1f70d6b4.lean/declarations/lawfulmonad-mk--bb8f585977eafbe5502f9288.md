# LawfulMonad.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6b220e1-0cb1-ab85-5d4c-2779f3466966",
  "kind": "theorem",
  "lexical_name": "LawfulMonad.mk'",
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
  "slug": "lawfulmonad-mk--bb8f585977eafbe5502f9288",
  "source": {
    "blob": "96a1b06047a73bf0dc4a02e114301c9e33adec2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 239,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6479972dd53301013629f0e4fad0e8e908216bb8a6da98192575d1fa1f70d6b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb8f585977eafbe5502f92886f2ac732f08833161939b6af80edba824402847d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6479972dd53301013629f0e4fad0e8e908216bb8a6da98192575d1fa1f70d6b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6b220e1-0cb1-ab85-5d4c-2779f3466966`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LawfulMonad.mk' (m : Type u → Type v) [Monad m]
    (id_map : ∀ {α} (x : m α), id <$> x = x)
    (pure_bind : ∀ {α β} (x : α) (f : α → m β), pure x >>= f = f x)
    (bind_assoc : ∀ {α β γ} (x : m α) (f : α → m β) (g : β → m γ),
      x >>= f >>= g = x >>= fun x => f x >>= g)
    (map_const : ∀ {α β} (x : α) (y : m β),
      Functor.mapConst x y = Function.const β x <$> y := by intros; rfl)
    (seqLeft_eq : ∀ {α β} (x : m α) (y : m β),
      x <* y = (x >>= fun a => y >>= fun _ => pure a) := by intros; rfl)
    (seqRight_eq : ∀ {α β} (x : m α) (y : m β), x *> y = (x >>= fun _ => y) := by intros; rfl)
    (bind_pure_comp : ∀ {α β} (f : α → β) (x : m α),
      x >>= (fun y => pure (f y)) = f <$> x := by intros; rfl)
    (bind_map : ∀ {α β} (f : m (α → β)) (x : m α), f >>= (. <$> x) = f <*> x := by intros; rfl)
    : LawfulMonad m :=
  have map_pure {α β} (g : α → β) (x : α) : g <$> (pure x : m α) = pure (g x) := by
    rw [← bind_pure_comp]; simp [pure_bind]
  { id_map, bind_pure_comp, bind_map, pure_bind, bind_assoc, map_pure,
    comp_map := by simp [← bind_pure_comp, bind_assoc, pure_bind]
    pure_seq := by intros; rw [← bind_map]; simp [pure_bind]
    seq_pure := by intros; rw [← bind_map]; simp [map_pure, bind_pure_comp]
    seq_assoc := by simp [← bind_pure_comp, ← bind_map, bind_assoc, pure_bind]
    map_const := funext fun x => funext (map_const x)
    seqLeft_eq := by simp [seqLeft_eq, ← bind_map, ← bind_pure_comp, pure_bind, bind_assoc]
    seqRight_eq := fun x y => by
      rw [seqRight_eq, ← bind_map, ← bind_pure_comp, bind_assoc]; simp [pure_bind, id_map] }

/-! # Id -/

namespace Id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6479972dd53301013629f0e4fad0e8e908216bb8a6da98192575d1fa1f70d6b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6479972dd53301013629f0e4fad0e8e908216bb8a6da98192575d1fa1f70d6b4.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96a1b06047a73bf0dc4a02e114301c9e33adec2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
