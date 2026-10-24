# phase_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4b4199a-df69-9bac-b443-f0704ea9e319",
  "kind": "theorem",
  "lexical_name": "phase_integrable",
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
  "slug": "phase-integrable--cfe5616bb6e0faa1bce52155",
  "source": {
    "blob": "b19e6c2b3bf77ea9c54304223d26bb243a1e87c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfe5616bb6e0faa1bce52155553a29c7dc297bf0cf13efc2caba88402dc4555d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4b4199a-df69-9bac-b443-f0704ea9e319`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phase_integrable (n : ℕ) (z : ℂ) :
    IntegrableOn (fun t : ℝ => (thetaPhi t : ℂ) *
      ((1 + Complex.I * (t : ℂ) * z / n) ^ (2 * n) +
        (1 - Complex.I * (t : ℂ) * z / n) ^ (2 * n))) (Ioi (0 : ℝ)) := by
  simp_rw [phase_binomial, mul_assoc, mul_sum, ← mul_assoc]
  exact (integrable_finsetSum _ fun k _ =>
    (phase_monomial_integrable n k z).const_mul
      (2 * ((2 * n).choose (2 * k) : ℂ))).congr (by
        filter_upwards [] with t
        apply Finset.sum_congr rfl
        intro k _
        ring)

/-- Integration of one phase monomial preserves the literal source moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variant05388fd19874e9de972d8f1017e8fbc3e1bae995805f59ada667de52cb9d9d2f.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b19e6c2b3bf77ea9c54304223d26bb243a1e87c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
