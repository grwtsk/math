# IsIntegralCurveOn.comp_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc33cdb70820c7d5fed72e4d31d04e7ad7ca02e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d983664-da78-8477-294a-851e692c0b65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d20e7f04-b8a8-460b-40b3-7076026f5735",
  "kind": "lemma",
  "lexical_name": "IsIntegralCurveOn.comp_mul",
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
  "slug": "isintegralcurveon-comp-mul--fba7fe9d959ea66e93a090eb",
  "source": {
    "blob": "dc33cdb70820c7d5fed72e4d31d04e7ad7ca02e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 100,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fba7fe9d959ea66e93a090eb093184bebcb444309d1a02ad65839ecab489af90",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d20e7f04-b8a8-460b-40b3-7076026f5735`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsIntegralCurveOn.comp_mul (hγ : IsIntegralCurveOn γ v s) (a : ℝ) :
    IsIntegralCurveOn (γ ∘ (· * a)) (a • v) { t | t * a ∈ s } := by
  intros t ht
  rw [comp_apply, Pi.smul_apply, ← ContinuousLinearMap.smulRight_comp]
  refine HasMFDerivAt.comp t (hγ (t * a) ht) ⟨(continuous_mul_right _).continuousAt, ?_⟩
  simp only [mfld_simps, hasFDerivWithinAt_univ]
  exact HasFDerivAt.mul_const' (hasFDerivAt_id _) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc33cdb70820c7d5fed72e4d31d04e7ad7ca02e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
