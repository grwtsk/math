# IsCircuit.strong_elimination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd9bf31de4a8209bcd163db1349199f94a10c3e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 494,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9373343-d976-63bf-dfba-e4b6fee40a69",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdba195d-cba0-fb5b-4b2a-b9c388a88e6c",
  "kind": "lemma",
  "lexical_name": "IsCircuit.strong_elimination",
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
  "slug": "iscircuit-strong-elimination--13d68161d28fda4d98b2c1d3",
  "source": {
    "blob": "bd9bf31de4a8209bcd163db1349199f94a10c3e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 494,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13d68161d28fda4d98b2c1d388101c20b88f0a7d8704ab97f1dc2297d7afa108",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdba195d-cba0-fb5b-4b2a-b9c388a88e6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCircuit.strong_elimination (hC₁ : M.IsCircuit C₁) (hC₂ : M.IsCircuit C₂) (heC₁ : e ∈ C₁)
    (heC₂ : e ∈ C₂) (hfC₁ : f ∈ C₁) (hfC₂ : f ∉ C₂) :
    ∃ C ⊆ (C₁ ∪ C₂) \ {e}, M.IsCircuit C ∧ f ∈ C := by
  obtain ⟨C, hCs, hC, hfC⟩ := hC₁.strong_multi_elimination (fun i : Unit ↦ e) (fun _ ↦ C₂) f
    (by simpa) (by simpa) (by simpa) (by simp) (by simpa) (by simpa)
  exact ⟨C, hCs.trans (sdiff_subset_sdiff (by simp) (by simp)), hC, hfC⟩

/-- The circuit elimination axiom : for any pair of distinct circuits `C₁, C₂` and any `e`,
some circuit is contained in `(C₁ ∪ C₂) \ {e}`.

This is one of the axioms when defining a finitary matroid via circuits;
as an axiom, it is usually stated with the extra assumption that `e ∈ C₁ ∩ C₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd9bf31de4a8209bcd163db1349199f94a10c3e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
