# actualBilateral_conjugated_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61b3b502-9624-36b5-f4c1-3f3c36460dc7",
  "kind": "theorem",
  "lexical_name": "actualBilateral_conjugated_eq",
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
  "slug": "actualbilateral-conjugated-eq--7db1c9a0941b3cc0bb788a22",
  "source": {
    "blob": "005dbd58b3cca9e819bad8bc6f7fb56e304f6e2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualConstructedStripSymmetryOrbit/Variant63d5762b26c782d5acc025f66bb14345b2f5ea798f1bbda4238a0eea35f379df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7db1c9a0941b3cc0bb788a22850d1547e3166905fa01cf702e4204e4da09f86c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualConstructedStripSymmetryOrbit/Variant63d5762b26c782d5acc025f66bb14345b2f5ea798f1bbda4238a0eea35f379df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61b3b502-9624-36b5-f4c1-3f3c36460dc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualBilateral_conjugated_eq {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    actualBilateralCorrelationTransform A (conj z) =
      conj (actualBilateralCorrelationTransform A z) := by
  have hord : -(2 * A) ≤ 2 * A := by linarith
  unfold actualBilateralCorrelationTransform
  rw [intervalIntegral.integral_of_le hord, intervalIntegral.integral_of_le hord,
    ← integral_conj]
  apply integral_congr_ae
  filter_upwards [] with t
  simp only [map_mul, ← Complex.exp_conj, Complex.conj_ofReal]

/-- An independently constructed symmetry orbit, with four literal ordinary weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualConstructedStripSymmetryOrbit/Variant63d5762b26c782d5acc025f66bb14345b2f5ea798f1bbda4238a0eea35f379df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualConstructedStripSymmetryOrbit/Variant63d5762b26c782d5acc025f66bb14345b2f5ea798f1bbda4238a0eea35f379df.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `005dbd58b3cca9e819bad8bc6f7fb56e304f6e2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
