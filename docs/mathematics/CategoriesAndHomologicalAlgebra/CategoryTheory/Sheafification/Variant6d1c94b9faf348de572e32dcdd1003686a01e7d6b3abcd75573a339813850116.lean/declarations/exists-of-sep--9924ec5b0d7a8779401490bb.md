# exists_of_sep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7408f78-280d-0aab-4c65-422d3c57dcee",
  "kind": "theorem",
  "lexical_name": "exists_of_sep",
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
  "slug": "exists-of-sep--9924ec5b0d7a8779401490bb",
  "source": {
    "blob": "28e95da6a06ff99d63e4c22b6915d8b841b934e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 373,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9924ec5b0d7a8779401490bbae503b40344e8dc33bbb707dac91b871777e3bd7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7408f78-280d-0aab-4c65-422d3c57dcee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_sep (P : Cᵒᵖ ⥤ D)
    (hsep :
      ∀ (X : C) (S : J.Cover X) (x y : P.obj (op X)),
        (∀ I : S.Arrow, P.map I.f.op x = P.map I.f.op y) → x = y)
    (X : C) (S : J.Cover X) (s : Meq (J.plusObj P) S) :
    ∃ t : (J.plusObj P).obj (op X), Meq.mk S t = s := by
  have inj : ∀ X : C, Function.Injective ((J.toPlus P).app (op X)) := inj_of_sep _ hsep
  -- Choose representatives for the given local sections.
  choose T t ht using fun I => exists_rep (s I)
  -- Construct a large cover over which we will define a representative that will
  -- provide the gluing of the given local sections.
  let B : J.Cover X := S.bind T
  choose Z e1 e2 he2 _ _ using fun I : B.Arrow => I.hf
  -- Construct a compatible system of local sections over this large cover, using the chosen
  -- representatives of our local sections.
  -- The compatibility here follows from the separatedness assumption.
  let w : Meq P B := meqOfSep P hsep X S s T t ht
  -- The associated gluing will be the candidate section.
  use mk w
  ext I
  dsimp [Meq.mk]
  erw [ht, res_mk_eq_mk_pullback]
  -- Use the separatedness of `P⁺` to prove that this is indeed a gluing of our
  -- original local sections.
  apply sep P (T I)
  intro II
  simp only [res_mk_eq_mk_pullback, eq_mk_iff_exists]
  -- It suffices to prove equality for representatives over a
  -- convenient sufficiently large cover...
  use (J.pullback II.f).obj (T I)
  let e0 : (J.pullback II.f).obj (T I) ⟶ (J.pullback II.f).obj ((J.pullback I.f).obj B) :=
    homOfLE
      (by
        intro Y f hf
        apply Sieve.le_pullback_bind _ _ _ I.hf
        · cases I
          exact hf)
  use e0, 𝟙 _
  ext IV
  let IA : B.Arrow := ⟨_, (IV.f ≫ II.f) ≫ I.f,
    ⟨I.Y, _, _, I.hf, Sieve.downward_closed _ II.hf _, rfl⟩⟩
  let IB : S.Arrow := IA.fromMiddle
  let IC : (T IB).Arrow := IA.toMiddle
  let ID : (T I).Arrow := ⟨IV.Y, IV.f ≫ II.f, Sieve.downward_closed (T I).sieve II.hf IV.f⟩
  change t IB IC = t I ID
  apply inj IV.Y
  erw [toPlus_apply (T I) (t I) ID, toPlus_apply (T IB) (t IB) IC, ← ht, ← ht]
  -- Conclude by constructing the relation showing equality...
  let IR : S.Relation := ⟨_, _, IV.Y, IC.f, ID.f, IB.f, I.f, IB.hf, I.hf, IA.middle_spec⟩
  exact s.condition IR
#align category_theory.grothendieck_topology.plus.exists_of_sep CategoryTheory.GrothendieckTopology.Plus.exists_of_sep

variable [ReflectsIsomorphisms (forget D)]

/-- If `P` is separated, then `P⁺` is a sheaf. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28e95da6a06ff99d63e4c22b6915d8b841b934e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
