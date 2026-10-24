# continuousLinearMap_symm_apply'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fc10f547d6e4af0e18eb15af84848eb6d1c92b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:847e3044-d7f2-5454-5567-4b5cf328b955",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:721b9223-2283-1047-6ae8-1cd8efca0991",
  "kind": "theorem",
  "lexical_name": "continuousLinearMap_symm_apply'",
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
  "slug": "continuouslinearmap-symm-apply--950987851aeab92f1fc81758",
  "source": {
    "blob": "3fc10f547d6e4af0e18eb15af84848eb6d1c92b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 183,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:950987851aeab92f1fc817586eb6b2e7488a882740c2df1789230d1a3b6af3bc",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:721b9223-2283-1047-6ae8-1cd8efca0991`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousLinearMap_symm_apply' {b : B} (hb : b ∈ e₁.baseSet ∩ e₂.baseSet)
    (L : F₁ →SL[σ] F₂) :
    (continuousLinearMap σ e₁ e₂).symm b L =
      (e₂.symmL 𝕜₂ b).comp (L.comp <| e₁.continuousLinearMapAt 𝕜₁ b) := by
  rw [symm_apply]; rfl; exact hb
#align pretrivialization.continuous_linear_map_symm_apply' Pretrivialization.continuousLinearMap_symm_apply'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantd7aa85b1e4074980c5f5c7c027100ca05803cb6f6865968fc761cf644ec503fc.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc10f547d6e4af0e18eb15af84848eb6d1c92b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
