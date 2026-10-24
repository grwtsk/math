# derivative_bulk_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0991af9f-cd28-2b44-f1e3-3a65da905898",
  "kind": "theorem",
  "lexical_name": "derivative_bulk_swap",
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
  "slug": "derivative-bulk-swap--9a7ef36126a1662b1691fe37",
  "source": {
    "blob": "5892c9b790187676d1af50a89ba323d5267d5e3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFar/Variantb0049acf6e19c1bc86aa71667d9f77eb95a7c5565ff32149bc3db2c206b9f028.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a7ef36126a1662b1691fe372104969eaef003415db0936deefc8584a41ce907",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFar/Variantb0049acf6e19c1bc86aa71667d9f77eb95a7c5565ff32149bc3db2c206b9f028.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0991af9f-cd28-2b44-f1e3-3a65da905898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem derivative_bulk_swap {A v b l r : ℝ} (hA : 0 < A)
    (hv : 0 < v) (hvb : v ≤ b) (hlr : l ≤ r) :
    (∫ t in l..r, ∫ u in v..b, |deriv (actualPeriodicPhysicalCellProfile A t) u|) =
      ∫ u in v..b, ∫ t in l..r, |deriv (actualPeriodicPhysicalCellProfile A t) u| := by
  have h := integral_integral_swap
    (f := fun t u => |deriv (actualPeriodicPhysicalCellProfile A t) u|)
    (derivative_box_integrable hA hv hvb hlr)
  simpa only [intervalIntegral.integral_of_le hlr,
    intervalIntegral.integral_of_le hvb] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFar/Variantb0049acf6e19c1bc86aa71667d9f77eb95a7c5565ff32149bc3db2c206b9f028.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFar/Variantb0049acf6e19c1bc86aa71667d9f77eb95a7c5565ff32149bc3db2c206b9f028.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5892c9b790187676d1af50a89ba323d5267d5e3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
