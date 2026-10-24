# defect_tail_of_signed_pairing_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1afdd7198567c47861beb8d24280bf0390803058",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1548851-6bc6-84fd-cae4-c8bd734378ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61366486-c87e-7dd7-2088-5cfaa392c1e0",
  "kind": "theorem",
  "lexical_name": "defect_tail_of_signed_pairing_tail",
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
  "slug": "defect-tail-of-signed-pairing-tail--a8958fff47c075fe9e74cc23",
  "source": {
    "blob": "1afdd7198567c47861beb8d24280bf0390803058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 130,
    "path": "GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8958fff47c075fe9e74cc235b39b3b9795858f502a54c6a02abcd7a2b869278",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61366486-c87e-7dd7-2088-5cfaa392c1e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem defect_tail_of_signed_pairing_tail
    (h : SignedPairingTailLowerBound) :
    PrimeSmoothDefectTailUpperBound := by
  obtain ⟨C, hC, R, hR, hpair⟩ := h
  refine ⟨Real.sqrt 2 + C, by positivity, R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have heq := signedPairing_eq_endpoint_sub_defect A hA
  have hend := endpointMoment_upper A hA
  have hp := hpair A hRA
  linarith

/-- The signed-tail obstruction and the exact prime-smooth discrepancy bound
are equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1afdd7198567c47861beb8d24280bf0390803058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
