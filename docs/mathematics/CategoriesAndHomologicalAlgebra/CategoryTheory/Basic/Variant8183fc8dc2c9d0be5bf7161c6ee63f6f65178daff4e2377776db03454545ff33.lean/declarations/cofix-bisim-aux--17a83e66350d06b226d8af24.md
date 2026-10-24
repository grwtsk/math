# Cofix.bisim_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "065a04c4fa94da2b259b9d65e453a60767f38bd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 431,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2aaf519-6dc3-0592-7278-36d1fe60f8e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:193acad7-25a1-83dd-1c2c-062791872841",
  "kind": "theorem",
  "lexical_name": "Cofix.bisim_aux",
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
  "slug": "cofix-bisim-aux--17a83e66350d06b226d8af24",
  "source": {
    "blob": "065a04c4fa94da2b259b9d65e453a60767f38bd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 431,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17a83e66350d06b226d8af24022c0f36b3c2baae30ae4f967957cb25806b727b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:193acad7-25a1-83dd-1c2c-062791872841`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem Cofix.bisim_aux (r : Cofix F → Cofix F → Prop) (h' : ∀ x, r x x)
    (h : ∀ x y, r x y → Quot.mk r <$> Cofix.dest x = Quot.mk r <$> Cofix.dest y) :
    ∀ x y, r x y → x = y := by
  intro x
  apply Quot.inductionOn (motive := _) x
  clear x
  intro x y
  apply Quot.inductionOn (motive := _) y
  clear y
  intro y rxy
  apply Quot.sound
  let r' x y := r (Quot.mk _ x) (Quot.mk _ y)
  have : IsPrecongr r' := by
    intro a b r'ab
    have h₀ :
      Quot.mk r <$> Quot.mk Mcongr <$> abs (PFunctor.M.dest a) =
        Quot.mk r <$> Quot.mk Mcongr <$> abs (PFunctor.M.dest b) :=
      h _ _ r'ab
    have h₁ : ∀ u v : q.P.M, Mcongr u v → Quot.mk r' u = Quot.mk r' v := by
      intro u v cuv
      apply Quot.sound
      simp only
      rw [Quot.sound cuv]
      apply h'
    let f : Quot r → Quot r' :=
      Quot.lift (Quot.lift (Quot.mk r') h₁)
        (by
          intro c; apply Quot.inductionOn (motive := _) c; clear c
          intro c d; apply Quot.inductionOn (motive := _) d; clear d
          intro d rcd; apply Quot.sound; apply rcd)
    have : f ∘ Quot.mk r ∘ Quot.mk Mcongr = Quot.mk r' := rfl
    rw [← this, PFunctor.comp_map _ _ f, PFunctor.comp_map _ _ (Quot.mk r), abs_map, abs_map,
      abs_map, h₀]
    rw [PFunctor.comp_map _ _ f, PFunctor.comp_map _ _ (Quot.mk r), abs_map, abs_map, abs_map]
  refine' ⟨r', this, rxy⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `065a04c4fa94da2b259b9d65e453a60767f38bd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
