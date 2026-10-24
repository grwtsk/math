# thetaPhiNormalizedParityCompression_nonnegative_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9f918f4-3ec1-ffc3-f793-4f44134708ff",
  "kind": "theorem",
  "lexical_name": "thetaPhiNormalizedParityCompression_nonnegative_iff",
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
  "slug": "thetaphinormalizedparitycompression-nonnegative-iff--d214517862f4e7f4902a6ec8",
  "source": {
    "blob": "fc224fb594014868358b33f4e79a0d3ef6989a21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 209,
    "path": "GRWTSK/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d214517862f4e7f4902a6ec855e1247e08ecf7bc22e73de7ea4b10ae7abb9bd1",
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

Occurrence: `result:a9f918f4-3ec1-ffc3-f793-4f44134708ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiNormalizedParityCompression_nonnegative_iff
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    0 ≤ thetaPhiNormalizedParityCompression k L N t ↔
      0 ≤
        Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseSignedMomentTruncation
                L N n t)) := by
  rw [thetaPhiNormalizedParityCompression_eq]
  have hden :
      0 <
        Matrix.det
          (thetaPhiSignedMomentKrylovFrame
              k L N t *
            (thetaPhiSignedMomentKrylovFrame
              k L N t).transpose) := by
    simpa [thetaPhiSignedMomentKrylovGram] using
      thetaPhiSignedMomentKrylovGram_det_pos
        hk hN t
  rw [div_nonneg_iff]
  constructor
  · rintro (h | h)
    · exact h.1
    · exact False.elim ((not_le_of_gt hden) h.2)
  · intro h
    exact Or.inl ⟨h, hden.le⟩

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc224fb594014868358b33f4e79a0d3ef6989a21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
