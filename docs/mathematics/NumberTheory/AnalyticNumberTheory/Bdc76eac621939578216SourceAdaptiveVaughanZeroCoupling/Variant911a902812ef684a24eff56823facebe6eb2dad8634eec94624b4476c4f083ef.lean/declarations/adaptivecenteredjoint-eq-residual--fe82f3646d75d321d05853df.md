# adaptiveCenteredJoint_eq_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1a75ac8-cf43-7730-c4aa-590b1307bc6d",
  "kind": "theorem",
  "lexical_name": "adaptiveCenteredJoint_eq_residual",
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
  "slug": "adaptivecenteredjoint-eq-residual--fe82f3646d75d321d05853df",
  "source": {
    "blob": "8406012cc45440957a2512a086f0aedae88ed6d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Bdc76eac621939578216SourceAdaptiveVaughanZeroCoupling/Variant911a902812ef684a24eff56823facebe6eb2dad8634eec94624b4476c4f083ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe82f3646d75d321d05853df03474e0b0167c6afcca1ee0a3e4ee6ae8e214ccf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Bdc76eac621939578216SourceAdaptiveVaughanZeroCoupling/Variant911a902812ef684a24eff56823facebe6eb2dad8634eec94624b4476c4f083ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1a75ac8-cf43-7730-c4aa-590b1307bc6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adaptiveCenteredJoint_eq_residual (A : ℝ) (hA : 1 ≤ A) :
    adaptiveCenteredJoint A = mertensResidual A - archimedeanMultiplier 0 / 2 := by
  unfold adaptiveCenteredJoint
  rw [actual_residual_eq_adaptiveIndependentMain_add_signedError A hA]

/-- Exact original arithmetic/zero comparison; neither side has been estimated separately. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Bdc76eac621939578216SourceAdaptiveVaughanZeroCoupling/Variant911a902812ef684a24eff56823facebe6eb2dad8634eec94624b4476c4f083ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Bdc76eac621939578216SourceAdaptiveVaughanZeroCoupling/Variant911a902812ef684a24eff56823facebe6eb2dad8634eec94624b4476c4f083ef.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8406012cc45440957a2512a086f0aedae88ed6d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
