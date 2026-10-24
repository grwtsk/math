# card_support_eq_one_of_eraseLead_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "097318f43f87cd5bab8c63e9c4b87197e695b893",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0ed21c603ffa18e05fc4599fa3c3464b725d5253d81e7a646bc66653f7f3c03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:397ae746-6346-44bf-48d6-1e50f68654dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3b3d36e-0bc4-8fad-9735-a170a50ed220",
  "kind": "theorem",
  "lexical_name": "card_support_eq_one_of_eraseLead_eq_zero",
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
  "slug": "card-support-eq-one-of-eraselead-eq-zero--774ac7acfbd79ac39c9d19d0",
  "source": {
    "blob": "097318f43f87cd5bab8c63e9c4b87197e695b893",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 121,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variantb0ed21c603ffa18e05fc4599fa3c3464b725d5253d81e7a646bc66653f7f3c03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:774ac7acfbd79ac39c9d19d02b6d70d75c0a787fb2c434058fa6b9a82adb067c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/EraseLead/Variantb0ed21c603ffa18e05fc4599fa3c3464b725d5253d81e7a646bc66653f7f3c03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3b3d36e-0bc4-8fad-9735-a170a50ed220`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_support_eq_one_of_eraseLead_eq_zero (h₀ : f ≠ 0) (h₁ : f.eraseLead = 0) :
    #f.support = 1 :=
  (card_support_eq_zero.mpr h₁ ▸ card_support_eraseLead_add_one h₀).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/EraseLead/Variantb0ed21c603ffa18e05fc4599fa3c3464b725d5253d81e7a646bc66653f7f3c03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variantb0ed21c603ffa18e05fc4599fa3c3464b725d5253d81e7a646bc66653f7f3c03.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `097318f43f87cd5bab8c63e9c4b87197e695b893` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
