# thetaPhiBaseMomentMagnitude_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e18e0ddd-ed1d-9c19-93b5-2f6057f8f6a8",
  "kind": "theorem",
  "lexical_name": "thetaPhiBaseMomentMagnitude_pos",
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
  "slug": "thetaphibasemomentmagnitude-pos--8d239b7830b71bbab19a4255",
  "source": {
    "blob": "fc224fb594014868358b33f4e79a0d3ef6989a21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 43,
    "path": "GRWTSK/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d239b7830b71bbab19a4255f4f470a2a6aa07ad9aa6652d1479775a57fcc605",
  "verification": {
    "reference": "docs/verification/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e18e0ddd-ed1d-9c19-93b5-2f6057f8f6a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiBaseMomentMagnitude_pos
    {N : ℕ} (hN : 0 < N) (t : ℝ) (l : ℕ) :
    0 < thetaPhiBaseMomentMagnitude N t l := by
  unfold thetaPhiBaseMomentMagnitude
  apply Finset.sum_pos'
  · intro m hm
    have hy : 0 ≤ thetaModeY m.val t :=
      (thetaModeY_pos_signedMoment m.val t).le
    positivity
  · let m0 : Fin N := ⟨0, hN⟩
    refine ⟨m0, Finset.mem_univ _, ?_⟩
    have hy : 0 < thetaModeY m0.val t :=
      thetaModeY_pos_signedMoment m0.val t
    positivity

/-- With at least one literal theta mode, every Christoffel magnitude is
strictly positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc224fb594014868358b33f4e79a0d3ef6989a21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
