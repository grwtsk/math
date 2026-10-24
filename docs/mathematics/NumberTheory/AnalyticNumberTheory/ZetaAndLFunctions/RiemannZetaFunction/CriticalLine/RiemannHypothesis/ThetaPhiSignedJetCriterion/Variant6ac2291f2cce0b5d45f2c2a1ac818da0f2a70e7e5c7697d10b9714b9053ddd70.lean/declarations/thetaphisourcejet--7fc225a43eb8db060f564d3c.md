# ThetaPhiSourceJet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abe6454b4b437caaeb65e4c705466a6f73b3243ae8c351976e6bcd0f80382d7c",
  "kind": "structure",
  "lexical_name": "ThetaPhiSourceJet",
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
  "slug": "thetaphisourcejet--7fc225a43eb8db060f564d3c",
  "source": {
    "blob": "7d11a721428184c7f563b4bd131fab280e65b1fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiSignedJetCriterion/Variant6ac2291f2cce0b5d45f2c2a1ac818da0f2a70e7e5c7697d10b9714b9053ddd70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fc225a43eb8db060f564d3cad379193c214615326b6176e7f8facbd329424d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiSignedJetCriterion/Variant6ac2291f2cce0b5d45f2c2a1ac818da0f2a70e7e5c7697d10b9714b9053ddd70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abe6454b4b437caaeb65e4c705466a6f73b3243ae8c351976e6bcd0f80382d7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ThetaPhiSourceJet where
  /-- The candidate derivative tape, indexed by ordinary derivative order. -/
  value : ℕ → ℝ → ℝ
  /-- Order zero is the literal theta source. -/
  zero_eq : value 0 = thetaPhi
  /-- Every successor is the ordinary derivative of its predecessor. -/
  succ_hasDerivAt : ∀ n t, HasDerivAt (value n) (value (n + 1) t) t

/-- Exact all-rank analytic criterion left after the verified finite ranks:
construct the literal derivative jet and prove every oriented Hankel
determinant nonnegative on the nonnegative source half-line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiSignedJetCriterion/Variant6ac2291f2cce0b5d45f2c2a1ac818da0f2a70e7e5c7697d10b9714b9053ddd70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiSignedJetCriterion/Variant6ac2291f2cce0b5d45f2c2a1ac818da0f2a70e7e5c7697d10b9714b9053ddd70.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d11a721428184c7f563b4bd131fab280e65b1fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
