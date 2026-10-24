# two_mul_nonAliasingFejer_positiveShift_eq_bilinear_sub_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27d85365-436d-bf5d-d34f-4d1e79d663a4",
  "kind": "theorem",
  "lexical_name": "two_mul_nonAliasingFejer_positiveShift_eq_bilinear_sub_diagonal",
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
  "slug": "two-mul-nonaliasingfejer-positiveshift-eq-bilinear-sub-diagonal--7edd47ceb92764c95b3ff643",
  "source": {
    "blob": "894bc86e8dd5ed7660693023f21a5d5e5423a734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 44,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7edd47ceb92764c95b3ff643bae77104cc5ec665d8cb90e20ab0482798311836",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27d85365-436d-bf5d-d34f-4d1e79d663a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_mul_nonAliasingFejer_positiveShift_eq_bilinear_sub_diagonal
    {X N m Y : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hY : 1 ≤ Y) :
    2 * positiveShiftCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m) =
      centeredLowGCDBilinear X Y
          (nonAliasingFejerPrefixWeight X N m) -
        diagonalCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m) := by
  have h :=
    nonAliasingFejer_two_mul_positiveShift_add_diagonal_eq_bilinear
      hreg hY
  linarith

/-- Once the complete signed modulus bilinear is bounded, the positive-shift
estimate follows with only the already-proved diagonal constant.  This theorem
does not manufacture the bilinear hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `894bc86e8dd5ed7660693023f21a5d5e5423a734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
