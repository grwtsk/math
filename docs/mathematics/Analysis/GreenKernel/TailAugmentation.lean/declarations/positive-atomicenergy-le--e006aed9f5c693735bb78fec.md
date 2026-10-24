# positive_atomicEnergy_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bda5695-370e-83c0-0b5b-aabf5b6b0822",
  "kind": "theorem",
  "lexical_name": "positive_atomicEnergy_le",
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
  "slug": "positive-atomicenergy-le--e006aed9f5c693735bb78fec",
  "source": {
    "blob": "3633cf17818fe9473fb46a05249b8e479cc01894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 129,
    "path": "GRWTSK/Analysis/GreenKernel/TailAugmentation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e006aed9f5c693735bb78fecaa6786582e140e2c709f9e4c2da878ada3b6338d",
  "verification": {
    "reference": "docs/verification/Analysis/GreenKernel/TailAugmentation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bda5695-370e-83c0-0b5b-aabf5b6b0822`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_atomicEnergy_le {ι : Type*} (s : Finset ι) (a r : ι → ℝ)
    (ha : ∀ i∈s, 0≤a i) (hr : ∀ i∈s, r i∈Icc (0:ℝ) 1) :
    atomicEnergy s a r≤2*(∑ i∈s, a i)^2 := by
  rw [atomicEnergy_eq_gram s a r hr]
  calc
    (∑ i∈s, ∑ j∈s, a i*a j*completeKernel (r i) (r j)) ≤
        ∑ i∈s, ∑ j∈s, a i*a j*2 := by
      apply Finset.sum_le_sum
      intro i hi
      apply Finset.sum_le_sum
      intro j hj
      have hk : completeKernel (r i) (r j)≤2 := by
        unfold completeKernel
        linarith [(min_le_left (r i) (r j)).trans (hr i hi).2]
      exact mul_le_mul_of_nonneg_left hk (mul_nonneg (ha i hi) (ha j hj))
    _ = 2*(∑ i∈s, a i)^2 := by
      simp_rw [mul_assoc,← Finset.mul_sum,← Finset.sum_mul]
      ring

end GRWTSK.Analysis.GreenKernel.TailAugmentation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GreenKernel/TailAugmentation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GreenKernel/TailAugmentation.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3633cf17818fe9473fb46a05249b8e479cc01894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
