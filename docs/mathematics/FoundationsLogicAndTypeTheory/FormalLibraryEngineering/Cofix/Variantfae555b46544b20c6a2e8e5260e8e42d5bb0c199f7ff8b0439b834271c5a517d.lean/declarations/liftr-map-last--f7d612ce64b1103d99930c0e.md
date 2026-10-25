# liftR_map_last

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "781048609589e8b637ca09908bfae93fa10a33e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 390,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27ce8d89-9859-4e43-60ce-c8080fb1b056",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb7b7cbf-d4e6-6394-65c8-6eafad08c0dd",
  "kind": "theorem",
  "lexical_name": "liftR_map_last",
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
  "slug": "liftr-map-last--f7d612ce64b1103d99930c0e",
  "source": {
    "blob": "781048609589e8b637ca09908bfae93fa10a33e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 390,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7d612ce64b1103d99930c0eda51e0ac561805fcf582824f66d8941cf5528446",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb7b7cbf-d4e6-6394-65c8-6eafad08c0dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftR_map_last [lawful: LawfulMvFunctor F]
    {α : TypeVec n} {ι ι'} (R : ι' → ι' → Prop)
    (x : F (α ::: ι)) (f g : ι → ι') (hh : ∀ x : ι, R (f x) (g x)) :
    LiftR' (RelLast' _ R) ((id ::: f) <$$> x) ((id ::: g) <$$> x) :=
  let h : ι → { x : ι' × ι' // uncurry R x } := fun x => ⟨(f x, g x), hh x⟩
  let b : (α ::: ι) ⟹ _ := @diagSub n α ::: h
  let c :
    (Subtype_ α.repeatEq ::: { x // uncurry R x }) ⟹
      ((fun i : Fin2 n => { x // ofRepeat (α.RelLast' R i.fs x) }) ::: Subtype (uncurry R)) :=
    ofSubtype _ ::: id
  have hh :
    subtypeVal _ ⊚ toSubtype _ ⊚ fromAppend1DropLast ⊚ c ⊚ b =
      ((id ::: f) ⊗' (id ::: g)) ⊚ prod.diag := by
    dsimp
    apply eq_of_drop_last_eq
    · dsimp
      simp only [prod_map_id, dropFun_prod, dropFun_appendFun, dropFun_diag, id_comp,
        dropFun_toSubtype]
      erw [toSubtype_of_subtype_assoc, id_comp]
      clear liftR_map_last q mvf lawful F x R f g hh h b c
      ext (i x) : 2
      induction i with
      | fz => rfl
      | fs _ ih =>
        apply ih
    simp only [lastFun_from_append1_drop_last, lastFun_toSubtype, lastFun_appendFun,
      lastFun_subtypeVal, comp.left_id, lastFun_comp, lastFun_prod]
    ext1
    rfl
  liftR_map _ _ _ _ (toSubtype _ ⊚ fromAppend1DropLast ⊚ c ⊚ b) hh
#align mvqpf.liftr_map_last MvQPF.liftR_map_last

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `781048609589e8b637ca09908bfae93fa10a33e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
