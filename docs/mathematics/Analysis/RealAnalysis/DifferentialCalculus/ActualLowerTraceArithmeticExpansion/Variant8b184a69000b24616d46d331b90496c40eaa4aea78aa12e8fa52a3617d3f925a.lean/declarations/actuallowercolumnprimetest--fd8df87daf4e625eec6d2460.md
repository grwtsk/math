# actualLowerColumnPrimeTest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a997a8a0fabe5d9406991f2f7cc2317b139723bcd86a3f3272e91ef5c786e982",
  "kind": "def",
  "lexical_name": "actualLowerColumnPrimeTest",
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
  "slug": "actuallowercolumnprimetest--fd8df87daf4e625eec6d2460",
  "source": {
    "blob": "914409ec3720d9f4eace9deabff8b9af65ee263b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLowerTraceArithmeticExpansion/Variant8b184a69000b24616d46d331b90496c40eaa4aea78aa12e8fa52a3617d3f925a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd8df87daf4e625eec6d24602e259c09678c781aab32ad7d34a879bde8a9b8ae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualLowerTraceArithmeticExpansion/Variant8b184a69000b24616d46d331b90496c40eaa4aea78aa12e8fa52a3617d3f925a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a997a8a0fabe5d9406991f2f7cc2317b139723bcd86a3f3272e91ef5c786e982`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualLowerColumnPrimeTest (A t : ℝ) : ℝ :=
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  Real.exp (t / 2) * Real.exp (-a / 2) *
    (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + a) -
      sourceCorrelation explicitSecondDerivative A (t + a) / 2)

/-- The literal long closed Mangoldt half row at the true first strict column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualLowerTraceArithmeticExpansion/Variant8b184a69000b24616d46d331b90496c40eaa4aea78aa12e8fa52a3617d3f925a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLowerTraceArithmeticExpansion/Variant8b184a69000b24616d46d331b90496c40eaa4aea78aa12e8fa52a3617d3f925a.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `914409ec3720d9f4eace9deabff8b9af65ee263b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
