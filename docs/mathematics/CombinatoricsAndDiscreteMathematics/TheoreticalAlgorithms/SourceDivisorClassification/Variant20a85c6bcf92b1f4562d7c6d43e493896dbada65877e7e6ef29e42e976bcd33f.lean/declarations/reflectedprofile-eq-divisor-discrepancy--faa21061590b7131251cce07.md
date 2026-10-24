# reflectedProfile_eq_divisor_discrepancy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b71afcfd-38a4-ab8f-e565-e274b8d0941d",
  "kind": "theorem",
  "lexical_name": "reflectedProfile_eq_divisor_discrepancy",
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
  "slug": "reflectedprofile-eq-divisor-discrepancy--faa21061590b7131251cce07",
  "source": {
    "blob": "84379cf16098f156e85859318c1fb7351abaaec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variant20a85c6bcf92b1f4562d7c6d43e493896dbada65877e7e6ef29e42e976bcd33f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faa21061590b7131251cce075fa221e5e262f6f7a7b0adc04aa83747cda331ab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variant20a85c6bcf92b1f4562d7c6d43e493896dbada65877e7e6ef29e42e976bcd33f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b71afcfd-38a4-ab8f-e565-e274b8d0941d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedProfile_eq_divisor_discrepancy (A : ℝ) (U N : ℕ) (hU : 1 ≤ U)
    (x : ℝ) :
    reflectedProfile A (Finset.Ioc U N)
        (fun n => centeredBeta U n / Real.sqrt (n : ℝ)) x =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * divisorDiscrepancyProfile A U N d x := by
  classical
  unfold reflectedProfile divisorDiscrepancyProfile
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n hn
  rw [centeredBeta_eq_divisor_discrepancy U n hU (Finset.mem_Ioc.mp hn).1,
    Finset.sum_div, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro d hd
  ring

/-- Reindexing a multiple retains the exact source translation and square-root scaling. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variant20a85c6bcf92b1f4562d7c6d43e493896dbada65877e7e6ef29e42e976bcd33f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variant20a85c6bcf92b1f4562d7c6d43e493896dbada65877e7e6ef29e42e976bcd33f.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84379cf16098f156e85859318c1fb7351abaaec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
