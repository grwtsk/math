# actualSecondProfile_continuousAt_of_ne_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "600b13ba1900b9887b349e4e6435e47765ac0bf7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cb3f83b012be221e5ce912b4e9f697a605e19f30f731a14cc93a045ad8acdd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99401c6b-8a02-501e-4ce5-b188cb2ee689",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38f91823-fd70-0b1c-4d06-eefa0a2dd771",
  "kind": "theorem",
  "lexical_name": "actualSecondProfile_continuousAt_of_ne_endpoints",
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
  "slug": "actualsecondprofile-continuousat-of-ne-endpoints--af93835b7937390fc4d29420",
  "source": {
    "blob": "600b13ba1900b9887b349e4e6435e47765ac0bf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cb3f83b012be221e5ceSourceSecondProfileContinuity/Variant0cb3f83b012be221e5ce912b4e9f697a605e19f30f731a14cc93a045ad8acdd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af93835b7937390fc4d294207d90e2f62d1be91c4e6791d1cb7f2c4337322928",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cb3f83b012be221e5ceSourceSecondProfileContinuity/Variant0cb3f83b012be221e5ce912b4e9f697a605e19f30f731a14cc93a045ad8acdd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38f91823-fd70-0b1c-4d06-eefa0a2dd771`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSecondProfile_continuousAt_of_ne_endpoints (A x : ℝ) (hA : 0 < A)
    (hl : x ≠ -A) (hr : x ≠ A) : ContinuousAt (actualSecondProfile A) x := by
  rw [actualSecondProfile_eq_indicator A hA]
  apply (normalizedInteriorSecond_continuous A).continuousOn.continuousAt_indicator
  rw [frontier_Icc (by linarith : -A ≤ A)]
  simpa using And.intro hl hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cb3f83b012be221e5ceSourceSecondProfileContinuity/Variant0cb3f83b012be221e5ce912b4e9f697a605e19f30f731a14cc93a045ad8acdd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cb3f83b012be221e5ceSourceSecondProfileContinuity/Variant0cb3f83b012be221e5ce912b4e9f697a605e19f30f731a14cc93a045ad8acdd3.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `600b13ba1900b9887b349e4e6435e47765ac0bf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
