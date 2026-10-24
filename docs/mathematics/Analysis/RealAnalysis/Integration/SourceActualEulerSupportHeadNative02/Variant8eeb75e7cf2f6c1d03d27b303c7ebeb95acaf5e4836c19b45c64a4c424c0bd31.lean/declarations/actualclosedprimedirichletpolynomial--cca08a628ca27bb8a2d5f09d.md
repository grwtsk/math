# actualClosedPrimeDirichletPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0c2b6ef7288edd197a2322fb21bede02c7ef44f9d2ba1173e9a74910c752dd2",
  "kind": "def",
  "lexical_name": "actualClosedPrimeDirichletPolynomial",
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
  "slug": "actualclosedprimedirichletpolynomial--cca08a628ca27bb8a2d5f09d",
  "source": {
    "blob": "5eef67adede891c7960520ebfeaf53c801e89eb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cca08a628ca27bb8a2d5f09dafea2f36ce575c77f40e51c5d340865e2dce89e2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0c2b6ef7288edd197a2322fb21bede02c7ef44f9d2ba1173e9a74910c752dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualClosedPrimeDirichletPolynomial (A : ℝ) (s : ℂ) : ℂ :=
  ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1), LSeries.term actualMangoldtCoefficients s n

/-- The actual exterior Dirichlet series, with the closed endpoint left in the polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eef67adede891c7960520ebfeaf53c801e89eb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
