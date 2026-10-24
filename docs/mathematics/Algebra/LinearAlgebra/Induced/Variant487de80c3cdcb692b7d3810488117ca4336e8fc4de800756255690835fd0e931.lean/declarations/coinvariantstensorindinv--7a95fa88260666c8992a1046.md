# coinvariantsTensorIndInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:216f3acddd3f2f7e366c8345a7f6dcf248446339de2ef3e2c2bf3bdfceab1da4",
  "kind": "def",
  "lexical_name": "coinvariantsTensorIndInv",
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
  "slug": "coinvariantstensorindinv--7a95fa88260666c8992a1046",
  "source": {
    "blob": "111dea6307881f12dbfd4fc37e93f0f1a7d27032",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 214,
    "path": "GRWTSK/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a95fa88260666c8992a1046eddae3b96649604febf20e62ab54da47981ef1b4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:216f3acddd3f2f7e366c8345a7f6dcf248446339de2ef3e2c2bf3bdfceab1da4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coinvariantsTensorIndInv :
    ((coinvariantsTensor k G).obj A).obj (res φ B) ⟶
      ((coinvariantsTensor k H).obj (ind φ A)).obj B :=
  ModuleCat.ofHom <| Coinvariants.lift _ (TensorProduct.lift <|
    (coinvariantsTensorMk (ind (k := k) φ A) B) ∘ₗ IndV.mk _ _ 1) fun s ↦ by
    simp only [MonoidalCategory.curriedTensor_obj_obj, tensor_V, tensor_ρ, tprod_apply,
      MonoidHom.coe_comp, Function.comp_apply]
    ext x y
    simpa [Coinvariants.mk_eq_iff, coinvariantsTensorMk] using
      Coinvariants.mem_ker_of_eq (φ s) (IndV.mk φ A.ρ (1 : H) x ⊗ₜ[k] y) _ <| by
      simp [← Coinvariants.mk_inv_tmul]

set_option backward.defeqAttrib.useBackward true in
variable {A B} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `111dea6307881f12dbfd4fc37e93f0f1a7d27032` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
