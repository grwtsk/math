# toNerve₂.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e824dadfad76cb70459b8b482c37ad831d1edadc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e6def35-e80b-d49f-95f3-067e806e6ed5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:498a3400-1858-21a1-2843-5563e98a2cd9",
  "kind": "theorem",
  "lexical_name": "toNerve₂.ext",
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
  "slug": "tonerve-ext--55cad4a33517c4c7b2b5e61c",
  "source": {
    "blob": "e824dadfad76cb70459b8b482c37ad831d1edadc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 296,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55cad4a33517c4c7b2b5e61ca3943b42089eaeb45400dfb85c34d948b6d7da76",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:498a3400-1858-21a1-2843-5563e98a2cd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toNerve₂.ext (F G : X ⟶ nerveFunctor₂.obj (Cat.of C))
    (hyp : SSet.oneTruncation₂.map F = SSet.oneTruncation₂.map G) : F = G := by
  have eq₀ (x : X _⦋0⦌₂) : F.app (op ⦋0⦌₂) x = G.app (op ⦋0⦌₂) x := congr(($hyp).obj x)
  have eq₁ (x : X _⦋1⦌₂) : F.app (op ⦋1⦌₂) x = G.app (op ⦋1⦌₂) x :=
    congr((($hyp).map ⟨x, rfl, rfl⟩).1)
  ext ⟨⟨n, hn⟩⟩ x
  induction' n using SimplexCategory.rec with n
  match n with
  | 0 => apply eq₀
  | 1 => apply eq₁
  | 2 =>
    apply Functor.hext (fun i : Fin 3 => ?_) (fun (i j : Fin 3) k => ?_)
    · let pt : ⦋0⦌₂ ⟶ ⦋2⦌₂ := SimplexCategory.const _ _ i
      refine congr(($(congr_fun (F.naturality pt.op) x)).obj 0).symm.trans ?_
      refine .trans ?_ congr(($(congr_fun (G.naturality pt.op) x)).obj 0)
      exact congr($(eq₀ _).obj 0)
    · let ar : ⦋1⦌₂ ⟶ ⦋2⦌₂ := mkOfLe _ _ k.le
      have h1 := congr_arg_heq (fun x => x.map' 0 1) (congr_fun (F.naturality (op ar)) x)
      have h2 := congr_arg_heq (fun x => x.map' 0 1) (congr_fun (G.naturality (op ar)) x)
      exact h1.symm.trans <| .trans (congr_arg_heq (fun x => x.map' 0 1) (eq₁ _)) h2

/-- The components of the 2-truncated nerve adjunction unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e824dadfad76cb70459b8b482c37ad831d1edadc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
