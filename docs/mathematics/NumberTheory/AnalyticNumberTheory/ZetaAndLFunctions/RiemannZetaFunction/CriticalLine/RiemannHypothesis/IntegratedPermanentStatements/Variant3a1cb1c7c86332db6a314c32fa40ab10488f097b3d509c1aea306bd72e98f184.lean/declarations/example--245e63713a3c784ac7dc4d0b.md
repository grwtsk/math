# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38cb3926eb06b6dd8e803c8280b3593162dfd13d66f735e6fb43f3891e1e6443",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--245e63713a3c784ac7dc4d0b",
  "source": {
    "blob": "fc3915bea4a773c8140275a88f1236a59cea1aae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3065,
    "line": 3061,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant3a1cb1c7c86332db6a314c32fa40ab10488f097b3d509c1aea306bd72e98f184.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:245e63713a3c784ac7dc4d0b73924da055be59e46bd7850ea45d0fb66f065c9c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant3a1cb1c7c86332db6a314c32fa40ab10488f097b3d509c1aea306bd72e98f184.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38cb3926eb06b6dd8e803c8280b3593162dfd13d66f735e6fb43f3891e1e6443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3061–3065.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q = SourceSampling.sourceSamplingKernel A q := by
  exact SourceUpperSupport.thetaKernel_eq_sourceSamplingKernel A q hA hq hcut

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant3a1cb1c7c86332db6a314c32fa40ab10488f097b3d509c1aea306bd72e98f184.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant3a1cb1c7c86332db6a314c32fa40ab10488f097b3d509c1aea306bd72e98f184.lean#L3061).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc3915bea4a773c8140275a88f1236a59cea1aae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
