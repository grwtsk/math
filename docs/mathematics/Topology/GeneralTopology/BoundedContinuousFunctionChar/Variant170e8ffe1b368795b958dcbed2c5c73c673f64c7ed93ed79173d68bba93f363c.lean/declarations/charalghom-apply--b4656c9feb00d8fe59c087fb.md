# charAlgHom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4347c6da611cf6886e8db342774a4e53785b32f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15ed077a-849a-9536-954e-4d3c2f3a2fbe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30033e51-fa5d-b7cd-0b7a-7636ade7c207",
  "kind": "lemma",
  "lexical_name": "charAlgHom_apply",
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
  "slug": "charalghom-apply--b4656c9feb00d8fe59c087fb",
  "source": {
    "blob": "4347c6da611cf6886e8db342774a4e53785b32f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4656c9feb00d8fe59c087fb875a1e25f7e41a6b2caaee00959a7122bfda2cb0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30033e51-fa5d-b7cd-0b7a-7636ade7c207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charAlgHom_apply (w : AddMonoidAlgebra ℂ W) (v : V) :
    charAlgHom he hL w v = ∑ a ∈ w.support, w a * (e (L v a) : ℂ) := by
  simp only [charAlgHom, AddMonoidAlgebra.lift_apply]
  rw [Finsupp.sum_of_support_subset w subset_rfl]
  · simp only [coe_sum, coe_smul, charMonoidHom_apply, smul_eq_mul, Finset.sum_apply]
    rfl
  · simp

/-- The family of `ℂ`-linear combinations of `char he hL w, w : W`, is closed under `star`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant170e8ffe1b368795b958dcbed2c5c73c673f64c7ed93ed79173d68bba93f363c.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4347c6da611cf6886e8db342774a4e53785b32f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
