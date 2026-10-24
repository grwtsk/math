# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:535044992c0e98ff81c217c1547d7d66a15b11290387b458b460c83cacbed906",
  "kind": "example",
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
  "slug": "example--ed5f9e2de23ce10caea52e9c",
  "source": {
    "blob": "dc889d6e3e2e8b246e881ba91a85d56c4bbef040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 437,
    "path": "GRWTSK/Algebra/UniversalAlgebra/GRewrite/Variant1f135749b460583a61dcb70fd2bdc0733c9f5a00c09b621699f608e21cb02246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed5f9e2de23ce10caea52e9c6d62ad5d2cac5575fd06316b508e17d8645e6ff3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/GRewrite/Variant1f135749b460583a61dcb70fd2bdc0733c9f5a00c09b621699f608e21cb02246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:535044992c0e98ff81c217c1547d7d66a15b11290387b458b460c83cacbed906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ∅ ∪ { a : Int | a - 1 ≥ 5 } ⊆ Set.univ := by
  grw [sub_le_self _ (by positivity)]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/GRewrite/Variant1f135749b460583a61dcb70fd2bdc0733c9f5a00c09b621699f608e21cb02246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/GRewrite/Variant1f135749b460583a61dcb70fd2bdc0733c9f5a00c09b621699f608e21cb02246.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc889d6e3e2e8b246e881ba91a85d56c4bbef040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
