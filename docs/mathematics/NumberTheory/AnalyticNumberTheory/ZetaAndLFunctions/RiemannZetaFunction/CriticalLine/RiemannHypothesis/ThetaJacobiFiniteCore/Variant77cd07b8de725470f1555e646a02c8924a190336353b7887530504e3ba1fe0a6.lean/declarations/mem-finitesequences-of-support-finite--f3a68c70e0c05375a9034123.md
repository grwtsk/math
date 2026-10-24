# mem_finiteSequences_of_support_finite

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
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40c79821-f867-b3da-a8a7-5c0db70b7e9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:554c1465-29c5-1f7a-9885-2cb48f944677",
  "kind": "theorem",
  "lexical_name": "mem_finiteSequences_of_support_finite",
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
  "slug": "mem-finitesequences-of-support-finite--f3a68c70e0c05375a9034123",
  "source": {
    "blob": "a7012619d7870e3ee0266de0ef902f513c8d2936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variant77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3a68c70e0c05375a9034123dc33328cf23bea86e98f87e0d68cb270d763465b",
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

Occurrence: `result:554c1465-29c5-1f7a-9885-2cb48f944677`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_finiteSequences_of_support_finite (f : lp (fun _ : ℕ => ℂ) 2)
    (hf : (Function.support f).Finite) : f ∈ finiteSequences := by
  classical
  let s := hf.toFinset
  have heq : f = ∑ n ∈ s, lp.single (E := fun _ : ℕ => ℂ) 2 n (f n) := by
    apply lp.ext
    funext i
    simp only [lp.coeFn_sum, Finset.sum_apply, lp.single_apply, Finset.sum_pi_single]
    by_cases hi : i ∈ s
    · simp [hi]
    · have hf0 : f i = 0 := by
        have hnot : i ∉ Function.support f := by simpa only [s, hf.mem_toFinset] using hi
        exact not_not.mp hnot
      simp [hi, hf0]
  rw [heq]
  apply Submodule.sum_mem
  intro n _
  have hs : (lp.single (E := fun _ : ℕ => ℂ) 2 n (f n) : lp (fun _ : ℕ => ℂ) 2) =
      f n • lp.single (E := fun _ : ℕ => ℂ) 2 n (1 : ℂ) := by
    simpa only [smul_eq_mul, mul_one] using
      (lp.single_smul (E := fun _ : ℕ => ℂ) 2 n (f n) (1 : ℂ))
  rw [hs]
  exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨n, rfl⟩)

/-- The algebraic span is exactly the literal finitely supported ℓ² sequences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variant77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiFiniteCore/Variant77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7012619d7870e3ee0266de0ef902f513c8d2936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
