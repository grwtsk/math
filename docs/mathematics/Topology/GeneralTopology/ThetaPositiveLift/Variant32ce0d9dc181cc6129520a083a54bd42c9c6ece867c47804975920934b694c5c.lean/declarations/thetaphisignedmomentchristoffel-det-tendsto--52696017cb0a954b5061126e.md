# thetaPhiSignedMomentChristoffel_det_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eca0d16d-c0c0-785d-1712-0fb5444dcd47",
  "kind": "theorem",
  "lexical_name": "thetaPhiSignedMomentChristoffel_det_tendsto",
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
  "slug": "thetaphisignedmomentchristoffel-det-tendsto--52696017cb0a954b5061126e",
  "source": {
    "blob": "4ebd66968ca22d21c03191058dc6d63a07063afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 269,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52696017cb0a954b5061126e43ce54a0d8a01564ac299930f12ff96cae4ac9ee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eca0d16d-c0c0-785d-1712-0fb5444dcd47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiSignedMomentChristoffel_det_tendsto
    (k N : ℕ) (t : ℝ) :
    Tendsto
      (fun L =>
        Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseSignedMomentTruncation L N n t)))
      atTop
      (𝓝
        (Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseTapeTruncation N n t)))) := by
  have hcont :
      Continuous
        (fun M : Matrix (Fin k) (Fin k) ℝ =>
          Matrix.det M) :=
    continuous_id.matrix_det
  exact
    (hcont.tendsto
      (thetaPhiChristoffelHankel k
        (fun n => thetaPhiBaseTapeTruncation N n t))).comp
      (thetaPhiSignedMomentChristoffel_tendsto k N t)

/-- The explicit finite parity sums converge to factorial times the actual
finite-mode base Christoffel determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ebd66968ca22d21c03191058dc6d63a07063afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
