# rel_imp_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d699139254f5b9e8aca76feedf3c9ea7c32fc88d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 605,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f26700e7-3eaa-b9a9-138f-6b3335185c99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5d04d21-a1da-fa91-4e82-df5a5bbf0099",
  "kind": "lemma",
  "lexical_name": "rel_imp_rel",
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
  "slug": "rel-imp-rel--8021b6e4d0839f2ba1dfb365",
  "source": {
    "blob": "d699139254f5b9e8aca76feedf3c9ea7c32fc88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 605,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8021b6e4d0839f2ba1dfb3650f8b97d4903e0efd01d7f27ea2c3b0cc4b22989c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5d04d21-a1da-fa91-4e82-df5a5bbf0099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 605–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rel_imp_rel (h₁ : r c a) (h₂ : r b d) : r a b → r c d :=
  fun h => IsTrans.trans c b d (IsTrans.trans c a b h₁ h) h₂

/--
Construct a `GCongrLemma` for `gcongr` goals of the form `a ≺ b → c ≺ d`.
This will be tried if there is no other available `@[gcongr]` lemma.
For example, the relation `a ≡ b [ZMOD n]` has an instance of `IsTrans`, so a congruence of the form
`a ≡ b [ZMOD n] → c ≡ d [ZMOD n]` can be solved with `rel_imp_rel`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean#L605).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d699139254f5b9e8aca76feedf3c9ea7c32fc88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
