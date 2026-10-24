# auxiliary_inner_eq_quotient_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffb52cafb77e6bdaa68868553b933d91267f3c12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0bee1282-960a-8fea-65f7-5c4ebfa8d2ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e5cc04e-469d-4ab4-078b-ebb94ba6dbf7",
  "kind": "theorem",
  "lexical_name": "auxiliary_inner_eq_quotient_upper",
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
  "slug": "auxiliary-inner-eq-quotient-upper--3dcbd38879268763f2b50582",
  "source": {
    "blob": "ffb52cafb77e6bdaa68868553b933d91267f3c12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variant2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dcbd38879268763f2b50582a00647420d12aee3cd977e49a4780c87c5fd1930",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variant2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e5cc04e-469d-4ab4-078b-ebb94ba6dbf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem auxiliary_inner_eq_quotient_upper (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) (U m : ℕ) (hm : U < m) :
    (∑ k ∈ Finset.Ioc U (sourceKernelCutoff A),
      sourcePlainWeight A ((d * m * k : ℕ) : ℝ)) =
    ∑ k ∈ Finset.Ioc U (sourceKernelCutoff A / d),
      sourcePlainWeight A ((d * m * k : ℕ) : ℝ) := by
  classical
  symm
  apply Finset.sum_subset
    (by
      intro k hk
      exact Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hk).1,
        (Finset.mem_Ioc.mp hk).2.trans (Nat.div_le_self _ _)⟩)
  intro k hk hnot
  have hquot : sourceKernelCutoff A / d < k := by
    by_contra h
    apply hnot
    exact Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hk).1, by omega⟩
  have hdk : sourceKernelCutoff A < d * k := by
    apply lt_of_not_ge
    intro h
    have hle : k ≤ sourceKernelCutoff A / d :=
      (Nat.le_div_iff_mul_le hd).2 (by simpa only [Nat.mul_comm] using h)
    omega
  have hmpos : 1 ≤ m := by omega
  have hp : sourceKernelCutoff A < d * m * k :=
    hdk.trans_le (by
      simpa only [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm] using
        (Nat.le_mul_of_pos_right (d * k) hmpos))
  exact sourcePlainWeight_zero_of_cutoff_lt A hA (d * m * k) hp

/-- The physical quotient row is the auxiliary strict row plus the entire clipped strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variant2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variant2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffb52cafb77e6bdaa68868553b933d91267f3c12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
