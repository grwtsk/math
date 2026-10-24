# of_le_right_of_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a886cc903f25326c2f897be2725c45e598660bc9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c007782-3ec2-2965-60ce-a75aa38f5cb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:451573fe-f7ea-ab8f-48a2-9b45b00b4745",
  "kind": "theorem",
  "lexical_name": "of_le_right_of_flat",
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
  "slug": "of-le-right-of-flat--fa8aca059649dbddeef5c712",
  "source": {
    "blob": "a886cc903f25326c2f897be2725c45e598660bc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 411,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa8aca059649dbddeef5c71223894a1cf48ec5f0b8285283cfdea0a97a6b26ef",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:451573fe-f7ea-ab8f-48a2-9b45b00b4745`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_le_right_of_flat {B' : Subalgebra R S}
    (h : B' ≤ B) [Module.Flat R A] : A.LinearDisjoint B' :=
  Submodule.LinearDisjoint.of_le_right_of_flat H h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a886cc903f25326c2f897be2725c45e598660bc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
