# lintegral_liminf_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88c83bebbb2afb93da4842a5e0ccc24646769e6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6a1eb6f-dbe2-8558-9eb6-b4a1859698fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7df4e2c2-76ad-94d1-8646-4fa90b0ba547",
  "kind": "theorem",
  "lexical_name": "lintegral_liminf_le'",
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
  "slug": "lintegral-liminf-le--7e8f1600b89586021024c1ee",
  "source": {
    "blob": "88c83bebbb2afb93da4842a5e0ccc24646769e6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 216,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Add/Variant0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e8f1600b89586021024c1eec6d645fd039aa41d8f67c6e7d1bf8b3c8426c514",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Add/Variant0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7df4e2c2-76ad-94d1-8646-4fa90b0ba547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_liminf_le' {ι : Type*} {f : ι → α → ℝ≥0∞} {u : Filter ι}
    [IsCountablyGenerated u] (h_meas : ∀ i, AEMeasurable (f i) μ) :
    ∫⁻ a, liminf (fun i => f i a) u ∂μ ≤ liminf (fun i => ∫⁻ a, f i a ∂μ) u := by
  by_cases! hu : ¬ u.NeBot
  · simp_all
  · obtain ⟨g, hg⟩ : ∃ g : ℕ → ι,
        Tendsto (fun n => ∫⁻ a, f (g n) a ∂μ) atTop (𝓝 (liminf (fun i => ∫⁻ a, f i a ∂μ) u)) ∧
        Tendsto g atTop u :=
      exists_seq_tendsto_liminf
    calc
    _ ≤ ∫⁻ a, liminf (fun n => f (g n) a) atTop ∂μ :=
      lintegral_mono fun a => hg.2.liminf_le_liminf_comp
    _ ≤ liminf (fun n => ∫⁻ a, f (g n) a ∂μ) atTop :=
      lintegral_liminf_nat_le' (fun n => h_meas (g n))
    _ = _ := hg.1.liminf_eq

/-- **Fatou's lemma**, version with `Measurable` functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Add/Variant0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Add/Variant0c26250535b5b1f627534e54df1f4b540099b82040ce1db3b2c9bbb659d42e8e.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88c83bebbb2afb93da4842a5e0ccc24646769e6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
