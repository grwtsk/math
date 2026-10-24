# closedPrimeWeight_zero_above_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57d7087509d9790d2133ed882984e99fab88ffa1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11b33979-5b8c-1e0a-bf86-25baf40ca473",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d4cee96-6a39-9089-bc2a-b93c3f9c6742",
  "kind": "theorem",
  "lexical_name": "closedPrimeWeight_zero_above_cutoff",
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
  "slug": "closedprimeweight-zero-above-cutoff--f5d7a0851f59cbefbf6ca6f6",
  "source": {
    "blob": "57d7087509d9790d2133ed882984e99fab88ffa1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5d7a0851f59cbefbf6ca6f61a332a9bf1e444ebbbb1d0199dae6fea88d8219d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d4cee96-6a39-9089-bc2a-b93c3f9c6742`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeWeight_zero_above_cutoff {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 2 ≤ n) (hN : ⌊Real.exp (2 * A)⌋₊ < n) :
    closedPrimeWeight A n = 0 := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have he : Real.exp (2 * A) < (n : ℝ) := by
    by_contra hh
    have hf := (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).2 (le_of_not_gt hh)
    omega
  have hl : 2 * A < Real.log n := (Real.lt_log_iff_exp_lt hn0).2 he
  have hc := sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n) hA
    (hl.le.trans (le_abs_self _))
  simp [closedPrimeWeight, exponentialTest, hc]

/-- Strictly outside support, a whole scale neighborhood is zero, hence its derivative is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57d7087509d9790d2133ed882984e99fab88ffa1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
