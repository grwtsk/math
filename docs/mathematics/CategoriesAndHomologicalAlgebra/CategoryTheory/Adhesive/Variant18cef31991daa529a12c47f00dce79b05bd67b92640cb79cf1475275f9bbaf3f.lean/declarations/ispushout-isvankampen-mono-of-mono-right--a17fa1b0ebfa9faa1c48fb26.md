# IsPushout.IsVanKampen.mono_of_mono_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db1bf5357af0fef462bd391debec52f4b37a66ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f8edc56-4896-0dc8-d9a8-afc938c9269c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6954146-1553-58e5-442b-e2a6d9f40416",
  "kind": "theorem",
  "lexical_name": "IsPushout.IsVanKampen.mono_of_mono_right",
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
  "slug": "ispushout-isvankampen-mono-of-mono-right--a17fa1b0ebfa9faa1c48fb26",
  "source": {
    "blob": "db1bf5357af0fef462bd391debec52f4b37a66ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 209,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a17fa1b0ebfa9faa1c48fb26881cd71d4783609ba875edd894d64abd061bedf0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6954146-1553-58e5-442b-e2a6d9f40416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPushout.IsVanKampen.mono_of_mono_right [Mono g] {H : IsPushout f g h i}
    (H' : H.IsVanKampen) : Mono h :=
  IsKernelPair.mono_of_isIso_fst
    ((H' f (𝟙 _) (𝟙 _) f (𝟙 _) (𝟙 _) g h (IsPullback.of_vert_isIso ⟨by simp⟩)
        (IsKernelPair.id_of_mono g) ⟨rfl⟩ H.1 ⟨by simp⟩).mp
      (IsPushout.of_vert_isIso ⟨by simp⟩)).1

/-- A category is adhesive if it has pushouts and pullbacks along monomorphisms,
and such pushouts are van Kampen. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adhesive/Variant18cef31991daa529a12c47f00dce79b05bd67b92640cb79cf1475275f9bbaf3f.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db1bf5357af0fef462bd391debec52f4b37a66ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
