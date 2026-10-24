# compensatedTerm_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:189a7565-21ba-1aed-d985-c3e2202cd9c9",
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
  "slug": "compensatedterm-integrable--a898664a4907940abc4cf6bc",
  "source": {
    "blob": "051dfe75ed412f9b5bed44c11686a5ce7cd58bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a898664a4907940abc4cf6bc1be638c834724074e6a3ec1100513132f5377dc0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:189a7565-21ba-1aed-d985-c3e2202cd9c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–113.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `051dfe75ed412f9b5bed44c11686a5ce7cd58bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
