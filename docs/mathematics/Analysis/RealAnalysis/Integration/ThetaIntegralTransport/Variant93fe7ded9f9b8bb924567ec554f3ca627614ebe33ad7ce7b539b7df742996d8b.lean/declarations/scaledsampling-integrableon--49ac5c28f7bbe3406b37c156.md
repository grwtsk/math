# scaledSampling_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a16ba32-2e9a-2aa7-1a42-e224eb282a4e",
  "kind": "theorem",
  "lexical_name": "scaledSampling_integrableOn",
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
  "slug": "scaledsampling-integrableon--49ac5c28f7bbe3406b37c156",
  "source": {
    "blob": "7234b2fd921e44fd22137c8075fbb788e9d5ea8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant93fe7ded9f9b8bb924567ec554f3ca627614ebe33ad7ce7b539b7df742996d8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49ac5c28f7bbe3406b37c156136dfc86e8ca4c1eca4f835df78a525f3024929a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant93fe7ded9f9b8bb924567ec554f3ca627614ebe33ad7ce7b539b7df742996d8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a16ba32-2e9a-2aa7-1a42-e224eb282a4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledSampling_integrableOn (A q : ℝ) (N : ℕ) (hA : 1 ≤ A) (hq : 0 < q) :
    IntegrableOn (fun t : ℝ ↦ sourceSamplingKernel A (q * t)) (Set.Icc 1 (N : ℝ)) := by
  apply ContinuousOn.integrableOn_Icc
  intro t ht
  exact (scaledSampling_hasDerivAt A q t hA hq
    (lt_of_lt_of_le zero_lt_one ht.1)).continuousAt.continuousWithinAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant93fe7ded9f9b8bb924567ec554f3ca627614ebe33ad7ce7b539b7df742996d8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant93fe7ded9f9b8bb924567ec554f3ca627614ebe33ad7ce7b539b7df742996d8b.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7234b2fd921e44fd22137c8075fbb788e9d5ea8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
