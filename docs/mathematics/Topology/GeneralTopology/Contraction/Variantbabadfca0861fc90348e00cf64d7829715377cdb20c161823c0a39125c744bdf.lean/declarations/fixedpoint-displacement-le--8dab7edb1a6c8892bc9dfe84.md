# fixedPoint_displacement_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01ad13d1-0552-fe54-a8ff-9b39c73a7dd7",
  "kind": "theorem",
  "lexical_name": "fixedPoint_displacement_le",
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
  "slug": "fixedpoint-displacement-le--8dab7edb1a6c8892bc9dfe84",
  "source": {
    "blob": "449b924ca4a98fa36dac3e64a989f2f20aa2b6d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dab7edb1a6c8892bc9dfe849d38c75946c11a519f2ff413392b93fd1d3c158a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01ad13d1-0552-fe54-a8ff-9b39c73a7dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedPoint_displacement_le
    {reference candidate : VersionedOperator State}
    (contraction : ContractionCertificate reference)
    (perturbation :
      PointwiseOperatorPerturbationOn
        reference candidate contraction.region)
    (referencePoint : CertifiedFixedPoint reference)
    (candidatePoint : CertifiedFixedPoint candidate)
    (reference_mem :
      (referencePoint.point : State) ∈ contraction.region)
    (candidate_mem :
      (candidatePoint.point : State) ∈ contraction.region) :
    dist (referencePoint.point : State)
        (candidatePoint.point : State) ≤
      perturbation.magnitude.value /
        (1 - (contraction.factor : ℝ)) := by
  let referenceInRegion : contraction.region :=
    ⟨referencePoint.point, reference_mem⟩
  let candidateInRegion : contraction.region :=
    ⟨candidatePoint.point, candidate_mem⟩
  have referenceFixed :
      Function.IsFixedPt contraction.regionStep
        referenceInRegion := by
    apply Subtype.ext
    change
      reference.rawMap (referencePoint.point : State) =
        referencePoint.point
    exact referencePoint.raw_step_eq
  let candidateStep :
      contraction.region → contraction.region :=
    perturbation.candidate_invariant.restrict
      candidate.rawMap contraction.region contraction.region
  have candidateFixed :
      Function.IsFixedPt candidateStep
        candidateInRegion := by
    apply Subtype.ext
    change
      candidate.rawMap (candidatePoint.point : State) =
        candidatePoint.point
    exact candidatePoint.raw_step_eq
  have pointwiseRestricted :
      ∀ state : contraction.region,
        dist (contraction.regionStep state)
            (candidateStep state) ≤
          perturbation.magnitude.value := by
    intro state
    exact perturbation.pointwise state state.property
  simpa [referenceInRegion, candidateInRegion, Subtype.dist_eq] using
    contraction.contractive.dist_fixedPoint_fixedPoint_of_dist_le'
      candidateStep referenceFixed candidateFixed
      pointwiseRestricted

end Mathematics.Operational
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Contraction/Variantbabadfca0861fc90348e00cf64d7829715377cdb20c161823c0a39125c744bdf.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `449b924ca4a98fa36dac3e64a989f2f20aa2b6d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
