# meqOfSep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0516cc96a19d2265dc5277bba42915e2fa426e556a501d559bf639ac1ea02e0",
  "kind": "def",
  "lexical_name": "meqOfSep",
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
  "slug": "meqofsep--a9738827a8a8b0d17bef11b1",
  "source": {
    "blob": "28e95da6a06ff99d63e4c22b6915d8b841b934e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 350,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9738827a8a8b0d17bef11b160c788428b51781b9f60d30bebbb56a8654e2172",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0516cc96a19d2265dc5277bba42915e2fa426e556a501d559bf639ac1ea02e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def meqOfSep (P : Cᵒᵖ ⥤ D)
    (hsep :
      ∀ (X : C) (S : J.Cover X) (x y : P.obj (op X)),
        (∀ I : S.Arrow, P.map I.f.op x = P.map I.f.op y) → x = y)
    (X : C) (S : J.Cover X) (s : Meq (J.plusObj P) S) (T : ∀ I : S.Arrow, J.Cover I.Y)
    (t : ∀ I : S.Arrow, Meq P (T I)) (ht : ∀ I : S.Arrow, s I = mk (t I)) : Meq P (S.bind T) where
  val I := t I.fromMiddle I.toMiddle
  property := by
    intro II
    apply inj_of_sep P hsep
    rw [← comp_apply, ← comp_apply, (J.toPlus P).naturality, (J.toPlus P).naturality, comp_apply,
      comp_apply]
    erw [toPlus_apply (T II.fst.fromMiddle) (t II.fst.fromMiddle) II.fst.toMiddle,
      toPlus_apply (T II.snd.fromMiddle) (t II.snd.fromMiddle) II.snd.toMiddle, ← ht, ← ht, ←
      comp_apply, ← comp_apply, ← (J.plusObj P).map_comp, ← (J.plusObj P).map_comp]
    rw [← op_comp, ← op_comp]
    let IR : S.Relation :=
      ⟨_, _, _, II.g₁ ≫ II.fst.toMiddleHom, II.g₂ ≫ II.snd.toMiddleHom, II.fst.fromMiddleHom,
        II.snd.fromMiddleHom, II.fst.from_middle_condition, II.snd.from_middle_condition, by
          simpa only [Category.assoc, II.fst.middle_spec, II.snd.middle_spec] using II.w⟩
    exact s.condition IR
#align category_theory.grothendieck_topology.plus.meq_of_sep CategoryTheory.GrothendieckTopology.Plus.meqOfSep

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28e95da6a06ff99d63e4c22b6915d8b841b934e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
