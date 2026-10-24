# coneOfConeEvalIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17c172b6052e86b58c668655c60378829d0c68d9b8a60ba5c8fbf30e4bf76c94",
  "kind": "def",
  "lexical_name": "coneOfConeEvalIsLimit",
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
  "slug": "coneofconeevalislimit--e7a9965e39c98cbb320efd7d",
  "source": {
    "blob": "de6cc54975ede4a8100d8f8bf9600ddcda8899bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7a9965e39c98cbb320efd7d2d716eed50ce0dcebf67fddd0fde6a2b0e0d6e22",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17c172b6052e86b58c668655c60378829d0c68d9b8a60ba5c8fbf30e4bf76c94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coneOfConeEvalIsLimit {c : ∀ i, Cone (F ⋙ Pi.eval C i)} (P : ∀ i, IsLimit (c i)) :
    IsLimit (coneOfConeCompEval c) where
  lift s i := (P i).lift (coneCompEval s i)
  fac s j := by
    funext i
    exact (P i).fac (coneCompEval s i) j
  uniq s m w := by
    funext i
    exact (P i).uniq (coneCompEval s i) (m i) fun j => congr_fun (w j) i

/-- Given a family of colimit cocones over the `F ⋙ Pi.eval C i`,
assembling them together as a `Cocone F` produces a colimit cocone.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6cc54975ede4a8100d8f8bf9600ddcda8899bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
