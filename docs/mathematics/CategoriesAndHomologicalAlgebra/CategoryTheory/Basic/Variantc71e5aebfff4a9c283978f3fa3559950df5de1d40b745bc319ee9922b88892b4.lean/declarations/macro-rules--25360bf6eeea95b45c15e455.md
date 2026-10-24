# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d02aa95bdcc9d54965c49d213bd514c6aaa083c066dca8c243b2e74a52808772",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--25360bf6eeea95b45c15e455",
  "source": {
    "blob": "4d35798af9d30ee38b7aeb744c4d265793e5bacd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 740,
    "line": 730,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc71e5aebfff4a9c283978f3fa3559950df5de1d40b745bc319ee9922b88892b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25360bf6eeea95b45c15e45509bc025c5bbd07fb3b94ed32bcc6d4ce483e4666",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc71e5aebfff4a9c283978f3fa3559950df5de1d40b745bc319ee9922b88892b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d02aa95bdcc9d54965c49d213bd514c6aaa083c066dca8c243b2e74a52808772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 730–740.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped macro_rules
  | `($X:term ^⦋$m:term⦌$n:subscript) =>
    `(($X : CategoryTheory.CosimplicialObject.Truncated _ $n).obj
      ⟨SimplexCategory.mk $m, by first | get_elem_tactic |
      fail "Failed to prove truncation property. Try writing `X ^⦋m, by ...⦌ₙ`."⟩)
  | `($X:term ^⦋$m:term, $p:term⦌$n:subscript) =>
    `(($X : CategoryTheory.CosimplicialObject.Truncated _ $n).obj
      ⟨SimplexCategory.mk $m, $p⟩)

variable (C) in
/-- Further truncation of truncated cosimplicial objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc71e5aebfff4a9c283978f3fa3559950df5de1d40b745bc319ee9922b88892b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc71e5aebfff4a9c283978f3fa3559950df5de1d40b745bc319ee9922b88892b4.lean#L730).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d35798af9d30ee38b7aeb744c4d265793e5bacd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
