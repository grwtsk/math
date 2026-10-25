# normalized_endpoint_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b085b8ce-d50a-fd2b-ae9e-b00790d07b82",
  "kind": "theorem",
  "lexical_name": "normalized_endpoint_product",
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
  "slug": "normalized-endpoint-product--8edc0ae8699c86da666265f0",
  "source": {
    "blob": "5b4dd25b4293e818d9dcd2819b376cec857333c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpointCorrelationAttempt02/Variant84b1ce082e751d17140cb879ad35738568d62c7fe42dcdcbcb66c1b3c6571956.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8edc0ae8699c86da666265f0d2ec4291acbd721f6a6ca8d0570d280ab9f560a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpointCorrelationAttempt02/Variant84b1ce082e751d17140cb879ad35738568d62c7fe42dcdcbcb66c1b3c6571956.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b085b8ce-d50a-fd2b-ae9e-b00790d07b82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_endpoint_product {A s t : ℝ} (hA : 1≤A) :
    normalizedInterior A (A-s)*normalizedInterior A (A-t)*
      (A^9*sourceNormalization A)=
      endpointInteriorPolynomial A⁻¹ s*endpointInteriorPolynomial A⁻¹ t := by
  have hp : 0<A := by linarith
  have hZ := source_normalization_pos A hA
  have hsZ : Real.sqrt (sourceNormalization A)≠0 := ne_of_gt (Real.sqrt_pos.mpr hZ)
  rw [←actual_interior_endpoint_polynomial hp,←actual_interior_endpoint_polynomial hp]
  dsimp [normalizedInterior]
  field_simp [hsZ]
  rw [Real.sq_sqrt hZ.le]
  have hsA := Real.sq_sqrt hp.le
  rw [hsA]
  ring

/-- Kernel checked exact A^-9/Z_A endpoint scaling of the literal correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpointCorrelationAttempt02/Variant84b1ce082e751d17140cb879ad35738568d62c7fe42dcdcbcb66c1b3c6571956.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ActualEndpointCorrelationAttempt02/Variant84b1ce082e751d17140cb879ad35738568d62c7fe42dcdcbcb66c1b3c6571956.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b4dd25b4293e818d9dcd2819b376cec857333c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
