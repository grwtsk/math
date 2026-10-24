# finiteSequences_support_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7012619d7870e3ee0266de0ef902f513c8d2936",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a9f910b-3642-5806-fc89-707ff155f6c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba6667ed-b705-a18e-9a2c-2f8e19733c6f",
  "kind": "theorem",
  "lexical_name": "finiteSequences_support_finite",
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
  "slug": "finitesequences-support-finite--f0536611e9fa685ce13daac6",
  "source": {
    "blob": "a7012619d7870e3ee0266de0ef902f513c8d2936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variant77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0536611e9fa685ce13daac661860bcb4f8d3e869c2ccc988a85b40a7937addb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variant77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba6667ed-b705-a18e-9a2c-2f8e19733c6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteSequences_support_finite (f : lp (fun _ : ℕ => ℂ) 2)
    (hf : f ∈ finiteSequences) : (Function.support f).Finite := by
  classical
  induction hf using Submodule.span_induction with
  | mem f hf =>
    obtain ⟨n, rfl⟩ := hf
    have h : Function.support (lp.single (E := fun _ : ℕ => ℂ) 2 n (1 : ℂ)) ⊆ {n} := by
      intro i hi
      by_contra hin
      have hne : i ≠ n := by simpa only [Set.mem_singleton_iff] using hin
      exact hi (lp.single_apply_ne (E := fun _ : ℕ => ℂ) 2 n (1 : ℂ) hne)
    exact (Set.finite_singleton n).subset h
  | zero => simpa only [lp.coeFn_zero, Function.support_zero] using Set.finite_empty
  | add f g _ _ hf hg =>
    apply (hf.union hg).subset
    intro n hn
    by_contra h
    have hf0 : f n = 0 := by
      by_contra hf1
      exact h (Or.inl hf1)
    have hg0 : g n = 0 := by
      by_contra hg1
      exact h (Or.inr hg1)
    exact hn (by simp [hf0, hg0])
  | smul c f _ hf =>
    apply hf.subset
    intro n hn
    by_contra h
    exact hn (by simp [lp.coeFn_smul, not_not.mp h])

/-- Every finitely supported ℓ² vector belongs to the finite-coordinate span. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variant77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variant77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7012619d7870e3ee0266de0ef902f513c8d2936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
