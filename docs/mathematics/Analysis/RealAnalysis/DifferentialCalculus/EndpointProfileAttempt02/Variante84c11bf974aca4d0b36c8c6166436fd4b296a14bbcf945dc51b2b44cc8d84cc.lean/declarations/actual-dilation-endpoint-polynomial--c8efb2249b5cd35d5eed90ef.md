# actual_dilation_endpoint_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ed57e24-ce0f-ae20-bdee-b5fb5e0a973d",
  "kind": "theorem",
  "lexical_name": "actual_dilation_endpoint_polynomial",
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
  "slug": "actual-dilation-endpoint-polynomial--c8efb2249b5cd35d5eed90ef",
  "source": {
    "blob": "9b5a382a0c6a7e11db60eba1a4df955ccccd5d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variante84c11bf974aca4d0b36c8c6166436fd4b296a14bbcf945dc51b2b44cc8d84cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8efb2249b5cd35d5eed90efa1ad872ffc8a431b83b1ce17a27108160a8c9ff3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variante84c11bf974aca4d0b36c8c6166436fd4b296a14bbcf945dc51b2b44cc8d84cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ed57e24-ce0f-ae20-bdee-b5fb5e0a973d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_dilation_endpoint_polynomial {A s : ℝ} (hA : 0<A)
    (hs : s∈Icc (0:ℝ) (2*A)) :
    dilationTest explicitSecondDerivative A (A-s)*(A^4*Real.sqrt A)=
      endpointInteriorPolynomial A⁻¹ s := by
  rw [explicit_dilationTest_eq_indicator A hA]
  rw [indicator_of_mem (show A-s∈Icc (-A) A by constructor <;> linarith [hs.1,hs.2])]
  exact actual_interior_endpoint_polynomial hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variante84c11bf974aca4d0b36c8c6166436fd4b296a14bbcf945dc51b2b44cc8d84cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variante84c11bf974aca4d0b36c8c6166436fd4b296a14bbcf945dc51b2b44cc8d84cc.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b5a382a0c6a7e11db60eba1a4df955ccccd5d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
