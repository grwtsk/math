# Unitization.complex_cfcₙ_eq_cfc_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3536311b45a48c088fd7823ccada2dca075665e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 475,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e3ad708-c1b0-c335-6eec-5618ca4f04f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0138ce83-c321-7338-b3a7-435bfc2c7d31",
  "kind": "lemma",
  "lexical_name": "Unitization.complex_cfcₙ_eq_cfc_inr",
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
  "slug": "unitization-complex-cfc-eq-cfc-inr--d5967eb23879c3c49c5fab6a",
  "source": {
    "blob": "a3536311b45a48c088fd7823ccada2dca075665e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 475,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5967eb23879c3c49c5fab6a867d9b3b8333faf44acd54801f44577bd9d1ef27",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0138ce83-c321-7338-b3a7-435bfc2c7d31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Unitization.complex_cfcₙ_eq_cfc_inr (a : A) (f : ℂ → ℂ) (hf₀ : f 0 = 0 := by cfc_zero_tac) :
    cfcₙ f a = cfc f (a : A⁺¹) :=
  Unitization.cfcₙ_eq_cfc_inr isStarNormal_inr ..

/-- note: the version for `ℝ≥0`, `Unitization.nnreal_cfcₙ_eq_cfc_inr`, can be found in
`Mathlib/Analysis/CStarAlgebra/ContinuousFunctionalCalculus/Order.lean` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4c1a63f553ecdae789eedb62a7d4a629b6530fd398c04c5cd18e40972562147f.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3536311b45a48c088fd7823ccada2dca075665e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
