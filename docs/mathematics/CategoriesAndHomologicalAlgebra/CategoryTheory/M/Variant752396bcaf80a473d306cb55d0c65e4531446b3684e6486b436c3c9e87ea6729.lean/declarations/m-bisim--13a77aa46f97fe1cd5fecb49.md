# M.bisim₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "262d6118784c59493f44f05d67bb5c6d102535fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:388feae7-f08d-b543-60d1-336a4938149a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c41d155-2b17-2bcf-2117-e47b4025da35",
  "kind": "theorem",
  "lexical_name": "M.bisim₀",
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
  "slug": "m-bisim--13a77aa46f97fe1cd5fecb49",
  "source": {
    "blob": "262d6118784c59493f44f05d67bb5c6d102535fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 315,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13a77aa46f97fe1cd5fecb49de0ef5a55eaa02b80f7c3e1d2066e319bf9df9c8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c41d155-2b17-2bcf-2117-e47b4025da35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem M.bisim₀ {α : TypeVec n} (R : P.M α → P.M α → Prop) (h₀ : Equivalence R)
    (h : ∀ x y, R x y → (id ::: Quot.mk R) <$$> M.dest _ x = (id ::: Quot.mk R) <$$> M.dest _ y)
    (x y) (r : R x y) : x = y := by
  apply M.bisim P R _ _ _ r
  clear r x y
  introv Hr
  specialize h _ _ Hr
  clear Hr

  revert h
  rcases M.dest P x with ⟨ax, fx⟩
  rcases M.dest P y with ⟨ay, fy⟩
  intro h

  rw [map_eq, map_eq] at h
  injection h with h₀ h₁
  subst ay
  simp at h₁
  have Hdrop : dropFun fx = dropFun fy := by
    replace h₁ := congr_arg dropFun h₁
    simpa using h₁
  exists ax, dropFun fx, lastFun fx, lastFun fy
  rw [split_dropFun_lastFun, Hdrop, split_dropFun_lastFun]
  simp
  intro i
  replace h₁ := congr_fun (congr_fun h₁ Fin2.fz) i
  simp [(· ⊚ ·), appendFun, splitFun] at h₁
  replace h₁ := Quot.exact _ h₁
  rw [h₀.eqvGen_iff] at h₁
  exact h₁

set_option linter.uppercaseLean3 false in
#align mvpfunctor.M.bisim₀ MvPFunctor.M.bisim₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant752396bcaf80a473d306cb55d0c65e4531446b3684e6486b436c3c9e87ea6729.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `262d6118784c59493f44f05d67bb5c6d102535fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
