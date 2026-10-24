# uniformContinuous_of_tendsto_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19f2ebd7d1069acb49ff5a0586dc631204f30576",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b225b0d4047d42bc231d6efb8aa28efff55a2c48f5c499709a8ef862caa08e98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81834638-5e5f-6d3a-cc36-b601a692575e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:986d86c0-edc5-c447-30ab-ed74fa685e0a",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_of_tendsto_one",
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
  "slug": "uniformcontinuous-of-tendsto-one--78e8962c172095b1da7b906a",
  "source": {
    "blob": "19f2ebd7d1069acb49ff5a0586dc631204f30576",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 378,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variantb225b0d4047d42bc231d6efb8aa28efff55a2c48f5c499709a8ef862caa08e98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78e8962c172095b1da7b906a31a6e9f4f038918c6bb3fb71d50aea26e7074f69",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variantb225b0d4047d42bc231d6efb8aa28efff55a2c48f5c499709a8ef862caa08e98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:986d86c0-edc5-c447-30ab-ed74fa685e0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuous_of_tendsto_one {hom : Type*} [UniformSpace β] [Group β] [UniformGroup β]
    [MonoidHomClass hom α β] {f : hom} (h : Tendsto f (𝓝 1) (𝓝 1)) : UniformContinuous f := by
  have :
    ((fun x : β × β => x.2 / x.1) ∘ fun x : α × α => (f x.1, f x.2)) = fun x : α × α =>
      f (x.2 / x.1) := by ext; simp only [Function.comp_apply, map_div]
  rw [UniformContinuous, uniformity_eq_comap_nhds_one α, uniformity_eq_comap_nhds_one β,
    tendsto_comap_iff, this]
  exact Tendsto.comp h tendsto_comap
#align uniform_continuous_of_tendsto_one uniformContinuous_of_tendsto_one
#align uniform_continuous_of_tendsto_zero uniformContinuous_of_tendsto_zero

/-- A group homomorphism (a bundled morphism of a type that implements `MonoidHomClass`) between
two uniform groups is uniformly continuous provided that it is continuous at one. See also
`continuous_of_continuousAt_one`. -/
@[to_additive "An additive group homomorphism (a bundled morphism of a type that implements
`AddMonoidHomClass`) between two uniform additive groups is uniformly continuous provided that it
is continuous at zero. See also `continuous_of_continuousAt_zero`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variantb225b0d4047d42bc231d6efb8aa28efff55a2c48f5c499709a8ef862caa08e98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variantb225b0d4047d42bc231d6efb8aa28efff55a2c48f5c499709a8ef862caa08e98.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19f2ebd7d1069acb49ff5a0586dc631204f30576` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
