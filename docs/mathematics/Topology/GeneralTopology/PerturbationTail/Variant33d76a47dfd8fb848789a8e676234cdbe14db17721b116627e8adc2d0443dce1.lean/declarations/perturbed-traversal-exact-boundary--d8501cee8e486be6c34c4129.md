# perturbed_traversal_exact_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ca44b1f-bd3a-191b-d8a3-21ddc781a3f9",
  "kind": "theorem",
  "lexical_name": "perturbed_traversal_exact_boundary",
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
  "slug": "perturbed-traversal-exact-boundary--d8501cee8e486be6c34c4129",
  "source": {
    "blob": "10f819265c84a34dc39dc2a62368933b285f3f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/PerturbationTail/Variant33d76a47dfd8fb848789a8e676234cdbe14db17721b116627e8adc2d0443dce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8501cee8e486be6c34c4129264417f6b33148a4cd06223e6824cc6e55d0cf0a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PerturbationTail/Variant33d76a47dfd8fb848789a8e676234cdbe14db17721b116627e8adc2d0443dce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ca44b1f-bd3a-191b-d8a3-21ddc781a3f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perturbed_traversal_exact_boundary
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ exact.basin)
    (tail : ExactBoundaryTail perturbed schedule) :
    Tendsto
      (fun depth =>
        iteratePerturbed
          perturbed schedule depth initial)
      atTop
      (𝓝 exact.boundary) :=
  perturbed_traversal_tendsto_boundary
    perturbed schedule initial_mem
    (tail.toBoundaryCertificate
      (nndist initial exact.boundary))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PerturbationTail/Variant33d76a47dfd8fb848789a8e676234cdbe14db17721b116627e8adc2d0443dce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PerturbationTail/Variant33d76a47dfd8fb848789a8e676234cdbe14db17721b116627e8adc2d0443dce1.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10f819265c84a34dc39dc2a62368933b285f3f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
