# shiftedMomentIntegrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4241bed57dd60a5012d3809e24bc8d2b8d2e7c9d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e4701ef-1751-d2b7-a823-3131ea9f88b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:516f0305-7790-6104-a352-45b3d0ab46e6",
  "kind": "theorem",
  "lexical_name": "shiftedMomentIntegrand_integrable",
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
  "slug": "shiftedmomentintegrand-integrable--317b04657e5195df1c208726",
  "source": {
    "blob": "4241bed57dd60a5012d3809e24bc8d2b8d2e7c9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:317b04657e5195df1c208726e94c6794eb1c792e1454926d33efc590e4f2aa49",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:516f0305-7790-6104-a352-45b3d0ab46e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftedMomentIntegrand_integrable
    {F : ℝ → ℝ} (hF : TwoMomentProfile F)
    (s : ℝ) :
    Integrable (shiftedMomentIntegrand F s) := by
  have hsupp :
      HasCompactSupport (fun r : ℝ => F (s + r)) := by
    have heq :
        (fun r : ℝ => F (s + r)) =
          F ∘ Homeomorph.addLeft s := by
      funext r
      rfl
    rw [heq]
    exact hF.2.1.comp_homeomorph (Homeomorph.addLeft s)
  have hc :
      Continuous (shiftedMomentIntegrand F s) := by
    unfold shiftedMomentIntegrand
    have hc := hF.1
    fun_prop
  exact hc.integrable_of_hasCompactSupport hsupp.mul_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4241bed57dd60a5012d3809e24bc8d2b8d2e7c9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
