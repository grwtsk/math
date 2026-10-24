# interUnionPullbackConeLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c46998ef261077d2f3f08406e28852e0f650b933c6ab82e3a0bc8090ff3b025",
  "kind": "def",
  "lexical_name": "interUnionPullbackConeLift",
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
  "slug": "interunionpullbackconelift--2351d74ff711cc20ec5bb5a8",
  "source": {
    "blob": "ba4abd957280c5affa78d35a2334338f5696bb48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 329,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2351d74ff711cc20ec5bb5a851b1178a5ce56cd4eeafb4a6105683a0bee30a96",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c46998ef261077d2f3f08406e28852e0f650b933c6ab82e3a0bc8090ff3b025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def interUnionPullbackConeLift : s.pt ⟶ F.1.obj (op (U ⊔ V)) := by
  let ι : ULift.{w} WalkingPair → Opens X := fun j => WalkingPair.casesOn j.down U V
  have hι : U ⊔ V = iSup ι := by
    ext
    rw [Opens.coe_iSup, Set.mem_iUnion]
    constructor
    · rintro (h | h)
      exacts [⟨⟨WalkingPair.left⟩, h⟩, ⟨⟨WalkingPair.right⟩, h⟩]
    · rintro ⟨⟨_ | _⟩, h⟩
      exacts [Or.inl h, Or.inr h]
  refine
    (F.presheaf.isSheaf_iff_isSheafPairwiseIntersections.mp F.2 ι).some.lift
        ⟨s.pt,
          { app := ?_
            naturality := ?_ }⟩ ≫
      F.1.map (eqToHom hι).op
  · rintro ((_ | _) | (_ | _))
    exacts [s.fst, s.snd, s.fst ≫ F.1.map (homOfLE inf_le_left).op,
      s.snd ≫ F.1.map (homOfLE inf_le_left).op]
  rintro ⟨i⟩ ⟨j⟩ f
  let g : j ⟶ i := f.unop
  have : f = g.op := rfl
  clear_value g
  subst this
  rcases i with (⟨⟨_ | _⟩⟩ | ⟨⟨_ | _⟩, ⟨_⟩⟩) <;>
  rcases j with (⟨⟨_ | _⟩⟩ | ⟨⟨_ | _⟩, ⟨_⟩⟩) <;>
  rcases g with ⟨⟩ <;>
  dsimp [Pairwise.diagram] <;>
  simp only [ι, Category.id_comp, s.condition, CategoryTheory.Functor.map_id, Category.comp_id]
  rw [← cancel_mono (F.1.map (eqToHom <| inf_comm U V : U ⊓ V ⟶ _).op), Category.assoc,
    Category.assoc, ← F.1.map_comp, ← F.1.map_comp]
  exact s.condition.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba4abd957280c5affa78d35a2334338f5696bb48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
