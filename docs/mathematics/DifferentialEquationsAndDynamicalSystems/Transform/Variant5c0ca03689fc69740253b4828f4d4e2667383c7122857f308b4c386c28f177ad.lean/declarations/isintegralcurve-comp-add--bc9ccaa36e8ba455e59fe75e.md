# isIntegralCurve_comp_add

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
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f57cd452-1229-b3d9-a1a1-2053e30b3be3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7cfba841-f7bd-0b67-c069-2516dcd87754",
  "kind": "lemma",
  "lexical_name": "isIntegralCurve_comp_add",
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
  "slug": "isintegralcurve-comp-add--bc9ccaa36e8ba455e59fe75e",
  "source": {
    "blob": "dc33cdb70820c7d5fed72e4d31d04e7ad7ca02e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 83,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc9ccaa36e8ba455e59fe75e6d8407faf739a7019aaa29f2b64729001dab637c",
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

Occurrence: `result:7cfba841-f7bd-0b67-c069-2516dcd87754`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIntegralCurve_comp_add {dt : ℝ} :
    IsIntegralCurve γ v ↔ IsIntegralCurve (γ ∘ (· + dt)) v := by
  refine ⟨fun hγ ↦ hγ.comp_add _, fun hγ ↦ ?_⟩
  convert hγ.comp_add (-dt)
  ext t
  simp only [Function.comp_apply, neg_add_cancel_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Variant5c0ca03689fc69740253b4828f4d4e2667383c7122857f308b4c386c28f177ad.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc33cdb70820c7d5fed72e4d31d04e7ad7ca02e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
