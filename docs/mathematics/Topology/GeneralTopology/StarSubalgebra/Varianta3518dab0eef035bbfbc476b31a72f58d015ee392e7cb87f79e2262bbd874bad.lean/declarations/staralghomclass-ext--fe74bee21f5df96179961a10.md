# starAlgHomClass_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18b70958a493a27b1a986e1a6120edc1f21c6484",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64a9ef33-8529-145f-6a1a-48f874eaaf0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32781f42-f4b9-e494-63fc-92ba7613ebdd",
  "kind": "theorem",
  "lexical_name": "starAlgHomClass_ext",
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
  "slug": "staralghomclass-ext--fe74bee21f5df96179961a10",
  "source": {
    "blob": "18b70958a493a27b1a986e1a6120edc1f21c6484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe74bee21f5df96179961a1029b957efacf8013f995199292331b5140b49236c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32781f42-f4b9-e494-63fc-92ba7613ebdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem starAlgHomClass_ext [T2Space B] {F : Type*} {a : A}
    [StarAlgHomClass F R (elementalStarAlgebra R a) B] {φ ψ : F} (hφ : Continuous φ)
    (hψ : Continuous ψ) (h : φ ⟨a, self_mem R a⟩ = ψ ⟨a, self_mem R a⟩) : φ = ψ := by
  refine StarAlgHomClass.ext_topologicalClosure hφ hψ fun x => ?_
  apply adjoin_induction' x ?_ ?_ ?_ ?_ ?_
  exacts [fun y hy => by simpa only [Set.mem_singleton_iff.mp hy] using h, fun r => by
    simp only [AlgHomClass.commutes], fun x y hx hy => by simp only [map_add, hx, hy],
    fun x y hx hy => by simp only [map_mul, hx, hy], fun x hx => by simp only [map_star, hx]]
#align elemental_star_algebra.star_alg_hom_class_ext elementalStarAlgebra.starAlgHomClass_ext

end elementalStarAlgebra

end Elemental
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18b70958a493a27b1a986e1a6120edc1f21c6484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
