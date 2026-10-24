# signedJetDet_truncation_nonnegative_of_signedMomentParity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a757f413-77e6-8824-8fbe-f433e3136394",
  "kind": "theorem",
  "lexical_name": "signedJetDet_truncation_nonnegative_of_signedMomentParity",
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
  "slug": "signedjetdet-truncation-nonnegative-of-signedmomentparity--a60309c49b9cc30dccc5e2a2",
  "source": {
    "blob": "4ebd66968ca22d21c03191058dc6d63a07063afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 379,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a60309c49b9cc30dccc5e2a24f4fdb19f1df9af4135f8c90e243380739c8a27b",
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

Occurrence: `result:a757f413-77e6-8824-8fbe-f433e3136394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedJetDet_truncation_nonnegative_of_signedMomentParity
    (hparity : ThetaPhiSignedMomentParityCriterion)
    {k N : ℕ} {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ signedJetDet k
      (fun n => thetaPhiDerivativeTapeTruncation N n t) := by
  have hfac : 0 < (k.factorial : ℝ) := by positivity
  have hprod :
      0 ≤ (k.factorial : ℝ) *
        signedJetDet k
          (fun n =>
            thetaPhiDerivativeTapeTruncation N n t) :=
    ge_of_tendsto
      (thetaPhiSignedMomentOrientedParitySum_tendsto
        k N t)
      (hparity k N t ht)
  exact (mul_nonneg_iff_of_pos_left hfac).mp hprod

/-- The explicit signed-moment parity criterion is sufficient for the actual
all-rank literal theta source signed-jet theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ebd66968ca22d21c03191058dc6d63a07063afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
