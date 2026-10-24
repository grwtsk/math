# isSheaf_of_sep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86e49362-a679-8423-a861-a575bf4fe3c8",
  "kind": "theorem",
  "lexical_name": "isSheaf_of_sep",
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
  "slug": "issheaf-of-sep--0e31fae2be906410c253f5ec",
  "source": {
    "blob": "28e95da6a06ff99d63e4c22b6915d8b841b934e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 428,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e31fae2be906410c253f5ecb462188d55837b646d4e8897e60e9e10d740f562",
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

Occurrence: `result:86e49362-a679-8423-a861-a575bf4fe3c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_of_sep (P : Cᵒᵖ ⥤ D)
    (hsep :
      ∀ (X : C) (S : J.Cover X) (x y : P.obj (op X)),
        (∀ I : S.Arrow, P.map I.f.op x = P.map I.f.op y) → x = y) :
    Presheaf.IsSheaf J (J.plusObj P) := by
  rw [Presheaf.isSheaf_iff_multiequalizer]
  intro X S
  apply @isIso_of_reflects_iso _ _ _ _ _ _ _ (forget D) ?_
  rw [isIso_iff_bijective]
  constructor
  · intro x y h
    apply sep P S _ _
    intro I
    apply_fun Meq.equiv _ _ at h
    apply_fun fun e => e I at h
    convert h <;> erw [Meq.equiv_apply, ← comp_apply, Multiequalizer.lift_ι] <;> rfl
  · rintro (x : (multiequalizer (S.index _) : D))
    obtain ⟨t, ht⟩ := exists_of_sep P hsep X S (Meq.equiv _ _ x)
    use t
    apply (Meq.equiv _ _).injective
    rw [← ht]
    ext i
    dsimp
    erw [← comp_apply]
    rw [Multiequalizer.lift_ι]
    rfl
#align category_theory.grothendieck_topology.plus.is_sheaf_of_sep CategoryTheory.GrothendieckTopology.Plus.isSheaf_of_sep

variable (J)

/-- `P⁺⁺` is always a sheaf. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28e95da6a06ff99d63e4c22b6915d8b841b934e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
