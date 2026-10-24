# leading_upper_of_actual_corrected_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:068b635b-e33e-c50e-e049-3a792a134f5b",
  "kind": "theorem",
  "lexical_name": "leading_upper_of_actual_corrected_pairing",
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
  "slug": "leading-upper-of-actual-corrected-pairing--72a8b70ee8f015830f961b75",
  "source": {
    "blob": "82b40eb95caacc381b80192cbbb7a9a83852812b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaterRadiusPropagation/Variant4f27021f1aa1bf4fc5e6bab209c2f6b7ad90b636c9976a321d9a2a87b8b4fdaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72a8b70ee8f015830f961b755ceca420f3a17ad89f9c0fea06a327924c516ac4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaterRadiusPropagation/Variant4f27021f1aa1bf4fc5e6bab209c2f6b7ad90b636c9976a321d9a2a87b8b4fdaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:068b635b-e33e-c50e-e049-3a792a134f5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leading_upper_of_actual_corrected_pairing (K A : ℝ) (hA : 25600 ≤ A)
    (hpair : completeCorrectedAbelPairing A ≤ K) :
    actualLeadingRenormalizedTail A ≤ K + 1553 / 25 := by
  apply leading_upper_of_residual_corrected K A hA
  have he := (abs_lt.mp (residual_sub_complete_pairing_sub_zeta_abs_lt A
    (by linarith : 117 ≤ A))).2
  linarith

/-- The actual triangular comparison pays one-half, its fixed endpoint and one ledger constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaterRadiusPropagation/Variant4f27021f1aa1bf4fc5e6bab209c2f6b7ad90b636c9976a321d9a2a87b8b4fdaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaterRadiusPropagation/Variant4f27021f1aa1bf4fc5e6bab209c2f6b7ad90b636c9976a321d9a2a87b8b4fdaf.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82b40eb95caacc381b80192cbbb7a9a83852812b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
