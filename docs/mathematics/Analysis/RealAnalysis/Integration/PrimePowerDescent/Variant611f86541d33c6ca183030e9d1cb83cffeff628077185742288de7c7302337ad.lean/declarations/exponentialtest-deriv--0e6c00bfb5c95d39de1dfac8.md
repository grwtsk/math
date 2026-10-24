# exponentialTest_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f4963666ae38854c5dd8311aa9356403ba9d4abc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c270adb6-c3ad-ce13-6d45-5bc1fe7e2401",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba2398d5-8bd2-7b15-d99b-fcab66c6ded4",
  "kind": "theorem",
  "lexical_name": "exponentialTest_deriv",
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
  "slug": "exponentialtest-deriv--0e6c00bfb5c95d39de1dfac8",
  "source": {
    "blob": "f4963666ae38854c5dd8311aa9356403ba9d4abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 213,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e6c00bfb5c95d39de1dfac86533b12b82d883828f0e98c250ef576ab3b249f1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba2398d5-8bd2-7b15-d99b-fcab66c6ded4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponentialTest_deriv (C : ℝ → ℝ) (hC : ContDiff ℝ 1 C) (t : ℝ) :
    deriv (exponentialTest C) t =
      Real.exp (-t / 2) * (deriv C t - C t / 2) := by
  have hd := (((hasDerivAt_id t).neg.div_const 2).exp).mul
    (((contDiff_one_iff_deriv.mp hC).1 t).hasDerivAt)
  rw [show deriv (exponentialTest C) t = _ from hd.deriv]
  dsimp only [Pi.neg_apply, id_eq]
  ring

/-- A direct descent for the actual source pairing, conditional only on the
stated correlation regularity. It does not assume or construct `DilationRealization`.
The upper boundary is deliberately still present. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4963666ae38854c5dd8311aa9356403ba9d4abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
