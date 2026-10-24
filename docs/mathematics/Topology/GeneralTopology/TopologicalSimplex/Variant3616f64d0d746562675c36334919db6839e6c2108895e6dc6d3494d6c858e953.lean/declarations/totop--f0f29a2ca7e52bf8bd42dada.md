# toTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10d2b5ed2dc0fef01bad85f2fda7462fbeabc291faad7d32209fbad13cf74ee1",
  "kind": "def",
  "lexical_name": "toTop",
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
  "slug": "totop--f0f29a2ca7e52bf8bd42dada",
  "source": {
    "blob": "13f1ac00dbe565cc2ac96f45d1ec9615b93cc5f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0f29a2ca7e52bf8bd42dada16a2b8fd606d9dc4551b1df4f4033432f26830cc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10d2b5ed2dc0fef01bad85f2fda7462fbeabc291faad7d32209fbad13cf74ee1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toTop : SimplexCategory ⥤ TopCat where
  obj x := TopCat.of x.toTopObj
  map f := ⟨toTopMap f, by continuity⟩
  map_id := by
    intro Δ
    ext f
    apply toTopObj.ext
    funext i
    change (Finset.univ.filter fun k => k = i).sum _ = _
    simp [Finset.sum_filter, CategoryTheory.id_apply]
  map_comp := fun f g => by
    ext h
    apply toTopObj.ext
    funext i
    dsimp
    rw [CategoryTheory.comp_apply, ContinuousMap.coe_mk, ContinuousMap.coe_mk, ContinuousMap.coe_mk]
    simp only [coe_toTopMap]
    erw [← Finset.sum_biUnion]
    · apply Finset.sum_congr
      · exact Finset.ext (fun j => ⟨fun hj => by simpa using hj, fun hj => by simpa using hj⟩)
      · tauto
    · intro j _ k _ h
      rw [Function.onFun, disjoint_iff_inf_le]
      intro e he
      simp only [Finset.bot_eq_empty, Finset.not_mem_empty]
      apply h
      simp only [Finset.mem_univ, forall_true_left,
        ge_iff_le, Finset.le_eq_subset, Finset.inf_eq_inter, Finset.mem_inter,
        Finset.mem_filter, true_and] at he
      rw [← he.1, he.2]
set_option linter.uppercaseLean3 false in
#align simplex_category.to_Top SimplexCategory.toTop

end SimplexCategory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13f1ac00dbe565cc2ac96f45d1ec9615b93cc5f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
