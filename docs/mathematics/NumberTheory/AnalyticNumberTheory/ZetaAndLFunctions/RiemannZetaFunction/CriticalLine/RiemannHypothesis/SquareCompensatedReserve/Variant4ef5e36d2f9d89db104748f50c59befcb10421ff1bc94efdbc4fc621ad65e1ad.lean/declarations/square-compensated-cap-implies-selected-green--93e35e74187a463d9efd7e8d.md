# square_compensated_cap_implies_selected_green

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04d7ae30-aa9d-3bea-d967-a9f29e18a95d",
  "kind": "theorem",
  "lexical_name": "square_compensated_cap_implies_selected_green",
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
  "slug": "square-compensated-cap-implies-selected-green--93e35e74187a463d9efd7e8d",
  "source": {
    "blob": "b8d37b8be0e176605fa127af6ef61807eb530e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SquareCompensatedReserve/Variant4ef5e36d2f9d89db104748f50c59befcb10421ff1bc94efdbc4fc621ad65e1ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93e35e74187a463d9efd7e8d63c8032aaf62a7436a7035a5677420422b1a7674",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SquareCompensatedReserve/Variant4ef5e36d2f9d89db104748f50c59befcb10421ff1bc94efdbc4fc621ad65e1ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04d7ae30-aa9d-3bea-d967-a9f29e18a95d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_compensated_cap_implies_selected_green (h : SquareCompensatedGreenSupplier) :
    SelectedGreenReserveSupplier := by
  obtain ⟨N, hN, hstart, hB, hcap⟩ := h
  refine ⟨N, hN, hstart, hB, ?_⟩
  intro K hheight hpositive
  have hN1 : 1 ≤ N := by
    have : 1 ≤ entranceScale := by norm_num [entranceScale]
    omega
  have hg := actual_prime_green_le_complete_minus_squares hN1 hpositive
  have hc := hcap K hheight hpositive
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SquareCompensatedReserve/Variant4ef5e36d2f9d89db104748f50c59befcb10421ff1bc94efdbc4fc621ad65e1ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SquareCompensatedReserve/Variant4ef5e36d2f9d89db104748f50c59befcb10421ff1bc94efdbc4fc621ad65e1ad.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8d37b8be0e176605fa127af6ef61807eb530e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
