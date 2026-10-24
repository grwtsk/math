# tendsto_cobounded_of_meromorphicOrderAt_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e26856a812c459c1a98898931497116f1648d6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4300b79-74d5-0525-247c-a5d38f46adfb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d79835e-0dbb-7a88-7101-f73e9d8315e3",
  "kind": "lemma",
  "lexical_name": "tendsto_cobounded_of_meromorphicOrderAt_neg",
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
  "slug": "tendsto-cobounded-of-meromorphicorderat-neg--aef7bfb00bf2f7974ded8a45",
  "source": {
    "blob": "9e26856a812c459c1a98898931497116f1648d6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 155,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aef7bfb00bf2f7974ded8a455392a5fcd961e4d44bfd2036e794c1140b77506b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d79835e-0dbb-7a88-7101-f73e9d8315e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_cobounded_of_meromorphicOrderAt_neg (ho : meromorphicOrderAt f x < 0) :
    Tendsto f (𝓝[≠] x) (Bornology.cobounded E) := by
  have hf : MeromorphicAt f x := meromorphicAt_of_meromorphicOrderAt_ne_zero ho.ne
  simp only [← tendsto_norm_atTop_iff_cobounded]
  obtain ⟨m, hm⟩ := WithTop.ne_top_iff_exists.mp ho.ne_top
  have m_neg : m < 0 := by simpa [← hm] using ho
  rcases (meromorphicOrderAt_eq_int_iff hf).1 hm.symm with ⟨g, g_an, gx, hg⟩
  have A : Tendsto (fun z ↦ ‖(z - x) ^ m • g z‖) (𝓝[≠] x) atTop := by
    simp only [norm_smul]
    apply Filter.Tendsto.atTop_mul_pos (C := ‖g x‖) (by simp [gx]) _
      g_an.continuousAt.continuousWithinAt.tendsto.norm
    have : Tendsto (fun z ↦ z - x) (𝓝[≠] x) (𝓝[≠] 0) := by
      refine tendsto_nhdsWithin_iff.2 ⟨?_, ?_⟩
      · have : ContinuousWithinAt (fun z ↦ z - x) ({x}ᶜ) x :=
          ContinuousAt.continuousWithinAt (by fun_prop)
        simpa using this.tendsto
      · filter_upwards [self_mem_nhdsWithin] with y hy
        simpa [sub_eq_zero] using hy
    apply Tendsto.comp (NormedField.tendsto_norm_zpow_nhdsNE_zero_atTop m_neg) this
  apply A.congr'
  filter_upwards [hg] with z hz using by simp [hz]

@[deprecated (since := "2025-05-22")] alias MeromorphicAt.tendsto_cobounded_of_order_neg :=
  tendsto_cobounded_of_meromorphicOrderAt_neg

/-- If the order of a meromorphic function is zero, then this function converges to a nonzero
limit at this point. See also the iff version `tendsto_ne_zero_iff_meromorphicOrderAt_eq_zero`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Variant07f01bc23fab1cfc8309a489971f70b99202594228741df986da22279501aff5.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e26856a812c459c1a98898931497116f1648d6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
