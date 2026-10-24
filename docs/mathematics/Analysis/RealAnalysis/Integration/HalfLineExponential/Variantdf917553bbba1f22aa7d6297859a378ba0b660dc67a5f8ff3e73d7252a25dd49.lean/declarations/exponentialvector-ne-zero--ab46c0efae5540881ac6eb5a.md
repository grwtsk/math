# exponentialVector_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad114064-0ec7-f2e3-e8d3-d1ea2eeb9dd6",
  "kind": "theorem",
  "lexical_name": "exponentialVector_ne_zero",
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
  "slug": "exponentialvector-ne-zero--ab46c0efae5540881ac6eb5a",
  "source": {
    "blob": "7a26adbd2364e70dee2b93bca325ad80c04f1a21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab46c0efae5540881ac6eb5ad0b2a76ef448143472bb130acf566c0eca6e7d5e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad114064-0ec7-f2e3-e8d3-d1ea2eeb9dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponentialVector_ne_zero (z : ℂ) (hz : 0 < z.re) :
    exponentialVector z hz ≠ 0 := by
  intro h
  have hnorm := exponentialVector_norm_sq z hz
  rw [h, norm_zero, zero_pow (by norm_num : 2 ≠ 0)] at hnorm
  have : 0 < 1 / (2 * z.re) := by positivity
  linarith

/-- The fixed reference vector is exactly e_1 in the same Hilbert space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a26adbd2364e70dee2b93bca325ad80c04f1a21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
