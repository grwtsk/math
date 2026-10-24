# supplierAllowance_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0b96a57-6906-635d-555c-c1034bb6a64d",
  "kind": "theorem",
  "lexical_name": "supplierAllowance_nonneg",
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
  "slug": "supplierallowance-nonneg--fd53e69b0e9b4facf7c0a446",
  "source": {
    "blob": "3c05c1608b14b0e522cd92f3ec160857acaf0264",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 127,
    "path": "GRWTSK/Analysis/MeasureTheory/SupplierOriginalAdapters/Variantc6d5475abf24dafcc0bff140ef23a798b70c1a366b83c028f05fa82eb5d9cd97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd53e69b0e9b4facf7c0a4464342f9c175b4c433b8893427cc99a84e2ba0466d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SupplierOriginalAdapters/Variantc6d5475abf24dafcc0bff140ef23a798b70c1a366b83c028f05fa82eb5d9cd97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0b96a57-6906-635d-555c-c1034bb6a64d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supplierAllowance_nonneg {K D p A : ℝ} (hK : 0 ≤ K) (hD : 0 ≤ D)
    (hA : 1 ≤ A) : 0 ≤ supplierAllowance K D p A := by
  unfold supplierAllowance
  have he := positiveEnvelope_nonneg (2 * A)
  have ha : 0 < A := by linarith
  positivity

/-- The exact moving scale returns the original supplier to the original
pickup, including its original reset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SupplierOriginalAdapters/Variantc6d5475abf24dafcc0bff140ef23a798b70c1a366b83c028f05fa82eb5d9cd97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SupplierOriginalAdapters/Variantc6d5475abf24dafcc0bff140ef23a798b70c1a366b83c028f05fa82eb5d9cd97.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c05c1608b14b0e522cd92f3ec160857acaf0264` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
