# evalOptionExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f82b7c68379ce2d873b09f371ea5fce20968b3a2d0782bdc59ef390e05066ea0",
  "kind": "def",
  "lexical_name": "evalOptionExpr",
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
  "slug": "evaloptionexpr--9abee8b66b543d99c6d1817b",
  "source": {
    "blob": "07a5cb9fd2397d32fbbfd196ef2ce17fcae12c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 216,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant169b74a4f383bf2522ed1841ce9ecb824cc036b5a9a8dc8d288ade9d5d5856bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9abee8b66b543d99c6d1817bb0ea584d0bfe2737283d505f6c96a80d4f806a99",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant169b74a4f383bf2522ed1841ce9ecb824cc036b5a9a8dc8d288ade9d5d5856bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f82b7c68379ce2d873b09f371ea5fce20968b3a2d0782bdc59ef390e05066ea0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalOptionExpr {α : Type} (ev : Expr → MetaM α) (e : Expr) : MetaM (Option α) :=
  withWHNF (errMsg := m!"\nof type `{.ofConstName ``Option}`.") (evalOptionExprCore ev) e <|> some <$> ev e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant169b74a4f383bf2522ed1841ce9ecb824cc036b5a9a8dc8d288ade9d5d5856bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant169b74a4f383bf2522ed1841ce9ecb824cc036b5a9a8dc8d288ade9d5d5856bc.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07a5cb9fd2397d32fbbfd196ef2ce17fcae12c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
