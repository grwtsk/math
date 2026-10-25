# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2eace24d11e719c1fb5f53eda7d66d7324e1d864728428edee482d9ab05cab00",
  "kind": "macro",
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
  "slug": "macro--2196b2e6cfb96ee94fd2ce14",
  "source": {
    "blob": "7351c5251d9fa65fa3f75145b8d6367065f8b2fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 383,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Variant697e3a233e245e2642a7dff36f60baf4fc55df2e43dd6ef188f227ae46e46ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2196b2e6cfb96ee94fd2ce14c92079b202f134cd26ac6308ce6b58c9626c535d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Variant697e3a233e245e2642a7dff36f60baf4fc55df2e43dd6ef188f227ae46e46ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2eace24d11e719c1fb5f53eda7d66d7324e1d864728428edee482d9ab05cab00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro (name := pullCommand) tk:"#pull" disch?:(discharger)? ppSpace head:term " => " e:term :
    command =>
  `(command| #conv%$tk pull $[$disch?:discharger]? $head:term => $e)

end Conv

section DiscrTree

/--
`#push_discr_tree X` shows the discrimination tree of all lemmas used by `push X`.
This can be helpful when you are constructing a set of `push` lemmas for the constant `X`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Variant697e3a233e245e2642a7dff36f60baf4fc55df2e43dd6ef188f227ae46e46ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Variant697e3a233e245e2642a7dff36f60baf4fc55df2e43dd6ef188f227ae46e46ba2.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7351c5251d9fa65fa3f75145b8d6367065f8b2fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
