# actual_regular_zeta_second_derivative_at_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18172750a035c926aefc2b5674d5ea948170b0ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b3db14b-07be-e8d1-473a-467d22a84e71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4479903-c6b8-067a-f092-d6381679816e",
  "kind": "theorem",
  "lexical_name": "actual_regular_zeta_second_derivative_at_one",
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
  "slug": "actual-regular-zeta-second-derivative-at-one--201887dd9d32bc07676431df",
  "source": {
    "blob": "18172750a035c926aefc2b5674d5ea948170b0ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:201887dd9d32bc07676431df02efb6d8dc02f7a749dd63ff80a8dd6ca25c1c5e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4479903-c6b8-067a-f092-d6381679816e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_regular_zeta_second_derivative_at_one :
    HasDerivAt (deriv riemannZeta₁) (2 * deriv riemannZeta₀ 1) 1 := by
  have hr := (differentiable_riemannZeta₀ 1).hasDerivAt
  have hrr := (differentiable_riemannZeta₀.deriv 1).hasDerivAt
  have hid := (hasDerivAt_id (1 : ℂ)).sub_const 1
  have h := hr.add (hid.mul hrr)
  have hfun : deriv riemannZeta₁ =
      fun z => riemannZeta₀ z + (z - 1) * deriv riemannZeta₀ z := by
    funext z
    exact actual_regular_zeta_derivative z
  rw [hfun]
  simpa [two_mul] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt02/Variantad11248c2de3a54e1e2ab433cc4e5a81e0db7ab20eaf5cce92b84e0d268ec23d.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18172750a035c926aefc2b5674d5ea948170b0ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
