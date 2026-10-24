# starAlgHomClass_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0eae6084923863bda0d8148dbbc387fc62d092bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a993bb37ff1f645c3ce77532031fd9b83a2968afe9c6350ef73da707d14cd4d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:546275a2-3bb9-d734-b72b-129c601d5221",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a2343e1-d0b4-324e-fb51-baca16c1469b",
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
  "slug": "staralghomclass-ext--24cb22737c216ac84dc7bfdc",
  "source": {
    "blob": "0eae6084923863bda0d8148dbbc387fc62d092bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 267,
    "path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Varianta993bb37ff1f645c3ce77532031fd9b83a2968afe9c6350ef73da707d14cd4d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24cb22737c216ac84dc7bfdcdde6253526c383b8085ddfd56cb2d55216932400",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StarSubalgebra/Varianta993bb37ff1f645c3ce77532031fd9b83a2968afe9c6350ef73da707d14cd4d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a2343e1-d0b4-324e-fb51-baca16c1469b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem starAlgHomClass_ext [T2Space B] {F : Type*} {a : A}
    [FunLike F (elemental R a) B] [AlgHomClass F R _ B] [StarHomClass F _ B]
    {φ ψ : F} (hφ : Continuous φ)
    (hψ : Continuous ψ) (h : φ ⟨a, self_mem R a⟩ = ψ ⟨a, self_mem R a⟩) : φ = ψ := by
  refine StarAlgHomClass.ext_topologicalClosure hφ hψ fun x => ?_
  refine adjoin_induction_subtype x ?_ ?_ ?_ ?_ ?_
  exacts [fun y hy => by simpa only [Set.mem_singleton_iff.mp hy] using! h, fun r => by
    simp only [AlgHomClass.commutes], fun x y hx hy => by simp only [map_add, hx, hy],
    fun x y hx hy => by simp only [map_mul, hx, hy], fun x hx => by simp only [map_star, hx]]

end elemental

end StarAlgebra

end Elemental
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StarSubalgebra/Varianta993bb37ff1f645c3ce77532031fd9b83a2968afe9c6350ef73da707d14cd4d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StarSubalgebra/Varianta993bb37ff1f645c3ce77532031fd9b83a2968afe9c6350ef73da707d14cd4d0.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eae6084923863bda0d8148dbbc387fc62d092bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
