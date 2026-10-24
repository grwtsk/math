# factorial_mul_det_thetaPhi_signedMomentTruncation_eq_paritySum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:003c6967-dcb5-dfec-dce8-7bce185d8b89",
  "kind": "theorem",
  "lexical_name": "factorial_mul_det_thetaPhi_signedMomentTruncation_eq_paritySum",
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
  "slug": "factorial-mul-det-thetaphi-signedmomenttruncation-eq-paritysum--c188e7abb7884883e722a30e",
  "source": {
    "blob": "4ebd66968ca22d21c03191058dc6d63a07063afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c188e7abb7884883e722a30e86cc8370090eb22f5be28c51167f63b19992ae6f",
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

Occurrence: `result:003c6967-dcb5-dfec-dce8-7bce185d8b89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorial_mul_det_thetaPhi_signedMomentTruncation_eq_paritySum
    (k L N : ℕ) (t : ℝ) :
    (k.factorial : ℝ) *
        Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseSignedMomentTruncation L N n t)) =
      thetaPhiSignedMomentParitySum k L N t := by
  rw [factorial_mul_det_thetaPhi_signedMomentTruncation]
  unfold thetaPhiSignedMomentParitySum
  apply Finset.sum_congr rfl
  intro f _
  exact thetaPhiSignedMomentSelectionTerm_eq_parity N t f

/-- The verified Touchard identification upgrades the base signed-moment
representation to an actual `HasSum`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant32ce0d9dc181cc6129520a083a54bd42c9c6ece867c47804975920934b694c5c.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ebd66968ca22d21c03191058dc6d63a07063afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
