# eta_comp_eq_csqrt_I_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b5a2ad3-c30e-bd0d-07c6-8a4eec0f5799",
  "kind": "lemma",
  "lexical_name": "eta_comp_eq_csqrt_I_inv",
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
  "slug": "eta-comp-eq-csqrt-i-inv--9af17219467e342a0e1f4338",
  "source": {
    "blob": "5dbbc6d406dc7f97bb23349d05d66f2f69d7139c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 146,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Varianta18e3c66ab466e736946761cea91e6cf8a68f41d6de19e0d0c9068fb17f99333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9af17219467e342a0e1f43387250caf759ae1237277dfce815fef9681234e8ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Varianta18e3c66ab466e736946761cea91e6cf8a68f41d6de19e0d0c9068fb17f99333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b5a2ad3-c30e-bd0d-07c6-8a4eec0f5799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eta_comp_eq_csqrt_I_inv : upperHalfPlaneSet.EqOn
    (η ∘ (-1 / ·)) ((sqrt I)⁻¹ • (sqrt * η)) := by
  obtain ⟨z, hz, h⟩ := eta_comp_eqOn_const_mul_csqrt_eta
  have h3 : η I = z * sqrt I * η I := by simpa [← mul_assoc] using h (show I ∈ _ by simp)
  grind [sqrt, eta_ne_zero (show 0 < I.im by simp)]

set_option backward.isDefEq.respectTransparency.types false in
/-- The discriminant satisfies the modular transformation for `S : z ↦ -1 / z`:
we have `Δ(-1 / z) = z ^ 12 · Δ(z)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Varianta18e3c66ab466e736946761cea91e6cf8a68f41d6de19e0d0c9068fb17f99333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Varianta18e3c66ab466e736946761cea91e6cf8a68f41d6de19e0d0c9068fb17f99333.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dbbc6d406dc7f97bb23349d05d66f2f69d7139c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
