# mor₁OfExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7bfac5bcebd4c670c5a6c6f05ca03913f742ba660c551edf0f6fbde9751bc33",
  "kind": "def",
  "lexical_name": "mor₁OfExpr",
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
  "slug": "mor-ofexpr--60de45a246afc2e34b5847c2",
  "source": {
    "blob": "63915ec6e79d03391ac2738557d7e0e86795514a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 437,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60de45a246afc2e34b5847c21690708bc2f8d660a0ff2d1e17c45e2f8ca2ac91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7bfac5bcebd4c670c5a6c6f05ca03913f742ba660c551edf0f6fbde9751bc33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mor₁OfExpr (e : Expr) : MonoidalM Mor₁ := do
  if let some f := (← get).cache.find? e then
    return f
  let f ←
    if let some a ← id₁? e then
      MonadMor₁.id₁M a
    else if let some (f, g) ← comp? e then
      MonadMor₁.comp₁M (← mor₁OfExpr f.e) (← mor₁OfExpr g.e)
    else
      return Mor₁.of ⟨e, ⟨none⟩, ⟨none⟩⟩
  modify fun s => { s with cache := s.cache.insert e f }
  return f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant35775442b20d6cd715bb25e03811ce893f05212dba387eade2d6d617b94ec2a6.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63915ec6e79d03391ac2738557d7e0e86795514a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
