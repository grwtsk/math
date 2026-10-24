# LieModule.isNilpotent_toEnd_of_mem_rootSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce53fd59fa576f87b40d863df4a94ea81f0d2926",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d355cf4c-6560-18b7-bde7-f9ac0460d83d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e7b475d-b031-9615-40d8-13aba757eb81",
  "kind": "lemma",
  "lexical_name": "LieModule.isNilpotent_toEnd_of_mem_rootSpace",
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
  "slug": "liemodule-isnilpotent-toend-of-mem-rootspace--6526e64859a8cbb76c2a33de",
  "source": {
    "blob": "ce53fd59fa576f87b40d863df4a94ea81f0d2926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 387,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6526e64859a8cbb76c2a33deb95eeaaa001ed43c75a00b6d4e36187a4e9c5fa8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e7b475d-b031-9615-40d8-13aba757eb81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LieModule.isNilpotent_toEnd_of_mem_rootSpace
    {x : L} {χ : H → K} (hχ : χ ≠ 0) (hx : x ∈ rootSpace H χ) :
    _root_.IsNilpotent (toEnd K L M x) := by
  refine Module.End.isNilpotent_iff_of_finite.mpr fun m ↦ ?_
  have hm : m ∈ ⨆ χ : LieModule.Weight K H M, genWeightSpace M χ := by
    simp [iSup_genWeightSpace_eq_top' K H M]
  induction hm using LieSubmodule.iSup_induction' with
  | zero => exact ⟨0, map_zero _⟩
  | mem χ₂ m₂ hm₂ =>
    obtain ⟨n, -, hn⟩ := exists_genWeightSpace_smul_add_eq_bot M χ χ₂ hχ
    use n
    have := toEnd_pow_apply_mem hx hm₂ n
    rwa [hn, LieSubmodule.mem_bot] at this
  | add m₁ m₂ hm₁ hm₂ hm₁' hm₂' =>
    obtain ⟨n₁, hn₁⟩ := hm₁'
    obtain ⟨n₂, hn₂⟩ := hm₂'
    refine ⟨max n₁ n₂, ?_⟩
    rw [map_add, Module.End.pow_map_zero_of_le le_sup_left hn₁,
      Module.End.pow_map_zero_of_le le_sup_right hn₂, add_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce53fd59fa576f87b40d863df4a94ea81f0d2926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
