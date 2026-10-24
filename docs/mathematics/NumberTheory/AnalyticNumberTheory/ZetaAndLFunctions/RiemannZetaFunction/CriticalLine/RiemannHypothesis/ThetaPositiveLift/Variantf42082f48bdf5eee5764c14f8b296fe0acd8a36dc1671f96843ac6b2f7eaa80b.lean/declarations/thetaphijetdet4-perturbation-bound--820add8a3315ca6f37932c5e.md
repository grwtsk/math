# thetaPhiJetDet4_perturbation_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81e770407f13829d4031059c9ab07b18ca41aeac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8af8b6b6-8e60-abb7-8e1b-eb59cb04ad37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d90e964e-f9dd-bd28-dc2e-06b92dd050ed",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetDet4_perturbation_bound",
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
  "slug": "thetaphijetdet4-perturbation-bound--820add8a3315ca6f37932c5e",
  "source": {
    "blob": "81e770407f13829d4031059c9ab07b18ca41aeac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 139,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:820add8a3315ca6f37932c5e6bb08fa1bc8a9b812c183a396d95390345211dae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d90e964e-f9dd-bd28-dc2e-06b92dd050ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetDet4_perturbation_bound
    (a e B E : Fin 7 → ℝ)
    (ha : ∀ k, |a k| ≤ B k)
    (he : ∀ k, |e k| ≤ E k) :
    |thetaPhiJetDet4 (fun k => a k + e k) - thetaPhiJetDet4 a| ≤
      thetaPhiJetDet4Majorant (fun k => B k + E k) -
        thetaPhiJetDet4Majorant B := by
  let delta (i j k l : Fin 7) : ℝ :=
    (a i + e i) * (a j + e j) * (a k + e k) * (a l + e l) -
      a i * a j * a k * a l
  have hd (i j k l : Fin 7) :
      |delta i j k l| ≤
        (B i + E i) * (B j + E j) * (B k + E k) * (B l + E l) -
          B i * B j * B k * B l :=
    quadruple_perturbation_bound
      (ha i) (ha j) (ha k) (ha l) (he i) (he j) (he k) (he l)
  have hi :
      thetaPhiJetDet4 (fun k => a k + e k) - thetaPhiJetDet4 a =
        delta 0 2 4 6 - delta 0 2 5 5 - delta 0 3 3 6 +
        2 * delta 0 3 4 5 - delta 0 4 4 4 - delta 1 1 4 6 +
        delta 1 1 5 5 + 2 * delta 1 2 3 6 - 2 * delta 1 2 4 5 -
        2 * delta 1 3 3 5 + 2 * delta 1 3 4 4 - delta 2 2 2 6 +
        2 * delta 2 2 3 5 + delta 2 2 4 4 - 3 * delta 2 3 3 4 +
        delta 3 3 3 3 := by
    dsimp [thetaPhiJetDet4, delta]
    ring
  rw [hi]
  have htri :
      |delta 0 2 4 6 - delta 0 2 5 5 - delta 0 3 3 6 +
        2 * delta 0 3 4 5 - delta 0 4 4 4 - delta 1 1 4 6 +
        delta 1 1 5 5 + 2 * delta 1 2 3 6 - 2 * delta 1 2 4 5 -
        2 * delta 1 3 3 5 + 2 * delta 1 3 4 4 - delta 2 2 2 6 +
        2 * delta 2 2 3 5 + delta 2 2 4 4 - 3 * delta 2 3 3 4 +
        delta 3 3 3 3| ≤
      |delta 0 2 4 6| + |delta 0 2 5 5| + |delta 0 3 3 6| +
        2 * |delta 0 3 4 5| + |delta 0 4 4 4| + |delta 1 1 4 6| +
        |delta 1 1 5 5| + 2 * |delta 1 2 3 6| + 2 * |delta 1 2 4 5| +
        2 * |delta 1 3 3 5| + 2 * |delta 1 3 4 4| + |delta 2 2 2 6| +
        2 * |delta 2 2 3 5| + |delta 2 2 4 4| + 3 * |delta 2 3 3 4| +
        |delta 3 3 3 3| := by
    have h := abs_add_sixteen
      (delta 0 2 4 6)
      (-delta 0 2 5 5)
      (-delta 0 3 3 6)
      (2 * delta 0 3 4 5)
      (-delta 0 4 4 4)
      (-delta 1 1 4 6)
      (delta 1 1 5 5)
      (2 * delta 1 2 3 6)
      (-2 * delta 1 2 4 5)
      (-2 * delta 1 3 3 5)
      (2 * delta 1 3 4 4)
      (-delta 2 2 2 6)
      (2 * delta 2 2 3 5)
      (delta 2 2 4 4)
      (-3 * delta 2 3 3 4)
      (delta 3 3 3 3)
    simpa [sub_eq_add_neg, abs_mul] using h
  apply htri.trans
  have hall :
      |delta 0 2 4 6| + |delta 0 2 5 5| + |delta 0 3 3 6| +
        2 * |delta 0 3 4 5| + |delta 0 4 4 4| + |delta 1 1 4 6| +
        |delta 1 1 5 5| + 2 * |delta 1 2 3 6| + 2 * |delta 1 2 4 5| +
        2 * |delta 1 3 3 5| + 2 * |delta 1 3 4 4| + |delta 2 2 2 6| +
        2 * |delta 2 2 3 5| + |delta 2 2 4 4| + 3 * |delta 2 3 3 4| +
        |delta 3 3 3 3| ≤
      ((B 0 + E 0) * (B 2 + E 2) * (B 4 + E 4) * (B 6 + E 6) -
          B 0 * B 2 * B 4 * B 6) +
      ((B 0 + E 0) * (B 2 + E 2) * (B 5 + E 5) * (B 5 + E 5) -
          B 0 * B 2 * B 5 * B 5) +
      ((B 0 + E 0) * (B 3 + E 3) * (B 3 + E 3) * (B 6 + E 6) -
          B 0 * B 3 * B 3 * B 6) +
      2 * ((B 0 + E 0) * (B 3 + E 3) * (B 4 + E 4) * (B 5 + E 5) -
          B 0 * B 3 * B 4 * B 5) +
      ((B 0 + E 0) * (B 4 + E 4) * (B 4 + E 4) * (B 4 + E 4) -
          B 0 * B 4 * B 4 * B 4) +
      ((B 1 + E 1) * (B 1 + E 1) * (B 4 + E 4) * (B 6 + E 6) -
          B 1 * B 1 * B 4 * B 6) +
      ((B 1 + E 1) * (B 1 + E 1) * (B 5 + E 5) * (B 5 + E 5) -
          B 1 * B 1 * B 5 * B 5) +
      2 * ((B 1 + E 1) * (B 2 + E 2) * (B 3 + E 3) * (B 6 + E 6) -
          B 1 * B 2 * B 3 * B 6) +
      2 * ((B 1 + E 1) * (B 2 + E 2) * (B 4 + E 4) * (B 5 + E 5) -
          B 1 * B 2 * B 4 * B 5) +
      2 * ((B 1 + E 1) * (B 3 + E 3) * (B 3 + E 3) * (B 5 + E 5) -
          B 1 * B 3 * B 3 * B 5) +
      2 * ((B 1 + E 1) * (B 3 + E 3) * (B 4 + E 4) * (B 4 + E 4) -
          B 1 * B 3 * B 4 * B 4) +
      ((B 2 + E 2) * (B 2 + E 2) * (B 2 + E 2) * (B 6 + E 6) -
          B 2 * B 2 * B 2 * B 6) +
      2 * ((B 2 + E 2) * (B 2 + E 2) * (B 3 + E 3) * (B 5 + E 5) -
          B 2 * B 2 * B 3 * B 5) +
      ((B 2 + E 2) * (B 2 + E 2) * (B 4 + E 4) * (B 4 + E 4) -
          B 2 * B 2 * B 4 * B 4) +
      3 * ((B 2 + E 2) * (B 3 + E 3) * (B 3 + E 3) * (B 4 + E 4) -
          B 2 * B 3 * B 3 * B 4) +
      ((B 3 + E 3) * (B 3 + E 3) * (B 3 + E 3) * (B 3 + E 3) -
          B 3 * B 3 * B 3 * B 3) := by
    linarith only [
      hd 0 2 4 6, hd 0 2 5 5, hd 0 3 3 6, hd 0 3 4 5,
      hd 0 4 4 4, hd 1 1 4 6, hd 1 1 5 5, hd 1 2 3 6,
      hd 1 2 4 5, hd 1 3 3 5, hd 1 3 4 4, hd 2 2 2 6,
      hd 2 2 3 5, hd 2 2 4 4, hd 2 3 3 4, hd 3 3 3 3]
  apply hall.trans_eq
  dsimp [thetaPhiJetDet4Majorant]
  ring

/-- Dominant-coordinate box used by the rank-four determinant estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81e770407f13829d4031059c9ab07b18ca41aeac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
