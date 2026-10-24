# det_one_smulRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef6fb2e8dd1a7d014d364d13f6863368d7c882b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6822e6ef-d68b-9bcb-9acd-ada0fb007d35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae3bb397-c6a5-14fc-8236-a958f2978e21",
  "kind": "theorem",
  "lexical_name": "det_one_smulRight",
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
  "slug": "det-one-smulright--d2b863ce242901ca019d049f",
  "source": {
    "blob": "ef6fb2e8dd1a7d014d364d13f6863368d7c882b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 29,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Determinant/Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2b863ce242901ca019d049f1870f9dca5c91d7b3ba3264d0297dc018e25d4d3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Determinant/Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae3bb397-c6a5-14fc-8236-a958f2978e21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_one_smulRight {𝕜 : Type*} [CommRing 𝕜] [TopologicalSpace 𝕜] [ContinuousMul 𝕜] (v : 𝕜) :
    ((1 : 𝕜 →L[𝕜] 𝕜).smulRight v).det = v := by
  nontriviality 𝕜
  have : (1 : 𝕜 →L[𝕜] 𝕜).smulRight v = v • (1 : 𝕜 →L[𝕜] 𝕜) := by
    ext1
    simp only [ContinuousLinearMap.smulRight_apply, ContinuousLinearMap.one_apply,
      Algebra.id.smul_eq_mul, one_mul, ContinuousLinearMap.coe_smul', Pi.smul_apply, mul_one]
  rw [this, ContinuousLinearMap.det, ContinuousLinearMap.coe_smul,
    ContinuousLinearMap.one_def, ContinuousLinearMap.coe_id, LinearMap.det_smul,
    Module.finrank_self, LinearMap.det_id, pow_one, mul_one]

end ContinuousLinearMap

namespace ContinuousLinearEquiv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Determinant/Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Determinant/Variant9bfbad4dff015ff9c6453cec08d3a630e7eccde9548c8e4c49dbff2f59434d94.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef6fb2e8dd1a7d014d364d13f6863368d7c882b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
