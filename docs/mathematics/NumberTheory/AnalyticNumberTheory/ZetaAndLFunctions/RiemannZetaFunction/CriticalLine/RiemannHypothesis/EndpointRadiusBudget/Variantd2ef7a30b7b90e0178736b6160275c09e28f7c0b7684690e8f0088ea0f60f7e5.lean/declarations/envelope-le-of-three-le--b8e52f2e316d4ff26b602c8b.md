# envelope_le_of_three_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb56436a-bd83-6769-9e8f-89b9d6fcd62d",
  "kind": "theorem",
  "lexical_name": "envelope_le_of_three_le",
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
  "slug": "envelope-le-of-three-le--b8e52f2e316d4ff26b602c8b",
  "source": {
    "blob": "4c21eaaff2b59d78353ce5872dd756264185bcbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8e52f2e316d4ff26b602c8bf3df481ae85280fe92ee221bcb84511fa9d198fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb56436a-bd83-6769-9e8f-89b9d6fcd62d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem envelope_le_of_three_le (r A : ℝ) (hr : 3 ≤ r) (hA : r ≤ A) :
    envelope A ≤ envelope r := by
  have hrpos : 0 < r := by linarith
  let x := A / r
  have hxone : 1 ≤ x := (one_le_div hrpos).2 hA
  have hx : r * x = A := by dsimp [x]; field_simp
  have hlinear : Real.exp 1 * x ≤ Real.exp x := Real.exp_one_mul_le_exp
  have hcube : (Real.exp 1 * x) ^ 3 ≤ (Real.exp x) ^ 3 := by gcongr
  have he1 : (Real.exp (1 : ℝ)) ^ 3 = Real.exp (3 : ℝ) := by
    rw [← Real.exp_nat_mul]
    norm_num
  have hex : (Real.exp x) ^ 3 = Real.exp (3 * x) := by
    rw [← Real.exp_nat_mul]
    norm_num
  rw [mul_pow, he1, hex] at hcube
  have hdegree : 3 * x ≤ A - r + 3 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hr) (sub_nonneg.mpr hxone)]
  have hcube' := hcube.trans (Real.exp_le_exp.mpr hdegree)
  have hnorm : x ^ 3 ≤ Real.exp (A - r) := by
    calc
      _ = (Real.exp 3 * x ^ 3) * Real.exp (-3) := by
        rw [mul_right_comm, ← Real.exp_add]
        norm_num
      _ ≤ Real.exp (A - r + 3) * Real.exp (-3) :=
        mul_le_mul_of_nonneg_right hcube' (Real.exp_pos _).le
      _ = _ := by rw [← Real.exp_add]; congr 1; ring
  have hbound := mul_le_mul_of_nonneg_right hnorm
    (show 0 ≤ 2 * r ^ 3 * Real.exp (-A) by positivity)
  have hleft : x ^ 3 * (2 * r ^ 3 * Real.exp (-A)) = envelope A := by
    unfold envelope
    rw [← hx]
    ring
  have hright : Real.exp (A - r) * (2 * r ^ 3 * Real.exp (-A)) = envelope r := by
    unfold envelope
    calc
      _ = 2 * r ^ 3 * (Real.exp (A - r) * Real.exp (-A)) := by ring
      _ = _ := by rw [← Real.exp_add]; congr 1; congr 1; ring
  rwa [hleft, hright] at hbound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointRadiusBudget/Variantd2ef7a30b7b90e0178736b6160275c09e28f7c0b7684690e8f0088ea0f60f7e5.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c21eaaff2b59d78353ce5872dd756264185bcbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
