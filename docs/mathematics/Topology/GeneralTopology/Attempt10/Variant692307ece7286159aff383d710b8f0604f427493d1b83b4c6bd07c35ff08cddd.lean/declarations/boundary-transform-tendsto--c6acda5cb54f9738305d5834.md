# boundary_transform_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecfbb959-0b5b-cc6b-faec-4520d5ce6def",
  "kind": "theorem",
  "lexical_name": "boundary_transform_tendsto",
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
  "slug": "boundary-transform-tendsto--c6acda5cb54f9738305d5834",
  "source": {
    "blob": "ab20a50a4a971ad0deaf5fad9512c2efaed69a56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 227,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt10/Variant692307ece7286159aff383d710b8f0604f427493d1b83b4c6bd07c35ff08cddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6acda5cb54f9738305d5834af716ae022d2dd0e140099a3a90d7e3370872cec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt10/Variant692307ece7286159aff383d710b8f0604f427493d1b83b4c6bd07c35ff08cddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecfbb959-0b5b-cc6b-faec-4520d5ce6def`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_transform_tendsto (lambda : ℂ) (hl : -(1/2 : ℝ) < lambda.re) :
    Tendsto (fun A : ℝ => boundaryTransform A lambda) atTop
      (𝓝 (-lambda*leadingCoefficient (lambda+1/2)^2)) := by
  have hz : 0 < (lambda+(1/2 : ℂ)).re := by
    norm_num [Complex.add_re,Complex.div_re] 
    linarith
  apply (((scaledAmplitude_tendsto (lambda+1/2) hz).pow 2).const_mul (-lambda)).congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact (boundary_eq_scaledAmplitude hA lambda).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt10/Variant692307ece7286159aff383d710b8f0604f427493d1b83b4c6bd07c35ff08cddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt10/Variant692307ece7286159aff383d710b8f0604f427493d1b83b4c6bd07c35ff08cddd.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab20a50a4a971ad0deaf5fad9512c2efaed69a56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
