# hasProjectiveDimensionLT_X₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a966a00b58c27e2b919d2888467767d4898d4ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ade7e5b-51aa-1265-9c00-dba9203384ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb46b843-ed9b-8fac-5302-f2bdeaa9d8b8",
  "kind": "lemma",
  "lexical_name": "hasProjectiveDimensionLT_X₂",
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
  "slug": "hasprojectivedimensionlt-x--aadd72b59d33b7843e868b0c",
  "source": {
    "blob": "7a966a00b58c27e2b919d2888467767d4898d4ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 192,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variante6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aadd72b59d33b7843e868b0cca216c9ca973cd9746bd7e3cd53cce12a7dce3f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variante6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb46b843-ed9b-8fac-5302-f2bdeaa9d8b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasProjectiveDimensionLT_X₂ (h₁ : HasProjectiveDimensionLT S.X₁ n)
    (h₃ : HasProjectiveDimensionLT S.X₃ n) :
    HasProjectiveDimensionLT S.X₂ n := by
  let := HasExt.standard C
  rw [hasProjectiveDimensionLT_iff]
  intro i hi Y x₂
  obtain ⟨x₃, rfl⟩ := Ext.contravariant_sequence_exact₂ hS _ x₂
    (Ext.eq_zero_of_hasProjectiveDimensionLT _ n hi)
  rw [x₃.eq_zero_of_hasProjectiveDimensionLT n hi, Ext.comp_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variante6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variante6b4f446868626f7db9172179ad0ef84a2d2296476aaa490a6b4730ec0f9d89b.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a966a00b58c27e2b919d2888467767d4898d4ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
