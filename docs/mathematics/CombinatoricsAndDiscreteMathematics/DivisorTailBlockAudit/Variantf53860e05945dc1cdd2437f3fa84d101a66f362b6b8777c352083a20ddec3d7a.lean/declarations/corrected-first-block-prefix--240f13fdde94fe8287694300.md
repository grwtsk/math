# corrected_first_block_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43480912-ce1a-41f0-998e-27a15ad29215",
  "kind": "theorem",
  "lexical_name": "corrected_first_block_prefix",
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
  "slug": "corrected-first-block-prefix--240f13fdde94fe8287694300",
  "source": {
    "blob": "ac46ebe9edb95d44e9280e65f219f5baa1a0dff1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variantf53860e05945dc1cdd2437f3fa84d101a66f362b6b8777c352083a20ddec3d7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:240f13fdde94fe828769430076b5f267d26f833b14c03d72393549fd65a202fd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variantf53860e05945dc1cdd2437f3fa84d101a66f362b6b8777c352083a20ddec3d7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43480912-ce1a-41f0-998e-27a15ad29215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_first_block_prefix (X N : ℕ) (hX : 1 ≤ X)
    (hXN : X ≤ N) (hN2 : N < 2 * X) :
    (1 : ℝ) -
      ((∑ n ∈ Finset.Icc 1 N,
          ∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) -
        (X : ℝ) * mobiusReciprocalSum X) =
      (∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ)) -
        (∑ n ∈ Finset.Icc 1 X, (moebius n : ℝ)) +
          (X : ℝ) * mobiusReciprocalSum X := by
  have hu : Finset.Icc 1 N = Finset.Icc 1 X ∪ Finset.Ioc X N := by
    ext n
    simp only [Finset.mem_union, Finset.mem_Icc, Finset.mem_Ioc]
    omega
  have hd : Disjoint (Finset.Icc 1 X) (Finset.Ioc X N) := by
    apply Finset.disjoint_left.mpr
    intro n hn hn'
    simp only [Finset.mem_Icc, Finset.mem_Ioc] at hn hn'
    omega
  have hi : (∑ n ∈ Finset.Icc 1 X,
      ∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) = 1 := by
    calc
      _ = ∑ n ∈ Finset.Icc 1 X, if n = 1 then (1 : ℝ) else 0 := by
        apply Finset.sum_congr rfl
        intro n hn
        exact before_cutoff X n (Finset.mem_Icc.mp hn).2
      _ = 1 := by simp [hX]
  have ht : (∑ n ∈ Finset.Ioc X N,
      ∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) =
      -(∑ n ∈ Finset.Ioc X N, (moebius n : ℝ)) := by
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro n hn
    have hn' := Finset.mem_Ioc.mp hn
    exact first_dyadic_block X n hn'.1 (lt_of_le_of_lt hn'.2 hN2)
  rw [hu, Finset.sum_union hd, Finset.sum_union hd, hi, ht]
  ring

end
end DivisorTailBlockScratch

set_option pp.proofs true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#print DivisorTailBlockScratch.before_cutoff
#print axioms DivisorTailBlockScratch.before_cutoff
#print DivisorTailBlockScratch.first_dyadic_block
#print axioms DivisorTailBlockScratch.first_dyadic_block
#print DivisorTailBlockScratch.corrected_endpoint
#print axioms DivisorTailBlockScratch.corrected_endpoint
#print DivisorTailBlockScratch.corrected_first_block_prefix
#print axioms DivisorTailBlockScratch.corrected_first_block_prefix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variantf53860e05945dc1cdd2437f3fa84d101a66f362b6b8777c352083a20ddec3d7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variantf53860e05945dc1cdd2437f3fa84d101a66f362b6b8777c352083a20ddec3d7a.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac46ebe9edb95d44e9280e65f219f5baa1a0dff1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
