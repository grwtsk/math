# abs_edgeDensity_sub_edgeDensity_le_one_sub_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab7cb494f5e279a5b5cb6d28dc43e6e6782ead26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbfc6141-65cf-bd56-d4cf-a71ce9bdfbd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3326442-fa00-1219-86e5-1061aef80499",
  "kind": "theorem",
  "lexical_name": "abs_edgeDensity_sub_edgeDensity_le_one_sub_mul",
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
  "slug": "abs-edgedensity-sub-edgedensity-le-one-sub-mul--e3bf1850f4183cdf555ff974",
  "source": {
    "blob": "ab7cb494f5e279a5b5cb6d28dc43e6e6782ead26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 183,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3bf1850f4183cdf555ff9741a2b0d290e879e860086d423025912169b372d08",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3326442-fa00-1219-86e5-1061aef80499`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_edgeDensity_sub_edgeDensity_le_one_sub_mul (hs : s₂ ⊆ s₁) (ht : t₂ ⊆ t₁)
    (hs₂ : s₂.Nonempty) (ht₂ : t₂.Nonempty) :
    |edgeDensity r s₂ t₂ - edgeDensity r s₁ t₁| ≤ 1 - #s₂ / #s₁ * (#t₂ / #t₁) := by
  refine abs_sub_le_iff.2 ⟨edgeDensity_sub_edgeDensity_le_one_sub_mul r hs ht hs₂ ht₂, ?_⟩
  rw [← add_sub_cancel_right (edgeDensity r s₁ t₁) (edgeDensity (fun x y ↦ ¬r x y) s₁ t₁),
    ← add_sub_cancel_right (edgeDensity r s₂ t₂) (edgeDensity (fun x y ↦ ¬r x y) s₂ t₂),
    edgeDensity_add_edgeDensity_compl _ (hs₂.mono hs) (ht₂.mono ht),
    edgeDensity_add_edgeDensity_compl _ hs₂ ht₂, sub_sub_sub_cancel_left]
  exact edgeDensity_sub_edgeDensity_le_one_sub_mul _ hs ht hs₂ ht₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab7cb494f5e279a5b5cb6d28dc43e6e6782ead26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
