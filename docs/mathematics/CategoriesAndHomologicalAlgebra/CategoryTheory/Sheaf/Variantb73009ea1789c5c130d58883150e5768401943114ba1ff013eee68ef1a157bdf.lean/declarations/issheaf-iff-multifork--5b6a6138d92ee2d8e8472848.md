# isSheaf_iff_multifork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c79828ac-970d-0508-8282-0128351b5a75",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_multifork",
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
  "slug": "issheaf-iff-multifork--5b6a6138d92ee2d8e8472848",
  "source": {
    "blob": "c26bbcbef902255c66f545f981ef9e8978922068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 559,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b6a6138d92ee2d8e8472848f0523f52c48b15d72982c1b4e1a66d25b7631b09",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c79828ac-970d-0508-8282-0128351b5a75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_multifork :
    IsSheaf J P ↔ ∀ (X : C) (S : J.Cover X), Nonempty (IsLimit (S.multifork P)) := by
  refine ⟨fun hP X S => ⟨isLimitOfIsSheaf _ _ _ hP⟩, ?_⟩
  intro h E X S hS x hx
  let T : J.Cover X := ⟨S, hS⟩
  obtain ⟨hh⟩ := h _ T
  let K : Multifork (T.index P) := Multifork.ofι _ E (fun I => x I.f I.hf)
    (fun I => hx _ _ _ _ I.r.w)
  use hh.lift K
  dsimp; constructor
  · intro Y f hf
    apply hh.fac K (WalkingMulticospan.left ⟨Y, f, hf⟩)
  · intro e he
    apply hh.uniq K
    rintro (a | b)
    · apply he
    · rw [← K.w (WalkingMulticospan.Hom.fst b), ←
        (T.multifork P).w (WalkingMulticospan.Hom.fst b), ← assoc]
      congr 1
      apply he

variable {J P} in
/-- If `F : Cᵒᵖ ⥤ A` is a sheaf for a Grothendieck topology `J` on `C`,
and `S` is a cover of `X : C`, then the multifork `S.multifork F` is limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26bbcbef902255c66f545f981ef9e8978922068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
