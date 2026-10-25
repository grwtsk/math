# transform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9aa634ab6ad7f359e9376fa416c2cf59383180984ac18b35de791e7ba2b26130",
  "kind": "def",
  "lexical_name": "transform",
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
  "slug": "transform--221c89c9bd9e3cc8f58f7a8a",
  "source": {
    "blob": "e526c71d75395cac41b2cf2e6bbaddf166cb5eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 179,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:221c89c9bd9e3cc8f58f7a8af59cebea95aab628cc1aa5a4ef7c75f5b75a4f1a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9aa634ab6ad7f359e9376fa416c2cf59383180984ac18b35de791e7ba2b26130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transform {m} [Monad m] [MonadLiftT MetaM m] [MonadControlT MetaM m]
    (input : Expr)
    (pre   : Expr → m TransformStep := fun _ => return .continue)
    (post  : Expr → m TransformStep := fun e => return .done e)
    (usedLetOnly := false)
    (skipConstInApp := false)
    : m Expr := do
  let (e, _) ← transformWithCache input {} pre post usedLetOnly skipConstInApp
  return e

/--
Zeta-reduces `let`/`have` expressions in `e`, and also zeta-delta reduces let-bound variables.
Removes unused `let`/`have` expressions.

Options:
- If `zetaDelta` is true (default: true), then zeta-delta reduces (unfolds) let-bound variables.
- If `zetaHave` is false (default: true), then does not zeta reduce `have` expressions.
- If `beta` is true (default: true), then beta reduce applications of substituted values
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e526c71d75395cac41b2cf2e6bbaddf166cb5eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
