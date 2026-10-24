# exists_nat_large

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b44de47ee83db5d7c37bbe3031f7c5af525c9f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67283e5d-caa0-d062-d991-c25fd06388f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f09cea38-a300-9330-228e-9498b036b9d3",
  "kind": "lemma",
  "lexical_name": "exists_nat_large",
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
  "slug": "exists-nat-large--74ec05cfd3efd03753e25c8b",
  "source": {
    "blob": "8b44de47ee83db5d7c37bbe3031f7c5af525c9f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 176,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74ec05cfd3efd03753e25c8bfa97f88b34c3916a18dcea22a9f2da23d845bda7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f09cea38-a300-9330-228e-9498b036b9d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_nat_large (a' b' : ℝ) {ε : ℝ} (hε : 0 < ε) : ∃ (N : ℕ), 0 < N ∧
    a' / N * (b' + a' / N) ≤ ε := by
  have A : Tendsto (fun (N : ℝ) ↦ a' / N * (b' + a' / N)) atTop (𝓝 (0 * (b' + 0))) := by
    apply Tendsto.mul
    · exact Tendsto.div_atTop tendsto_const_nhds tendsto_id
    · exact Tendsto.add tendsto_const_nhds (Tendsto.div_atTop tendsto_const_nhds tendsto_id)
  have B := A.comp tendsto_natCast_atTop_atTop
  simp only [add_zero, zero_mul] at B
  obtain ⟨N, hN, h'N⟩ := (((tendsto_order.1 B).2 _ hε).and (Ici_mem_atTop 1)).exists
  exact ⟨N, h'N, hN.le⟩

set_option backward.isDefEq.respectTransparency false in
/-- The main estimate in the proof of the Riesz-Markov-Kakutani: `Λ f` is bounded above by the
integral of `f` with respect to the `rieszMeasure` associated to `Λ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b44de47ee83db5d7c37bbe3031f7c5af525c9f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
