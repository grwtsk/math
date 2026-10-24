# invariantLaw_unique_under_strict_contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f42a4318-cf03-3c56-5fbc-bb781f48af78",
  "kind": "theorem",
  "lexical_name": "invariantLaw_unique_under_strict_contraction",
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
  "slug": "invariantlaw-unique-under-strict-contraction--0ca8bbaa45e9260700e5800e",
  "source": {
    "blob": "af942319600b35487b72352111d34cf8e6797141",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 240,
    "path": "GRWTSK/Topology/GeneralTopology/Contraction/Variant38e3ce3b613e361f97bfac1ccb0dfea062f3f91fbd9c112aa5a3cfe723948457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ca8bbaa45e9260700e5800e2aa8371d799168a5bcab92d2be8720568246dfee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Contraction/Variant38e3ce3b613e361f97bfac1ccb0dfea062f3f91fbd9c112aa5a3cfe723948457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f42a4318-cf03-3c56-5fbc-bb781f48af78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invariantLaw_unique_under_strict_contraction
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (metric : LawMetric X)
    (certificate : ContractionCertificate kernel metric)
    (left right : FiniteLaw X)
    (leftInvariant : IsInvariantLaw kernel left)
    (rightInvariant : IsInvariantLaw kernel right) :
    left = right := by
  have contraction := certificate.contracts left right
  rw [leftInvariant, rightInvariant] at contraction
  have nonnegative := metric.nonnegative left right
  have zeroDistance : metric.distance left right = 0 := by
    nlinarith [certificate.factorStrict]
  exact metric.separates left right zeroDistance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Contraction/Variant38e3ce3b613e361f97bfac1ccb0dfea062f3f91fbd9c112aa5a3cfe723948457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Contraction/Variant38e3ce3b613e361f97bfac1ccb0dfea062f3f91fbd9c112aa5a3cfe723948457.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af942319600b35487b72352111d34cf8e6797141` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
