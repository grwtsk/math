# normalizationError_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1453368-9a4a-5e1b-8882-e23e61d752eb",
  "kind": "theorem",
  "lexical_name": "normalizationError_bounds",
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
  "slug": "normalizationerror-bounds--dd0d9205befe9c2283784545",
  "source": {
    "blob": "979f0a927229c0cea634ec8b1b094573cd4f9251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd0d9205befe9c2283784545294845a056f2b0adb2d8c89626d173a2e44dd893",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1453368-9a4a-5e1b-8882-e23e61d752eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizationError_bounds {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ normalizationError A ∧ normalizationError A ≤ normalizationBudget/A^2 := by
  have hP := two_prime_calibration hA
  have hG := NormalizedGammaBudget.sourceGammaValue_budget hA
  rw [normalizationError_eq_deficits A]
  unfold normalizationBudget
  constructor
  · linarith [hP.1, hG.1]
  · have he : (calibrationConstant+195)/A^2 = calibrationConstant/A^2+195/A^2 := by ring
    rw [he]
    have heG : 390/A^2 = 2*(195/A^2) := by ring
    linarith [hP.2, hG.2, heG]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `979f0a927229c0cea634ec8b1b094573cd4f9251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
