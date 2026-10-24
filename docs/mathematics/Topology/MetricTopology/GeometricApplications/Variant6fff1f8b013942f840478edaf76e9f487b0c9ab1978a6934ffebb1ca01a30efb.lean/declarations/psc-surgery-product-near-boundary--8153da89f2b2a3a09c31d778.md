# psc_surgery_product_near_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd9afb6b-bfbd-06f5-cbc1-982b06a0d407",
  "kind": "theorem",
  "lexical_name": "psc_surgery_product_near_boundary",
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
  "slug": "psc-surgery-product-near-boundary--8153da89f2b2a3a09c31d778",
  "source": {
    "blob": "d4e296b55239a755d7e3cf2fa59956cfa2c3ba55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 190,
    "path": "GRWTSK/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8153da89f2b2a3a09c31d778cd70afb592bb62c5aa403e605e5339ce87ce19b6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd9afb6b-bfbd-06f5-cbc1-982b06a0d407`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psc_surgery_product_near_boundary
    {T : SmoothFramedSurgeryTheory}
    {G : PositiveScalarCurvatureSemantics T}
    (capability : PSCSurgeryCapability T G)
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (input : PSCSurgeryInput T G embedding) :
    G.ProductNearBoundary (capability.construct input).metric :=
  (capability.construct input).product_near_boundary

/-! ## Three-dimensional Ricci-flow surgery -/

/--
The finite disjoint topological data underlying one three-dimensional neck
surgery event.  Every site is an `S² × D¹` framed site.  Rather than naming an
unconstrained simultaneous result, the record selects one order inside a
`CoherentDisjointFamilyExecution`; its pre-deletion manifold is therefore the
final state of a typed chain of transported-site surgeries.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GeometricApplications/Variant6fff1f8b013942f840478edaf76e9f487b0c9ab1978a6934ffebb1ca01a30efb.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e296b55239a755d7e3cf2fa59956cfa2c3ba55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
