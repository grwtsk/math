# endpointPolynomialCorrelation_integrand_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50cc8e34-a040-735b-7a3c-7c4ad30ac2f9",
  "kind": "theorem",
  "lexical_name": "endpointPolynomialCorrelation_integrand_intervalIntegrable",
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
  "slug": "endpointpolynomialcorrelation-integrand-intervalintegrable--9d3538f06127254fdf1862cd",
  "source": {
    "blob": "4abe13fd7d3aa903bd8f97b6bb543119eb0ef8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 20,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ActualEndpointCorrelationAttempt03/Variantc12d3041e9bf0e6bb3dd5a35a2b013b39ed68fbb3db7292891466e4437b881b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d3538f06127254fdf1862cd8849363934f84ed129ebadbffb2d911be6bb9b1e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ActualEndpointCorrelationAttempt03/Variantc12d3041e9bf0e6bb3dd5a35a2b013b39ed68fbb3db7292891466e4437b881b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50cc8e34-a040-735b-7a3c-7c4ad30ac2f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointPolynomialCorrelation_integrand_intervalIntegrable (a y : ℝ) :
    IntervalIntegrable (fun s => endpointInteriorPolynomial a s*
      endpointInteriorPolynomial a (y-s)) volume 0 y := by
  apply Continuous.intervalIntegrable
  unfold endpointInteriorPolynomial
  fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ActualEndpointCorrelationAttempt03/Variantc12d3041e9bf0e6bb3dd5a35a2b013b39ed68fbb3db7292891466e4437b881b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ActualEndpointCorrelationAttempt03/Variantc12d3041e9bf0e6bb3dd5a35a2b013b39ed68fbb3db7292891466e4437b881b8.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4abe13fd7d3aa903bd8f97b6bb543119eb0ef8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
