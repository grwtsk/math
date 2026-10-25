# onScalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ca0c82bdfc52614b9553ae7faa228f286d6061e6e30e94ac3f6652f6466fe0c",
  "kind": "def",
  "lexical_name": "onScalar",
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
  "slug": "onscalar--71679b8d3236ee5cc48c63cb",
  "source": {
    "blob": "4cf76646a476458159968607aa90e48ef58ed52b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 284,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71679b8d3236ee5cc48c63cbc43ad35de8dc4a07bd679bcb455b553fc6b23195",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ca0c82bdfc52614b9553ae7faa228f286d6061e6e30e94ac3f6652f6466fe0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def onScalar {u₁ u₂ : Level} {R₁ : Q(Type u₁)} {R₂ : Q(Type u₂)} (l : qNF R₁ M) (f : Q($R₁ → $R₂)) :
    qNF R₂ M :=
  l.map fun ((a, x), k) ↦ ((q($f $a), x), k)

/-- Given two terms `l₁`, `l₂` of type `qNF R M`, i.e. lists of `(Q($R) × Q($M)) × ℕ`s (two `Expr`s
and a natural number), construct another such term `l`, which will have the property that in the
`$R`-module `$M`, the sum of the "linear combinations" represented by `l₁` and `l₂` is the linear
combination represented by `l`.

The construction assumes, to be valid, that the lists `l₁` and `l₂` are in strictly increasing order
by `ℕ`-component, and that if pairs `(a₁, x₁)` and `(a₂, x₂)` appear in `l₁`, `l₂` respectively with
the same `ℕ`-component `k`, then the expressions `x₁` and `x₂` are equal.

The construction is as follows: merge the two lists, except that if pairs `(a₁, x₁)` and `(a₂, x₂)`
appear in `l₁`, `l₂` respectively with the same `ℕ`-component `k`, then contribute a term
`(a₁ + a₂, x₁)` to the output list with `ℕ`-component `k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cf76646a476458159968607aa90e48ef58ed52b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
