# conj_pow'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09fbea9af5e8bc524f045eef71791806ad099736",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5011eb2-aeef-8848-1956-57677bbc6676",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08c7c6ce-0881-f45f-31f1-da7c66a16f1e",
  "kind": "lemma",
  "lexical_name": "conj_pow'",
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
  "slug": "conj-pow--3aad9a77e1d9bc803f8bb03b",
  "source": {
    "blob": "09fbea9af5e8bc524f045eef71791806ad099736",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 99,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3aad9a77e1d9bc803f8bb03b1a84efe0f6bc1023ed6be4954a324001528b08ac",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08c7c6ce-0881-f45f-31f1-da7c66a16f1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma conj_pow' (u : Mˣ) (x : M) (n : ℕ) :
    ((↑u⁻¹ : M) * x * (u : M)) ^ n = (↑u⁻¹ : M) * x ^ n * (u : M) := u⁻¹.conj_pow x n

end Units
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variantfa9323b740f09a47f3d3dda7dc9065fdb66bc697b3bf1856508cdbae0e14725e.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09fbea9af5e8bc524f045eef71791806ad099736` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
