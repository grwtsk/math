# naturality_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7d5b211a04788541ef8d2d406c78efae1f0f630",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ef13cce-ca46-2120-86ee-307bc8710551",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:731506bc-00d2-70eb-9c60-bca2fefab633",
  "kind": "theorem",
  "lexical_name": "naturality_comp",
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
  "slug": "naturality-comp--fe79fc49d67dc6880a80d460",
  "source": {
    "blob": "b7d5b211a04788541ef8d2d406c78efae1f0f630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe79fc49d67dc6880a80d460703bf60fd0c087f00f1bde03f78a79462fb24f76",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:731506bc-00d2-70eb-9c60-bca2fefab633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturality_comp {p : a ⟶ b} {f g h : b ⟶ c} {pf : a ⟶ c} {η : f ≅ g} {θ : g ≅ h}
    (η_f : p ≫ f ≅ pf) (η_g : p ≫ g ≅ pf) (η_h : p ≫ h ≅ pf)
    (ih_η : p ◁ η ≪≫ η_g = η_f) (ih_θ : p ◁ θ ≪≫ η_h = η_g) :
    p ◁ (η ≪≫ θ) ≪≫ η_h = η_f := by
  rw [← ih_η, ← ih_θ]
  apply Iso.ext (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7d5b211a04788541ef8d2d406c78efae1f0f630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
