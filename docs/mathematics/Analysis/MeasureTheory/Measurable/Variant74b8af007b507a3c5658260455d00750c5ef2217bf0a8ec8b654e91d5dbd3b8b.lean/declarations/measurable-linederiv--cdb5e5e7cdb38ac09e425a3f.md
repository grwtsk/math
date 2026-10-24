# measurable_lineDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d4ac9cbb734d520ca13a581a9aabd4d76a7fd22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74b8af007b507a3c5658260455d00750c5ef2217bf0a8ec8b654e91d5dbd3b8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e26efa0a-2bdd-d1b2-c275-560f02fcf53a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ce4bea8-b020-b0a9-3602-160a97bea374",
  "kind": "theorem",
  "lexical_name": "measurable_lineDeriv",
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
  "slug": "measurable-linederiv--cdb5e5e7cdb38ac09e425a3f",
  "source": {
    "blob": "7d4ac9cbb734d520ca13a581a9aabd4d76a7fd22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 40,
    "path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variant74b8af007b507a3c5658260455d00750c5ef2217bf0a8ec8b654e91d5dbd3b8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdb5e5e7cdb38ac09e425a3f1e8a309c179fadf6d06f3d5c6c0357e22eb1afa5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measurable/Variant74b8af007b507a3c5658260455d00750c5ef2217bf0a8ec8b654e91d5dbd3b8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ce4bea8-b020-b0a9-3602-160a97bea374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_lineDeriv [MeasurableSpace F] [BorelSpace F]
    (hf : Continuous f) : Measurable (fun x ↦ lineDeriv 𝕜 f x v) := by
  borelize 𝕜
  let g : E → 𝕜 → F := fun x t ↦ f (x + t • v)
  have hg : Continuous g.uncurry := by fun_prop
  exact (measurable_deriv_with_param hg).comp measurable_prodMk_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measurable/Variant74b8af007b507a3c5658260455d00750c5ef2217bf0a8ec8b654e91d5dbd3b8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measurable/Variant74b8af007b507a3c5658260455d00750c5ef2217bf0a8ec8b654e91d5dbd3b8b.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4ac9cbb734d520ca13a581a9aabd4d76a7fd22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
