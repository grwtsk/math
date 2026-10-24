# primeHarmonicPrefix_eq_log_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "734d2cb1575c53176cbcebf3daf4a4b56729dff3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f97095f2-6887-bb51-ce47-e8b137207b7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e578614-c6e8-9aef-9771-32105190eb69",
  "kind": "theorem",
  "lexical_name": "primeHarmonicPrefix_eq_log_sum",
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
  "slug": "primeharmonicprefix-eq-log-sum--7bf3e3a9e08af6a87911476b",
  "source": {
    "blob": "734d2cb1575c53176cbcebf3daf4a4b56729dff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bf3e3a9e08af6a87911476bc34d938496b497663dd8100dd51f5104e3b5fbe7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e578614-c6e8-9aef-9771-32105190eb69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeHarmonicPrefix_eq_log_sum (u : ℝ) :
    primeHarmonicPrefix u =
      ∑ n ∈ (Finset.Icc 2 ⌊Real.exp u⌋₊).filter Nat.Prime,
        Real.log (n : ℝ) / (n : ℝ) := by
  unfold primeHarmonicPrefix
  apply Finset.sum_congr rfl
  intro n hn
  rw [ArithmeticFunction.vonMangoldt_apply_prime (Finset.mem_filter.mp hn).2]

/-- The lower logarithmic endpoint contains no prime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `734d2cb1575c53176cbcebf3daf4a4b56729dff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
