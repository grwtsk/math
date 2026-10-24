# selfProdTermIncl_fib_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37f5ba335107f31df8a5f24f6b727f3a94be0cab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb27128a-8473-2736-e82b-d7dd788f209b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:917e74e2-c35d-23c8-bdc0-d8c690d72aa8",
  "kind": "lemma",
  "lexical_name": "selfProdTermIncl_fib_eq",
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
  "slug": "selfprodtermincl-fib-eq--6f206f115620fe2ed03da981",
  "source": {
    "blob": "37f5ba335107f31df8a5f24f6b727f3a94be0cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 248,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f206f115620fe2ed03da9817bd5e41a56b33c2dbca9e7cde5811a95a1a0e62d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:917e74e2-c35d-23c8-bdc0-d8c690d72aa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma selfProdTermIncl_fib_eq (b : F.obj A) :
    F.map u b = F.map (selfProdPermIncl h b) a := by
  apply Concrete.Pi.map_ext _ F
  intro (t : F.obj X)
  convert_to F.map (selfProdProj u t) b = _
  · simp only [selfProdProj, map_comp, FintypeCat.comp_apply]; rfl
  · dsimp only [selfProdPermIncl, Pi.whiskerEquiv]
    rw [map_comp, FintypeCat.comp_apply, h]
    convert_to F.map (selfProdProj u t) b =
      (F.map (Pi.map' (fiberPerm h b) fun _ ↦ 𝟙 X) ≫
      F.map (Pi.π (fun _ ↦ X) t)) (mkSelfProdFib F X)
    rw [← map_comp, Pi.map'_comp_π, Category.comp_id, mkSelfProdFib_map_π F X (fiberPerm h b t)]
    rfl

/-- There exists an automorphism `f` of `A` that maps `b` to `a`.
`f` is obtained by considering `u` and `selfProdPermIncl h b`.
Both are inclusions of `A` into `selfProd F X` mapping `b` respectively `a` to the same element
in the fiber of `selfProd F X`. Applying `connected_component_unique` yields the result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37f5ba335107f31df8a5f24f6b727f3a94be0cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
