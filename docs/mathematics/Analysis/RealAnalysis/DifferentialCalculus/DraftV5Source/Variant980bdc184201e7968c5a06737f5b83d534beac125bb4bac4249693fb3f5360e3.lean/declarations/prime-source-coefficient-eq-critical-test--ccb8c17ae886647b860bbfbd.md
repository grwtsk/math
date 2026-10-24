# prime_source_coefficient_eq_critical_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "465d01dc99a6a7a89fd28709f1d6494823d0017a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/980bdc184201e7968c5a06737f5b83d534beac125bb4bac4249693fb3f5360e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd1773f7-6ac6-b727-198c-ff2707342886",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a1834dc-9d7c-05bc-a57a-7313bc4bc443",
  "kind": "theorem",
  "lexical_name": "prime_source_coefficient_eq_critical_test",
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
  "slug": "prime-source-coefficient-eq-critical-test--ccb8c17ae886647b860bbfbd",
  "source": {
    "blob": "465d01dc99a6a7a89fd28709f1d6494823d0017a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DraftV5Source/Variant980bdc184201e7968c5a06737f5b83d534beac125bb4bac4249693fb3f5360e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccb8c17ae886647b860bbfbd053c51facafaa01606d850c859421824cc358b58",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DraftV5Source/Variant980bdc184201e7968c5a06737f5b83d534beac125bb4bac4249693fb3f5360e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a1834dc-9d7c-05bc-a57a-7313bc4bc443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_source_coefficient_eq_critical_test (A : ℝ) {p : ℕ} (hp : p.Prime) :
    ArithmeticFunction.vonMangoldt p * closedPrimeWeight A p =
      Real.log (p : ℝ) / (p : ℝ) * criticalPrimeTest A (Real.log p) := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have he : Real.exp (-Real.log (p : ℝ) / 2) =
      Real.exp (Real.log (p : ℝ) / 2) / (p : ℝ) := by
    calc
      Real.exp (-Real.log (p : ℝ) / 2) =
          Real.exp (Real.log (p : ℝ) / 2 - Real.log p) := by congr 1; ring
      _ = Real.exp (Real.log (p : ℝ) / 2) / Real.exp (Real.log p) :=
        Real.exp_sub _ _
      _ = Real.exp (Real.log (p : ℝ) / 2) / (p : ℝ) := by rw [Real.exp_log hp0]
  rw [ArithmeticFunction.vonMangoldt_apply_prime hp]
  unfold closedPrimeWeight exponentialTest criticalPrimeTest
  rw [he]
  ring

/-- The first-prime sector is exactly the critical logarithmic quadrature,
with the original closed floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DraftV5Source/Variant980bdc184201e7968c5a06737f5b83d534beac125bb4bac4249693fb3f5360e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DraftV5Source/Variant980bdc184201e7968c5a06737f5b83d534beac125bb4bac4249693fb3f5360e3.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465d01dc99a6a7a89fd28709f1d6494823d0017a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
