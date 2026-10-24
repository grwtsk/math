# shortDivisorCumulative_eq_continuous_add_defect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b6b7c7c-cb2f-8bae-28cd-f562106c8a12",
  "kind": "theorem",
  "lexical_name": "shortDivisorCumulative_eq_continuous_add_defect",
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
  "slug": "shortdivisorcumulative-eq-continuous-add-defect--7d281267cb61f600d6ee97ec",
  "source": {
    "blob": "3a6c85d636a18004dca5a3744488efd0708da0ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 130,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variant8e87f1cfc01f6be93e9fea85c290fe27dc44fac71040dd7ff02cbf046d9c04ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d281267cb61f600d6ee97ec6d1a19c1b73acf40f09eef5f1608ca0b75491d1a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variant8e87f1cfc01f6be93e9fea85c290fe27dc44fac71040dd7ff02cbf046d9c04ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b6b7c7c-cb2f-8bae-28cd-f562106c8a12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortDivisorCumulative_eq_continuous_add_defect (U : ℕ) {x : ℝ} (hx : 0 < x) :
    shortDivisorCumulative U x =
      x * (Real.log x - 1) * shortReciprocalMoebius U -
        x * shortLogReciprocalMoebius U + shortFactorialDefect U x := by
  rw [shortDivisorCumulative_eq_log_factorial]
  unfold shortReciprocalMoebius shortLogReciprocalMoebius shortFactorialDefect
  simp_rw [Finset.mul_sum, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  have hd0 : (d : ℝ) ≠ 0 := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : d ≠ 0)
  unfold factorialLogDefect
  rw [Real.log_div hx.ne' hd0]
  field_simp
  ring

/-- The actual G retains psi, the negative unit floor, both signed moments and the full defect. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variant8e87f1cfc01f6be93e9fea85c290fe27dc44fac71040dd7ff02cbf046d9c04ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/89359cd36be561bb8a10SourceActualFactorialTailDecomposition/Variant8e87f1cfc01f6be93e9fea85c290fe27dc44fac71040dd7ff02cbf046d9c04ad.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a6c85d636a18004dca5a3744488efd0708da0ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
