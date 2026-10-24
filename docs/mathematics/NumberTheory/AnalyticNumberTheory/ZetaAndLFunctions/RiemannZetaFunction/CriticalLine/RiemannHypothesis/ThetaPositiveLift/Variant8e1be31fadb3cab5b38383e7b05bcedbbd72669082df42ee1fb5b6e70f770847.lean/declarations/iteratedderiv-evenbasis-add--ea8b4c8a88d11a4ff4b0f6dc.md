# iteratedDeriv_evenBasis_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecdd27e8-4f49-66a7-40aa-1f022720b7d5",
  "kind": "theorem",
  "lexical_name": "iteratedDeriv_evenBasis_add",
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
  "slug": "iteratedderiv-evenbasis-add--ea8b4c8a88d11a4ff4b0f6dc",
  "source": {
    "blob": "d059c297413d3df8cc94a7b0eb5e83a816c1a83d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8e1be31fadb3cab5b38383e7b05bcedbbd72669082df42ee1fb5b6e70f770847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea8b4c8a88d11a4ff4b0f6dc96a0cef2a32dcc58deb0f5a53790f98f96e6f533",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8e1be31fadb3cab5b38383e7b05bcedbbd72669082df42ee1fb5b6e70f770847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecdd27e8-4f49-66a7-40aa-1f022720b7d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDeriv_evenBasis_add (m q : ℕ) (t : ℝ) :
    iteratedDeriv (2 * q) (evenBasis (m + q)) t =
      (4 : ℝ) ^ q * evenBasis m t := by
  rw [iteratedDeriv_evenBasis]
  have hd : 2 * (m + q) - 2 * q = 2 * m := by omega
  have hf : ((2 * m).factorial : ℝ) *
      ((2 * (m + q)).descFactorial (2 * q) : ℝ) =
      ((2 * (m + q)).factorial : ℝ) := by
    exact_mod_cast (hd ▸ Nat.factorial_mul_descFactorial
      (show 2 * q ≤ 2 * (m + q) by omega))
  have hfn : ((2 * (m + q)).factorial : ℝ) ≠ 0 := by positivity
  have hfm : ((2 * m).factorial : ℝ) ≠ 0 := by positivity
  rw [hd, pow_mul]
  norm_num only [show (2 : ℝ) ^ 2 = 4 by norm_num]
  unfold evenBasis
  field_simp
  rw [← hf]
  ring

/-- Every polynomial endpoint derivative needed before `2q` integrations vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8e1be31fadb3cab5b38383e7b05bcedbbd72669082df42ee1fb5b6e70f770847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8e1be31fadb3cab5b38383e7b05bcedbbd72669082df42ee1fb5b6e70f770847.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d059c297413d3df8cc94a7b0eb5e83a816c1a83d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
