# tsum_weighted_sub_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8a1cc95d13b3d2b848c12cfdae83cef7754ee5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 15,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ce55835-0f09-2149-9a32-7a263614aed0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b72b495-46a6-209f-c312-30bd620d0a5a",
  "kind": "lemma",
  "lexical_name": "tsum_weighted_sub_sq",
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
  "slug": "tsum-weighted-sub-sq--9d866197b8058a73c57a547f",
  "source": {
    "blob": "d8a1cc95d13b3d2b848c12cfdae83cef7754ee5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 15,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2Variance/Variant6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d866197b8058a73c57a547fecf690df7e84aa187cea76dbd4d0e0ddddcb76f7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2Variance/Variant6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b72b495-46a6-209f-c312-30bd620d0a5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsum_weighted_sub_sq {p g : ℕ → ℝ}
    (hp : Summable p) (hg : Summable (fun n => p n * g n))
    (hg2 : Summable (fun n => p n * (g n)^2)) (c : ℝ) :
    (∑' n, p n * (g n-c)^2) =
      (∑' n, p n*(g n)^2) - 2*c*(∑' n, p n*g n) + c^2*(∑' n, p n) := by
  calc
    _ = ∑' n, ((p n*(g n)^2 - (2*c)*(p n*g n)) + c^2*p n) := by
      apply tsum_congr
      intro n
      ring
    _ = _ := by
      rw [(hg2.sub (hg.mul_left (2*c))).tsum_add (hp.mul_left (c^2)),
        hg2.tsum_sub (hg.mul_left (2*c)), tsum_mul_left, tsum_mul_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2Variance/Variant6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2Variance/Variant6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8a1cc95d13b3d2b848c12cfdae83cef7754ee5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
