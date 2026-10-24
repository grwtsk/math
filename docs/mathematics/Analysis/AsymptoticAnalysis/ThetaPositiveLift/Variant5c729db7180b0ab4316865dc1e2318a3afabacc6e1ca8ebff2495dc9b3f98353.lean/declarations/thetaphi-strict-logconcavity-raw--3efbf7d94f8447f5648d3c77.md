# thetaPhi_strict_logConcavity_raw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2a3c1fa67376b101a905fe96c2751f30db99ed7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb72d9c0-61d0-909d-576e-311a28420453",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7102f001-9e9e-fffa-21f6-cb598a8c0eb9",
  "kind": "theorem",
  "lexical_name": "thetaPhi_strict_logConcavity_raw",
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
  "slug": "thetaphi-strict-logconcavity-raw--3efbf7d94f8447f5648d3c77",
  "source": {
    "blob": "a2a3c1fa67376b101a905fe96c2751f30db99ed7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 271,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3efbf7d94f8447f5648d3c775ef8b5b7faf8b5aa9aa1e7f84d7d28851187eb7a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7102f001-9e9e-fffa-21f6-cb598a8c0eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_strict_logConcavity_raw {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t * thetaPhiD2 t - (thetaPhiD1 t) ^ 2 < 0 := by
  rw [thetaPhi_logCurvature_identity ht]
  have h : (∑' m, thetaModeWeight m t * thetaModeCurvature m t) +
      thetaModeVariance t < 0 := by
    linarith [thetaModeCurvature_expectation_le ht, thetaModeVariance_lt_ten_mul ht,
      thetaModeA_gt_three ht]
  exact mul_neg_of_pos_of_neg (sq_pos_of_pos (thetaPhi_positive t ht)) h

/-- Strict negative logarithmic curvature of the literal theta source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a3c1fa67376b101a905fe96c2751f30db99ed7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
