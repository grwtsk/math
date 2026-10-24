# pseudo_exact_of_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bd508d07b5808a2aa284f679425a46b1be2f01d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:651348e6-b59e-54dd-3275-bcf1acbac336",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ac66e3f-90a5-9f37-0076-0434df19784b",
  "kind": "theorem",
  "lexical_name": "pseudo_exact_of_exact",
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
  "slug": "pseudo-exact-of-exact--03a788ade4c1612e6d9b4113",
  "source": {
    "blob": "2bd508d07b5808a2aa284f679425a46b1be2f01d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 359,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03a788ade4c1612e6d9b4113c88c1e477349065de012d925586176c82c9a5c7f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ac66e3f-90a5-9f37-0076-0434df19784b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pseudo_exact_of_exact {P Q R : C} {f : P ⟶ Q} {g : Q ⟶ R} (h : Exact f g) :
    (∀ a, g (f a) = 0) ∧ ∀ b, g b = 0 → ∃ a, f a = b :=
  ⟨fun a => by
    rw [← comp_apply, h.w]
    exact zero_apply _ _, fun b' =>
    Quotient.inductionOn b' fun b hb => by
      have hb' : b.hom ≫ g = 0 := (pseudoZero_iff _).1 hb
      -- By exactness, `b` factors through `im f = ker g` via some `c`.
      obtain ⟨c, hc⟩ := KernelFork.IsLimit.lift' (isLimitImage f g h) _ hb'
      -- We compute the pullback of the map into the image and `c`.
      -- The pseudoelement induced by the first pullback map will be our preimage.
      use (pullback.fst : pullback (Abelian.factorThruImage f) c ⟶ P)
      -- It remains to show that the image of this element under `f` is pseudo-equal to `b`.
      apply Quotient.sound
      -- `pullback.snd` is an epimorphism because the map onto the image is!
      refine'
        ⟨pullback (Abelian.factorThruImage f) c, 𝟙 _, pullback.snd, inferInstance, inferInstance, _⟩
      -- Now we can verify that the diagram commutes.
      calc
        𝟙 (pullback (Abelian.factorThruImage f) c) ≫ pullback.fst ≫ f = pullback.fst ≫ f :=
          Category.id_comp _
        _ = pullback.fst ≫ Abelian.factorThruImage f ≫ kernel.ι (cokernel.π f) := by
          rw [Abelian.image.fac]
        _ = (pullback.snd ≫ c) ≫ kernel.ι (cokernel.π f) := by
          rw [← Category.assoc, pullback.condition]
        _ = pullback.snd ≫ b.hom := by
          rw [Category.assoc]
          congr
        ⟩
#align category_theory.abelian.pseudoelement.pseudo_exact_of_exact CategoryTheory.Abelian.Pseudoelement.pseudo_exact_of_exact

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bd508d07b5808a2aa284f679425a46b1be2f01d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
