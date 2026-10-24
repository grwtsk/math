# comap_conGen_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53640fe3-3641-5253-41a7-e325d3b6000f",
  "kind": "theorem",
  "lexical_name": "comap_conGen_equiv",
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
  "slug": "comap-congen-equiv--876c022d4548f070be532f22",
  "source": {
    "blob": "1d5e7e78a84506c535b66aa9c75cf419fdf49c59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 95,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:876c022d4548f070be532f22913b7d1f7781b6cf48e43b3d5386332b3f785cc4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53640fe3-3641-5253-41a7-e325d3b6000f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_conGen_equiv {M N : Type*} [Mul M] [Mul N] (f : MulEquiv M N) (rel : N → N → Prop) :
    Con.comap f (map_mul f) (conGen rel) = conGen (fun x y ↦ rel (f x) (f y)) := by
  apply le_antisymm _ (le_comap_conGen f (map_mul f) rel)
  intro a b h
  simp only [Con.comap_rel] at h
  have H : ∀ n1 n2, (conGen rel) n1 n2 → ∀ a b, f a = n1 → f b = n2 →
      (conGen fun x y ↦ rel (f x) (f y)) a b := by
    intro n1 n2 h
    induction h with
    | of x y h =>
      intro _ _ fa fb
      apply ConGen.Rel.of
      rwa [fa, fb]
    | refl x =>
      intro _ _ fc fd
      rw [f.injective (fc.trans fd.symm)]
      exact ConGen.Rel.refl _
    | symm _ h => exact fun a b fs fb ↦ ConGen.Rel.symm (h b a fb fs)
    | trans _ _ ih ih1 =>
      exact fun a b fa fb ↦ Exists.casesOn (f.surjective _) fun c' hc' ↦
      ConGen.Rel.trans (ih a c' fa hc') (ih1 c' b hc' fb)
    | mul _ _ ih ih1 =>
      rename_i w x y z _ _
      intro a b fa fb
      rw [← f.eq_symm_apply, map_mul] at fa fb
      rw [fa, fb]
      exact ConGen.Rel.mul (ih (f.symm w) (f.symm x) (by simp) (by simp))
        (ih1 (f.symm y) (f.symm z) (by simp) (by simp))
  exact H (f a) (f b) h a b (refl _) (refl _)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d5e7e78a84506c535b66aa9c75cf419fdf49c59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
