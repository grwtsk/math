# invariant_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9019322231f748ca4a2c69c7bead5d9a79334c5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 423,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:594854c5-46c3-89ca-a146-4a2718010bb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62ad9d1c-6711-5983-58d6-b01d159eabd8",
  "kind": "theorem",
  "lexical_name": "invariant_eq",
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
  "slug": "invariant-eq--bd852a25e3f10090faa2bcbd",
  "source": {
    "blob": "9019322231f748ca4a2c69c7bead5d9a79334c5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 423,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd852a25e3f10090faa2bcbdd563a7d899d244b7047b9e28e14a3f89866863db",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62ad9d1c-6711-5983-58d6-b01d159eabd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invariant_eq
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁)
    {Invariant : Type uA}
    (value : T.Manifold → Invariant)
    (respects : ∀ {X Y}, G.Hom X Y → value X = value Y) :
    value (T.surgery e₀) = value (T.surgery e₁) :=
  respects (A.surgeryEnd h)

end AmbientIsotopyExtensionTheory

end Surface.SmoothFramedSurgery
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9019322231f748ca4a2c69c7bead5d9a79334c5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
