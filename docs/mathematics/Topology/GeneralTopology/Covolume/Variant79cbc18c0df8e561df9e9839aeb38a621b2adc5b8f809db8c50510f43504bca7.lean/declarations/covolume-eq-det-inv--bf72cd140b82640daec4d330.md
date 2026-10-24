# covolume_eq_det_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7810ba00e80e2e69c5122f174733290d8d03c1c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0188b73b-ba71-eab9-1553-811e8af7fa4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2edd143-59ea-8e1e-5a01-7ad495b613c1",
  "kind": "theorem",
  "lexical_name": "covolume_eq_det_inv",
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
  "slug": "covolume-eq-det-inv--bf72cd140b82640daec4d330",
  "source": {
    "blob": "7810ba00e80e2e69c5122f174733290d8d03c1c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf72cd140b82640daec4d330324aa4d9ee59c9e9eedf7d8aeda334a88630b9f0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2edd143-59ea-8e1e-5a01-7ad495b613c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem covolume_eq_det_inv {ι : Type*} [Fintype ι] (L : Submodule ℤ (ι → ℝ))
    [DiscreteTopology L] [IsZLattice ℝ L] (b : Basis ι ℤ L) :
    covolume L = |(LinearEquiv.det (b.ofZLatticeBasis ℝ L).equivFun : ℝ)|⁻¹ := by
  classical
  rw [covolume_eq_det L b, ← Pi.basisFun_det_apply, show (((↑) : L → _) ∘ ⇑b) =
    (b.ofZLatticeBasis ℝ) by ext; simp, ← Basis.det_inv, ← abs_inv, Units.val_inv_eq_inv_val,
    IsUnit.unit_spec, ← Basis.det_basis, LinearEquiv.coe_det]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7810ba00e80e2e69c5122f174733290d8d03c1c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
