# map_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1c452de9c1d9ee16fdf54a5484b409d6a28411e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8d6bda1ffbbb337cda07b204f9f33cd361ea3547da01059a32e3c51663b0292.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84d387c1-8b5f-7b32-9f38-37568b1b5ec9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a963d36c-cd0b-7fb6-5b0d-ea6d99de75bc",
  "kind": "theorem",
  "lexical_name": "map_injective",
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
  "slug": "map-injective--245abefd97f23cb6691ece21",
  "source": {
    "blob": "b1c452de9c1d9ee16fdf54a5484b409d6a28411e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 352,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta8d6bda1ffbbb337cda07b204f9f33cd361ea3547da01059a32e3c51663b0292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:245abefd97f23cb6691ece210af04d52e5c7542b2a72086cc97e3b67b2cddc5a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta8d6bda1ffbbb337cda07b204f9f33cd361ea3547da01059a32e3c51663b0292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a963d36c-cd0b-7fb6-5b0d-ea6d99de75bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_injective [Nonempty α] [Nonempty β] {f : α → γ} {g : β → δ} :
    Injective (map f g) ↔ Injective f ∧ Injective g :=
  ⟨fun h =>
    ⟨fun a₁ a₂ ha => by
      inhabit β
      injection
        @h (a₁, default) (a₂, default) (congr_arg (fun c : γ => Prod.mk c (g default)) ha : _),
      fun b₁ b₂ hb => by
      inhabit α
      injection @h (default, b₁) (default, b₂) (congr_arg (Prod.mk (f default)) hb : _)⟩,
    fun h => h.1.Prod_map h.2⟩
#align prod.map_injective Prod.map_injective

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta8d6bda1ffbbb337cda07b204f9f33cd361ea3547da01059a32e3c51663b0292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta8d6bda1ffbbb337cda07b204f9f33cd361ea3547da01059a32e3c51663b0292.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1c452de9c1d9ee16fdf54a5484b409d6a28411e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
