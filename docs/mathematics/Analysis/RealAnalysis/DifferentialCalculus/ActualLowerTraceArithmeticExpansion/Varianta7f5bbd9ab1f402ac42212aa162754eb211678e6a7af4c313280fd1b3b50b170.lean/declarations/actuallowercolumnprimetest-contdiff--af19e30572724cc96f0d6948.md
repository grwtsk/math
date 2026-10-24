# actualLowerColumnPrimeTest_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd097323-8aa8-c160-4b97-476535b0d52c",
  "kind": "theorem",
  "lexical_name": "actualLowerColumnPrimeTest_contDiff",
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
  "slug": "actuallowercolumnprimetest-contdiff--af19e30572724cc96f0d6948",
  "source": {
    "blob": "1c97e637adcc598e73b27b027f9699fcfb4fb58c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLowerTraceArithmeticExpansion/Varianta7f5bbd9ab1f402ac42212aa162754eb211678e6a7af4c313280fd1b3b50b170.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af19e30572724cc96f0d69482cf78af83fe29d043f1fb7c23e31d136a451506c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualLowerTraceArithmeticExpansion/Varianta7f5bbd9ab1f402ac42212aa162754eb211678e6a7af4c313280fd1b3b50b170.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd097323-8aa8-c160-4b97-476535b0d52c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actualLowerColumnPrimeTest_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (actualLowerColumnPrimeTest A) := by
  have h0 := jet_contDiff_one hA 0 (by norm_num)
  have h1 := jet_contDiff_one hA 1 (by norm_num)
  simp only [iteratedDeriv_zero] at h0
  unfold actualLowerColumnPrimeTest
  fun_prop

/-- The true upper time boundary kills both source jets in this test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualLowerTraceArithmeticExpansion/Varianta7f5bbd9ab1f402ac42212aa162754eb211678e6a7af4c313280fd1b3b50b170.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLowerTraceArithmeticExpansion/Varianta7f5bbd9ab1f402ac42212aa162754eb211678e6a7af4c313280fd1b3b50b170.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c97e637adcc598e73b27b027f9699fcfb4fb58c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
