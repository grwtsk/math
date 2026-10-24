# thetaPhiSignedMomentOrientedParitySum_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae2ed5dc-9d7e-c9af-adc6-a17ba3d26dbc",
  "kind": "theorem",
  "lexical_name": "thetaPhiSignedMomentOrientedParitySum_tendsto",
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
  "slug": "thetaphisignedmomentorientedparitysum-tendsto--e1f767165b9a950d746b1860",
  "source": {
    "blob": "d7fd5dbee5556ee21d0169c6ca616a9d699c49fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 332,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variantfcffc19ed7d00c64287d6149f13ed138493791f24f324ba81cb925ac5d7fb595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1f767165b9a950d746b1860b76c75e830b7b7fd3b6eae60791ecec1feced51f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variantfcffc19ed7d00c64287d6149f13ed138493791f24f324ba81cb925ac5d7fb595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae2ed5dc-9d7e-c9af-adc6-a17ba3d26dbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiSignedMomentOrientedParitySum_tendsto
    (k N : ℕ) (t : ℝ) :
    Tendsto
      (fun L =>
        thetaPhiSignedMomentOrientedParitySum k L N t)
      atTop
      (𝓝
        ((k.factorial : ℝ) *
          signedJetDet k
            (fun n =>
              thetaPhiDerivativeTapeTruncation N n t))) := by
  let c : ℝ :=
    (-1 : ℝ) ^ (k * (k - 1) / 2) *
      (-1 / 2 : ℝ) ^ k
  have h :=
    (thetaPhiSignedMomentParitySum_tendsto k N t).const_mul c
  have htarget :
      c *
          ((k.factorial : ℝ) *
            Matrix.det
              (thetaPhiChristoffelHankel k
                (fun n =>
                  thetaPhiBaseTapeTruncation N n t))) =
        (k.factorial : ℝ) *
          signedJetDet k
            (fun n =>
              thetaPhiDerivativeTapeTruncation N n t) := by
    rw [signedJetDet_truncation_eq_christoffel]
    dsimp [c]
    ring
  rw [htarget] at h
  simpa [thetaPhiSignedMomentOrientedParitySum, c] using h

/-- Exact finite cancellation criterion left by the signed-moment
factorization.  It asks only for eventual nonnegativity in the signed-moment
cutoff; it does not impose a sign on individual selections. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variantfcffc19ed7d00c64287d6149f13ed138493791f24f324ba81cb925ac5d7fb595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variantfcffc19ed7d00c64287d6149f13ed138493791f24f324ba81cb925ac5d7fb595.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7fd5dbee5556ee21d0169c6ca616a9d699c49fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
