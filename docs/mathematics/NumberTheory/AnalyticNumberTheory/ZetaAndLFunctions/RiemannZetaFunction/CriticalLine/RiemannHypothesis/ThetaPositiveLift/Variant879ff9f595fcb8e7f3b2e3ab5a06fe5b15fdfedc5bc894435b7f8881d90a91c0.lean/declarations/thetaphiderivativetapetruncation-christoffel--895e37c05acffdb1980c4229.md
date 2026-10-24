# thetaPhiDerivativeTapeTruncation_christoffel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1c52a16-0876-7508-0428-4ad138f9a7cc",
  "kind": "theorem",
  "lexical_name": "thetaPhiDerivativeTapeTruncation_christoffel",
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
  "slug": "thetaphiderivativetapetruncation-christoffel--895e37c05acffdb1980c4229",
  "source": {
    "blob": "be85167f0727a3da8a2a46d476e864d7cdfd2f34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 158,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:895e37c05acffdb1980c4229b14f58d97002506913bd32483737ccad752bf5c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1c52a16-0876-7508-0428-4ad138f9a7cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiDerivativeTapeTruncation_christoffel
    (N n : ℕ) (t : ℝ) :
    thetaPhiDerivativeTapeTruncation N n t =
      (-1 / 2 : ℝ) *
        (thetaPhiBaseTapeTruncation N (n + 1) t +
          thetaPhiBaseTapeTruncation N n t) := by
  unfold thetaPhiDerivativeTapeTruncation
    thetaPhiBaseTapeTruncation
  simp_rw [thetaPhiDerivativeModeValue_christoffel]
  rw [← Finset.mul_sum, Finset.sum_add_distrib]

/-- Whole Hankel matrix formed from the one-step Christoffel transform of a
scalar tape. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant879ff9f595fcb8e7f3b2e3ab5a06fe5b15fdfedc5bc894435b7f8881d90a91c0.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be85167f0727a3da8a2a46d476e864d7cdfd2f34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
