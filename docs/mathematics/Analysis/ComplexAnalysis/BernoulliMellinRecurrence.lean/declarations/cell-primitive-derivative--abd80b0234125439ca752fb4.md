# cell_primitive_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3cd14aa-8fc2-b707-6001-30fab5fd2f1f",
  "kind": "theorem",
  "lexical_name": "cell_primitive_derivative",
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
  "slug": "cell-primitive-derivative--abd80b0234125439ca752fb4",
  "source": {
    "blob": "6036c71a64effca36022444f769c4289b646a1ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 61,
    "path": "GRWTSK/Analysis/Complex/BernoulliMellinRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abd80b0234125439ca752fb4c1048581e70eff98480482206deffbca57b58472",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3cd14aa-8fc2-b707-6001-30fab5fd2f1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cell_primitive_derivative (m k : ℕ) (s : ℂ) {t : ℝ} (ht : 0 < t) :
    HasDerivAt (fun u : ℝ =>
      (PeriodicBernoulli.value (m + 1) (u - k) : ℂ) * (u : ℂ) ^ (-s - (m : ℂ)))
      (((m + 1 : ℕ) : ℂ) * cellIntegrand m k s t -
        (s + m) * cellIntegrand (m + 1) k s t) t := by
  have hv := ((PeriodicBernoulli.hasDerivAt_value_succ m (t - k)).comp t
    ((hasDerivAt_id t).sub_const (k : ℝ))).ofReal_comp
  have hp := hasDerivAt_positive_power (-s - (m : ℂ)) ht
  convert hv.mul hp using 1
  simp only [cellIntegrand, Complex.ofReal_mul, Complex.ofReal_add,
    Complex.ofReal_natCast, Complex.ofReal_one, mul_one, Nat.cast_add, Nat.cast_one]
  rw [show -s - (m : ℂ) - 1 = -s - ((m : ℂ) + 1) by ring]
  ring

/-- One exact unit-cell integration-by-parts identity. m=0 is excluded because
B1 has a jump of one across the seam. The upper endpoint is not dropped. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/BernoulliMellinRecurrence.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6036c71a64effca36022444f769c4289b646a1ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
