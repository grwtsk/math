# tsum_mul_le_mul_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6044dc601f11378f230b50769e12d5fe83f07f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 580,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20be210fd24a56462a072e57e9adfaa68020010a198ce016a30bd615c11813af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:accc4483-13d6-898e-230c-4c8b659697db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f6cf757-02ce-1438-16ec-8b0a0c529706",
  "kind": "theorem",
  "lexical_name": "tsum_mul_le_mul_norm",
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
  "slug": "tsum-mul-le-mul-norm--0cdc1b6d3786e45b381b09b7",
  "source": {
    "blob": "e6044dc601f11378f230b50769e12d5fe83f07f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 580,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant20be210fd24a56462a072e57e9adfaa68020010a198ce016a30bd615c11813af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cdc1b6d3786e45b381b09b7149bb9cfce74dd692cab073c0d5b704a7c22724d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variant20be210fd24a56462a072e57e9adfaa68020010a198ce016a30bd615c11813af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f6cf757-02ce-1438-16ec-8b0a0c529706`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem tsum_mul_le_mul_norm {p q : ℝ≥0∞} (hpq : p.toReal.HolderConjugate q.toReal)
    (f : lp E p) (g : lp E q) :
    (Summable fun i => ‖f i‖ * ‖g i‖) ∧ ∑' i, ‖f i‖ * ‖g i‖ ≤ ‖f‖ * ‖g‖ := by
  have hf₁ : ∀ i, 0 ≤ ‖f i‖ := fun i => norm_nonneg _
  have hg₁ : ∀ i, 0 ≤ ‖g i‖ := fun i => norm_nonneg _
  have hf₂ := lp.hasSum_norm hpq.pos f
  have hg₂ := lp.hasSum_norm hpq.symm.pos g
  obtain ⟨C, -, hC', hC⟩ :=
    Real.inner_le_Lp_mul_Lq_hasSum_of_nonneg hpq (norm_nonneg' _) (norm_nonneg' _) hf₁ hg₁ hf₂ hg₂
  rw [← hC.tsum_eq] at hC'
  exact ⟨hC.summable, hC'⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant20be210fd24a56462a072e57e9adfaa68020010a198ce016a30bd615c11813af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant20be210fd24a56462a072e57e9adfaa68020010a198ce016a30bd615c11813af.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6044dc601f11378f230b50769e12d5fe83f07f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
