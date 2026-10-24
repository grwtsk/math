# thetaPhi_cosh_interval_eq_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca2e105a880ce514a64556e457a92503762f5cb9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bcfcd138-d04f-e321-f1e2-e1a07a9d3368",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8a7cd9d-d5e9-c5b0-8e53-d992a24710e0",
  "kind": "theorem",
  "lexical_name": "thetaPhi_cosh_interval_eq_average",
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
  "slug": "thetaphi-cosh-interval-eq-average--6f46e532239c14aa74dde916",
  "source": {
    "blob": "ca2e105a880ce514a64556e457a92503762f5cb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f46e532239c14aa74dde9168b4dda125ebf448e71c48bb6f978b69943cfbcba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8a7cd9d-d5e9-c5b0-8e53-d992a24710e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem thetaPhi_cosh_interval_eq_average (u : ℂ) (b : ℝ) :
    (∫ t in (0 : ℝ)..b,
        (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ))) =
      ((∫ t in (0 : ℝ)..b,
          (thetaPhi t : ℂ) * thetaExpKernel u t) +
       (∫ t in (0 : ℝ)..b,
          (thetaPhi t : ℂ) * thetaExpKernel (-u) t)) / 2 := by
  have hp :
      IntervalIntegrable
        (fun t : ℝ => (thetaPhi t : ℂ) * thetaExpKernel u t)
        volume 0 b :=
    Continuous.intervalIntegrable
      (continuous_thetaPhi_complex.mul (continuous_thetaExpKernel u)) _ _
  have hm :
      IntervalIntegrable
        (fun t : ℝ => (thetaPhi t : ℂ) * thetaExpKernel (-u) t)
        volume 0 b :=
    Continuous.intervalIntegrable
      (continuous_thetaPhi_complex.mul (continuous_thetaExpKernel (-u))) _ _
  rw [show
    (fun t : ℝ =>
      (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ))) =
      fun t : ℝ =>
        ((thetaPhi t : ℂ) * thetaExpKernel u t +
          (thetaPhi t : ℂ) * thetaExpKernel (-u) t) / 2 by
    funext t
    rw [← thetaExpKernel_average_eq_cosh u t]
    ring]
  rw [intervalIntegral.integral_div, intervalIntegral.integral_add hp hm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca2e105a880ce514a64556e457a92503762f5cb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
