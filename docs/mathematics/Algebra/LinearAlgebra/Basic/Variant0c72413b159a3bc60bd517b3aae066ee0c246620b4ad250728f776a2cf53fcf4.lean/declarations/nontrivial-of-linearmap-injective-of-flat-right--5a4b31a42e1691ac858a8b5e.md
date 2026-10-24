# nontrivial_of_linearMap_injective_of_flat_right

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
      "line": 466,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a644de0-3e11-f9a9-2639-cb5e387a6657",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e697d69-cae7-59c4-a94a-73af79c1a720",
  "kind": "theorem",
  "lexical_name": "nontrivial_of_linearMap_injective_of_flat_right",
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
  "slug": "nontrivial-of-linearmap-injective-of-flat-right--5a4b31a42e1691ac858a8b5e",
  "source": {
    "blob": "a596ea3cb58f0c246a49e1f4b46a8ef282703014",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 466,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a4b31a42e1691ac858a8b5eca9d1a8dc3e5bac800b3ba9ad4c0baecc4c13d5e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e697d69-cae7-59c4-a94a-73af79c1a720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_of_linearMap_injective_of_flat_right (f : R →ₗ[R] M) (h : Function.Injective f)
    [Module.Flat R N] [Nontrivial N] : Nontrivial (M ⊗[R] N) :=
  Module.Flat.rTensor_preserves_injective_linearMap (M := N) f h |>.comp
    (TensorProduct.lid R N).symm.injective |>.nontrivial

variable {R M N}
variable {P Q : Type*} [AddCommMonoid P] [Module R P] [AddCommMonoid Q] [Module R Q]

/-- Tensor product of injective maps are injective under some flatness conditions.
Also see `TensorProduct.map_injective_of_flat_flat'` and
`TensorProduct.map_injective_of_flat_flat_of_isDomain` for different flatness conditions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a596ea3cb58f0c246a49e1f4b46a8ef282703014` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
