# homOfPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d66133940c51c284e73921dd178e3d3c4041a01a8e26226e9baf865fef7e1e90",
  "kind": "def",
  "lexical_name": "homOfPath",
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
  "slug": "homofpath--255e0bce0f44d39a53fd94f1",
  "source": {
    "blob": "d7d11ddaa0aacad7ef1562ed8ab7ba8f34a3f78e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:255e0bce0f44d39a53fd94f152f156ab10faa7ea4e87b163111a73c24984cd12",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d66133940c51c284e73921dd178e3d3c4041a01a8e26226e9baf865fef7e1e90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homOfPath : ∀ {a : G}, Path (root T) a → (root' T ⟶ a)
  | _, Path.nil => 𝟙 _
  | _, Path.cons p f => homOfPath p ≫ Sum.recOn f.val (fun e => of e) fun e => inv (of e)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- For every vertex `a`, there is a canonical hom from the root, given by the path in the tree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7d11ddaa0aacad7ef1562ed8ab7ba8f34a3f78e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
