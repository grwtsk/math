# mkPiAlgebra_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8fa0b00-f7c1-ab94-f1ff-5319941c17d5",
  "kind": "theorem",
  "lexical_name": "mkPiAlgebra_apply",
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
  "slug": "mkpialgebra-apply--edf396d34190baeb743877a8",
  "source": {
    "blob": "9fe836f6d48a6b0a8671cee43786284259eace8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 587,
    "path": "GRWTSK/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edf396d34190baeb743877a8409edaa14016938f0d0fd9f10b1dc552ddb19160",
  "verification": {
    "reference": "docs/verification/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8fa0b00-f7c1-ab94-f1ff-5319941c17d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 587–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkPiAlgebra_apply (m : ι → A) : ContinuousMultilinearMap.mkPiAlgebra R ι A m = ∏ i, m i :=
  rfl
#align continuous_multilinear_map.mk_pi_algebra_apply ContinuousMultilinearMap.mkPiAlgebra_apply

end CommAlgebra

section Algebra

variable (R n) (A : Type*) [CommSemiring R] [Semiring A] [Algebra R A] [TopologicalSpace A]
  [ContinuousMul A]

/-- The continuous multilinear map on `A^n`, where `A` is a normed algebra over `𝕜`, associating to
`m` the product of all the `m i`.

See also: `ContinuousMultilinearMap.mkPiAlgebra`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean#L587).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fe836f6d48a6b0a8671cee43786284259eace8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
