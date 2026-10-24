# compensatedTerm_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb35b9ce-b392-94c1-6d21-9ab9e2ce0ada",
  "kind": "theorem",
  "lexical_name": "compensatedTerm_integrable",
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
  "slug": "compensatedterm-integrable--4796c4dd79d862558a7be280",
  "source": {
    "blob": "0811e35b4194e501ea920b1a8a257adbe7b7df36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4796c4dd79d862558a7be280e85b8e72e6d1f09b2edde0fb500cf9e8e955ac5c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb35b9ce-b392-94c1-6d21-9ab9e2ce0ada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedTerm_integrable {x : ℝ} (hx : -2 < x) (n : ℕ) :
    IntegrableOn (compensatedTerm x n) (Ioi 0) := by
  have hb := physicalRate_pos n
  have hs := (dividedDifference_integrable (shifted_physicalRate_pos hx n) hb).add
    ((integrableOn_exp_mul_Ioi (by linarith : -physicalRate n < 0) 0).const_mul x)
  apply hs.congr
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact (compensatedTerm_split x n (ne_of_gt ht)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0811e35b4194e501ea920b1a8a257adbe7b7df36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
