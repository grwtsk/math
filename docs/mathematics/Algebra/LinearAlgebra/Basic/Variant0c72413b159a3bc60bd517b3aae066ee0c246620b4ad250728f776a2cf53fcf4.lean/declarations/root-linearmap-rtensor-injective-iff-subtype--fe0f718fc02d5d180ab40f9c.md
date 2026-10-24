# _root_.LinearMap.rTensor_injective_iff_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a596ea3cb58f0c246a49e1f4b46a8ef282703014",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aeb0492c-7a43-7d43-1eb3-4c7692e2c623",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69d510d9-31aa-be08-99d1-5c3ab088f7f3",
  "kind": "lemma",
  "lexical_name": "_root_.LinearMap.rTensor_injective_iff_subtype",
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
  "slug": "root-linearmap-rtensor-injective-iff-subtype--fe0f718fc02d5d180ab40f9c",
  "source": {
    "blob": "a596ea3cb58f0c246a49e1f4b46a8ef282703014",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 98,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe0f718fc02d5d180ab40f9c97fbd43ed57fb6a26d8266d08e7c63b5d9a530c5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69d510d9-31aa-be08-99d1-5c3ab088f7f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.LinearMap.rTensor_injective_iff_subtype {f : N →ₗ[R] P} (hf : Function.Injective f)
    (e : P ≃ₗ[R] Q) : Function.Injective (f.rTensor M) ↔
      Function.Injective ((range <| e.toLinearMap ∘ₗ f).subtype.rTensor M) := by
  simp_rw [← EquivLike.injective_comp <| (LinearEquiv.ofInjective (e.toLinearMap ∘ₗ f)
    (e.injective.comp hf)).rTensor M, ← EquivLike.comp_injective _ (e.rTensor M),
    ← LinearEquiv.coe_coe, ← coe_comp, LinearEquiv.coe_rTensor, ← rTensor_comp]
  rfl

variable (R M) in
/-- An `R`-module `M` is flat if for every finitely generated submodule `N` of every
finitely generated `R`-module `P` in the same universe as `R`,
the canonical map `N ⊗ M → P ⊗ M` is injective. This implies the same is true for
arbitrary `R`-modules `N` and `P` and injective linear maps `N →ₗ[R] P`, see
`Flat.rTensor_preserves_injective_linearMap`. To show a module over a ring `R` is flat, it
suffices to consider the case `P = R`, see `Flat.iff_rTensor_injective`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a596ea3cb58f0c246a49e1f4b46a8ef282703014` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
