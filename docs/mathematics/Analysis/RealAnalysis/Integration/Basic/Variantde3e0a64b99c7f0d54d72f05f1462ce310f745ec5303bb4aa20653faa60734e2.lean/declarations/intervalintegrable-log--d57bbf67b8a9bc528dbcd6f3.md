# intervalIntegrable_log'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0738806d-5f92-b764-1add-7b08aa28ad03",
  "kind": "theorem",
  "lexical_name": "intervalIntegrable_log'",
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
  "slug": "intervalintegrable-log--d57bbf67b8a9bc528dbcd6f3",
  "source": {
    "blob": "6845e0a6898c349869a3f224d8334a0bb1989a60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 242,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantde3e0a64b99c7f0d54d72f05f1462ce310f745ec5303bb4aa20653faa60734e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d57bbf67b8a9bc528dbcd6f3b89a00b5d6a4b64a5b1f09eccc67e2fa6d363712",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variantde3e0a64b99c7f0d54d72f05f1462ce310f745ec5303bb4aa20653faa60734e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0738806d-5f92-b764-1add-7b08aa28ad03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegrable_log' : IntervalIntegrable log volume a b := by
  -- Log is even, so it suffices to consider the case 0 < a and b = 0
  apply intervalIntegrable_of_even (log_neg_eq_log · |>.symm)
  intro x hx
  -- Split integral
  apply IntervalIntegrable.trans (b := 1)
  · -- Show integrability on [0…1] using non-negativity of the derivative
    rw [← neg_neg log]
    apply IntervalIntegrable.neg
    apply intervalIntegrable_deriv_of_nonneg (g := fun x ↦ -(x * log x - x))
    · exact (continuous_mul_log.continuousOn.sub continuous_id.continuousOn).neg
    · intro s ⟨hs, _⟩
      norm_num at *
      simpa using! (hasDerivAt_id s).sub (hasDerivAt_mul_log hs.ne.symm)
    · intro s ⟨hs₁, hs₂⟩
      grind [Pi.neg_apply, log_nonpos_iff]
  · -- Show integrability on [1…t] by continuity
    apply ContinuousOn.intervalIntegrable
    apply Real.continuousOn_log.mono
    apply Set.notMem_uIcc_of_lt zero_lt_one at hx
    simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variantde3e0a64b99c7f0d54d72f05f1462ce310f745ec5303bb4aa20653faa60734e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantde3e0a64b99c7f0d54d72f05f1462ce310f745ec5303bb4aa20653faa60734e2.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6845e0a6898c349869a3f224d8334a0bb1989a60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
