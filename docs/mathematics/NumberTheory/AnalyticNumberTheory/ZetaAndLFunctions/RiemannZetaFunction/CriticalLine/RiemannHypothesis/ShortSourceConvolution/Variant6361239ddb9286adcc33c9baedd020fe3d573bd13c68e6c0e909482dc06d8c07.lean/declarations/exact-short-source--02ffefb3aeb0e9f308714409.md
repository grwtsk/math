# exact_short_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95a404ae-41c5-81d5-09b8-f0931c4b98b9",
  "kind": "theorem",
  "lexical_name": "exact_short_source",
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
  "slug": "exact-short-source--02ffefb3aeb0e9f308714409",
  "source": {
    "blob": "4f98a79eadaf12e155591d6f8594404f001e6e66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortSourceConvolution/Variant6361239ddb9286adcc33c9baedd020fe3d573bd13c68e6c0e909482dc06d8c07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02ffefb3aeb0e9f308714409d595f6495d63fbf1a58fb0b3f038a056f9b28830",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortSourceConvolution/Variant6361239ddb9286adcc33c9baedd020fe3d573bd13c68e6c0e909482dc06d8c07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95a404ae-41c5-81d5-09b8-f0931c4b98b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_short_source (n : ℕ) :
    lowPart 2 centeredMangoldt n = if n = 2 then Real.log 2 - 1 else 0 := by
  by_cases hn : n ≤ 2
  · have hcases : n = 0 ∨ n = 1 ∨ n = 2 := by omega
    rcases hcases with rfl | rfl | rfl
    · simp [lowPart]
    · simp [lowPart, centeredMangoldt_one]
    · rw [show lowPart 2 centeredMangoldt 2 = centeredMangoldt 2 by simp [lowPart],
        centeredMangoldt_apply (by omega),
        ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2)]
      simp
  · have hn2 : n ≠ 2 := by omega
    simp [lowPart, hn, hn2]

/-- The short correction in this module, with the following exact parameterization.

def shortCorrection : ArithmeticFunction ℝ := (lowPart 1 μ * lowPart 2 centeredMangoldt) * ζ
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortSourceConvolution/Variant6361239ddb9286adcc33c9baedd020fe3d573bd13c68e6c0e909482dc06d8c07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortSourceConvolution/Variant6361239ddb9286adcc33c9baedd020fe3d573bd13c68e6c0e909482dc06d8c07.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f98a79eadaf12e155591d6f8594404f001e6e66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
