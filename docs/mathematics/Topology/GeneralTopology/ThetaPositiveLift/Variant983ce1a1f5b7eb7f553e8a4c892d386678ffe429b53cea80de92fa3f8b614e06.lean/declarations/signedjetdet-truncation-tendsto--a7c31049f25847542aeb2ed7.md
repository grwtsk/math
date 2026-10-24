# signedJetDet_truncation_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "520bd44ad1867a6a9fce65fc325d6f919dcac3b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f43a35e7-ea9b-0222-51d9-acab4325d839",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf76a28e-d652-1393-d48a-2918f7a76661",
  "kind": "theorem",
  "lexical_name": "signedJetDet_truncation_tendsto",
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
  "slug": "signedjetdet-truncation-tendsto--a7c31049f25847542aeb2ed7",
  "source": {
    "blob": "520bd44ad1867a6a9fce65fc325d6f919dcac3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7c31049f25847542aeb2ed71b1c5c0122b6d5836f505980a3bacd23ba9e8981",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf76a28e-d652-1393-d48a-2918f7a76661`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedJetDet_truncation_tendsto
    (k : ℕ) (t : ℝ) :
    Tendsto
      (fun N =>
        signedJetDet k
          (fun n =>
            thetaPhiDerivativeTapeTruncation N n t))
      atTop
      (𝓝 (signedJetDet k
        (fun n => thetaPhiDerivativeTapeValue n t))) := by
  have hmatrix :
      Tendsto
        (fun N =>
          Matrix.of fun i j : Fin k =>
            thetaPhiDerivativeTapeTruncation
              N (i.val + j.val) t)
        atTop
        (𝓝 (Matrix.of fun i j : Fin k =>
          thetaPhiDerivativeTapeValue
            (i.val + j.val) t)) := by
    apply tendsto_pi_nhds.mpr
    intro i
    apply tendsto_pi_nhds.mpr
    intro j
    exact thetaPhiDerivativeTapeTruncation_tendsto
      (i.val + j.val) t
  have hcont :
      Continuous
        (fun M : Matrix (Fin k) (Fin k) ℝ =>
          Matrix.det M) :=
    continuous_id.matrix_det
  have hdet :=
    (hcont.tendsto
      (Matrix.of fun i j : Fin k =>
        thetaPhiDerivativeTapeValue
          (i.val + j.val) t)).comp hmatrix
  unfold signedJetDet
  exact hdet.const_mul
    ((-1 : ℝ) ^ (k * (k - 1) / 2))

/-- The finite mode-choice determinant condition is sufficient for the actual
literal infinite derivative tape to have every oriented Hankel determinant
nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520bd44ad1867a6a9fce65fc325d6f919dcac3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
