# integral_vHatR_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee3be51a876222c3617067f2992ab85393e4e40a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 433,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d4929ea-e1b5-d58d-6b41-2025960a46b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a985c4ea-4e4f-4ab2-82c8-6631cf6e813f",
  "kind": "lemma",
  "lexical_name": "integral_vHatR_sq",
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
  "slug": "integral-vhatr-sq--e4ca59a1c84150fa414a62c5",
  "source": {
    "blob": "ee3be51a876222c3617067f2992ab85393e4e40a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 433,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variant0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4ca59a1c84150fa414a62c59e58859c6130cadd5f1a9f4cc7e18afb95d44a1d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WindowCore/Variant0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a985c4ea-4e4f-4ab2-82c8-6631cf6e813f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_vHatR_sq : ∫ r, vHatR v r ^ 2 = 2 * π * av v L * L := by
  have h := hW.integral_vHatR_sq_mul_cos 0
  simp only [mul_zero, Real.cos_zero, mul_one] at h
  rw [h, hW.Av_zero]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WindowCore/Variant0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variant0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee3be51a876222c3617067f2992ab85393e4e40a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
