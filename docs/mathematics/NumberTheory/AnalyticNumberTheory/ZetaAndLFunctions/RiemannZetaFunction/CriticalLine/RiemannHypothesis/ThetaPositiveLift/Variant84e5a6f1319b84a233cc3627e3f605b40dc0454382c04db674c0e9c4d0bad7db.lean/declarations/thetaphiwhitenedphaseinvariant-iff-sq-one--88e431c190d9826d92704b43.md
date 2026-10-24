# thetaPhiWhitenedPhaseInvariant_iff_sq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16f04142-c567-3c51-6ee2-fd2d514d106a",
  "kind": "theorem",
  "lexical_name": "thetaPhiWhitenedPhaseInvariant_iff_sq_one",
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
  "slug": "thetaphiwhitenedphaseinvariant-iff-sq-one--88e431c190d9826d92704b43",
  "source": {
    "blob": "609f838391f0a59ecf9cf3f797521b281c51c148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 276,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88e431c190d9826d92704b43aa61b02924921b9eb7280b43130644029e28db43",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16f04142-c567-3c51-6ee2-fd2d514d106a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiWhitenedPhaseInvariant_iff_sq_one
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    ThetaPhiWhitenedPhaseInvariant k L N t ↔
      thetaPhiWhitenedParityCompression k L N t *
          thetaPhiWhitenedParityCompression k L N t =
        (1 : Matrix (Fin k) (Fin k) ℝ) := by
  rw [← thetaPhiWhitenedPhaseExcursion_eq_zero_iff]
  rw [←
    thetaPhiWhitenedParityCompression_phaseDefect_eq_zero_iff
      hk hN t]
  constructor
  · intro h
    exact (sub_eq_zero.mp h).symm
  · intro h
    exact sub_eq_zero.mpr h.symm

/-- Matrix-order form of the finite contraction certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant84e5a6f1319b84a233cc3627e3f605b40dc0454382c04db674c0e9c4d0bad7db.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `609f838391f0a59ecf9cf3f797521b281c51c148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
