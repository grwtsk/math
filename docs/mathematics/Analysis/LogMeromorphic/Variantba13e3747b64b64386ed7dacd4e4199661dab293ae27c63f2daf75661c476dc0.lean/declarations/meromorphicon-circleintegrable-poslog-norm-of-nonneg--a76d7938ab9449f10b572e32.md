# MeromorphicOn.circleIntegrable_posLog_norm_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f4586150e9f16d02aa612b1364fa0173af75547",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9e14056-e287-38b1-0353-0e10382ae2bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c0201a7-efe6-f59f-5424-dc753495e21b",
  "kind": "theorem",
  "lexical_name": "MeromorphicOn.circleIntegrable_posLog_norm_of_nonneg",
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
  "slug": "meromorphicon-circleintegrable-poslog-norm-of-nonneg--a76d7938ab9449f10b572e32",
  "source": {
    "blob": "8f4586150e9f16d02aa612b1364fa0173af75547",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 210,
    "path": "GRWTSK/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a76d7938ab9449f10b572e32953a95fda257bd735013c90f50012423c2f882f0",
  "verification": {
    "reference": "docs/verification/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c0201a7-efe6-f59f-5424-dc753495e21b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicOn.circleIntegrable_posLog_norm_of_nonneg (hf : MeromorphicOn f (sphere c R))
    (hR : 0 ≤ R) :
    CircleIntegrable (log⁺ ‖f ·‖) c R := by
  rw [← abs_of_nonneg hR] at hf
  exact hf.circleIntegrable_posLog_norm

@[deprecated (since := "2026-03-28")]
alias circleIntegrable_posLog_norm_meromorphicOn_of_nonneg :=
    MeromorphicOn.circleIntegrable_posLog_norm_of_nonneg

end CircleIntegrable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LogMeromorphic/Variantba13e3747b64b64386ed7dacd4e4199661dab293ae27c63f2daf75661c476dc0.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f4586150e9f16d02aa612b1364fa0173af75547` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
