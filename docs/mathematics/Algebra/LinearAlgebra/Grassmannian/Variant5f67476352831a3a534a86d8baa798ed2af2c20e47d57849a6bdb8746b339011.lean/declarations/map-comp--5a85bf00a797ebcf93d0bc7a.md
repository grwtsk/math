# map_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e37872dda061df4cf00c39ea94c3dbc366d49a5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90037c6e-e79e-d3b6-5e16-251d8bd4b2a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d99c144-e129-ca45-a345-dc8c8a73389b",
  "kind": "theorem",
  "lexical_name": "map_comp",
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
  "slug": "map-comp--5a85bf00a797ebcf93d0bc7a",
  "source": {
    "blob": "e37872dda061df4cf00c39ea94c3dbc366d49a5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 154,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a85bf00a797ebcf93d0bc7a3d6c6f0f0db788b643144d3d5790fb39b2b95a84",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grassmannian/Variant5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d99c144-e129-ca45-a345-dc8c8a73389b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_comp (N : G(k, A ⊗[R] M; A)) :
    map (g.comp f) N = map g (map f N) := by
  algebraize [f.toRingHom, g.toRingHom, (g.comp f).toRingHom]
  -- FIXME: `algebraize` doesn't generate this instance, even though it seems like it should
  let : IsScalarTower A B C := by apply IsScalarTower.of_algebraMap_eq'; rfl
  let fAB := baseChangeMkQ B N.toSubmodule
  let fAC := baseChangeMkQ C N.toSubmodule
  let fBC := baseChangeMkQ C fAB.ker
  have hfAB : Function.Surjective fAB :=
    (LinearMap.baseChange_surjective B (Submodule.mkQ_surjective _)).comp
      (cancelBaseChange R A B B M).symm.surjective
  let e := (fAB.quotKerEquivOfSurjective hfAB).baseChange B C ≪≫ₗ
    cancelBaseChange A B C C (A ⊗[R] M ⧸ N.toSubmodule)
  ext x
  have hfAC_ker_eq : (map (g.comp f) N).toSubmodule = fAC.ker := map_toSubmodule (g.comp f) N
  have hfBC_ker_eq : (map g (map f N)).toSubmodule = fBC.ker := by
    rw [map_toSubmodule g (map f N), map_toSubmodule f N]
  have hcomp : fAC = e.toLinearMap.comp fBC := by
    apply LinearMap.ext
    intro z
    induction z using TensorProduct.inductionOn with
    | tmul c m =>
      simp only [fAC, fBC, e, baseChangeMkQ, LinearMap.comp_apply, cancelBaseChange_symm_tmul,
         LinearMap.baseChange_tmul, Submodule.mkQ_apply, LinearEquiv.coe_trans, LinearEquiv.coe_coe,
         LinearEquiv.coe_baseChange, LinearMap.quotKerEquivOfSurjective_apply_mk]
      simp [fAB, baseChangeMkQ]
    | add x y hx hy =>
      simp only [LinearMap.coe_comp, LinearEquiv.coe_coe, Function.comp_apply, map_add] at *
      rw [hx, hy]
  rw [hfAC_ker_eq, hfBC_ker_eq, hcomp, LinearEquiv.ker_comp]

/-- The Grassmannian functor sends an `R`-algebra `A` to `G(k, A ⊗[R] M; A)`. -/
@[expose, simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grassmannian/Variant5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e37872dda061df4cf00c39ea94c3dbc366d49a5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
