# sub_of_eq_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "248660bd549f7491dab92069584e009c15a14d54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 397,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a937890b849529416c7704273296561475f0c8eee324e53504a225d33e72c60e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40bfd772-0ead-1856-15e2-60f9e5859814",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3deb65b8-9960-045c-3c85-4ebfe307fe07",
  "kind": "theorem",
  "lexical_name": "sub_of_eq_image",
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
  "slug": "sub-of-eq-image--6f71de0f78993b7c2185f7ca",
  "source": {
    "blob": "248660bd549f7491dab92069584e009c15a14d54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 397,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta937890b849529416c7704273296561475f0c8eee324e53504a225d33e72c60e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f71de0f78993b7c2185f7ca648e6d40a1bada2e098171044cf12258a45178af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta937890b849529416c7704273296561475f0c8eee324e53504a225d33e72c60e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3deb65b8-9960-045c-3c85-4ebfe307fe07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_of_eq_image {P Q : C} (f : P ⟶ Q) (x y : P) :
    f x = f y → ∃ z, f z = 0 ∧ ∀ (R : C) (g : P ⟶ R), (g : P ⟶ R) y = 0 → g z = g x :=
  Quotient.inductionOn₂ x y fun a a' h =>
    match Quotient.exact h with
    | ⟨R, p, q, ep, _, comm⟩ =>
      let a'' : R ⟶ P := (p ≫ a.hom : R ⟶ P) - (q ≫ a'.hom : R ⟶ P)
      ⟨a'',
        ⟨show ⟦(a'' ≫ f : Over Q)⟧ = ⟦↑(0 : Q ⟶ Q)⟧ by
            dsimp at comm
            simp [a'', sub_eq_zero.2 comm],
          fun Z g hh => by
          obtain ⟨X, p', q', ep', _, comm'⟩ := Quotient.exact hh
          have : a'.hom ≫ g = 0 := by
            apply (epi_iff_cancel_zero _).1 ep' _ (a'.hom ≫ g)
            simpa using comm'
          apply Quotient.sound
          -- Can we prevent quotient.sound from giving us this weird `coe_b` thingy?
          change app g (a'' : Over P) ≈ app g a
          exact ⟨R, 𝟙 R, p, inferInstance, ep, by simp [a'', sub_eq_add_neg, this]⟩⟩⟩

variable [Limits.HasPullbacks C]

set_option backward.isDefEq.respectTransparency false in
/-- If `f : P ⟶ R` and `g : Q ⟶ R` are morphisms and `p : P` and `q : Q` are pseudoelements such
that `f p = g q`, then there is some `s : pullback f g` such that `fst s = p` and `snd s = q`.

Remark: Borceux claims that `s` is unique, but this is false. See
`Counterexamples/Pseudoelement.lean` for details. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta937890b849529416c7704273296561475f0c8eee324e53504a225d33e72c60e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta937890b849529416c7704273296561475f0c8eee324e53504a225d33e72c60e.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `248660bd549f7491dab92069584e009c15a14d54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
