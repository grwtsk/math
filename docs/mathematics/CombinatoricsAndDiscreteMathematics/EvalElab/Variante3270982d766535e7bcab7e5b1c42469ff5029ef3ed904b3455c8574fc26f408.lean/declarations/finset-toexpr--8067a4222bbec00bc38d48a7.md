# Finset.toExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1022c9ca6f860f44049772a58b21a88ef53bb9d7a27d1edb3a5c36291e4b11e",
  "kind": "instance",
  "lexical_name": "Finset.toExpr",
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
  "slug": "finset-toexpr--8067a4222bbec00bc38d48a7",
  "source": {
    "blob": "7179fc82574b38c8cd6a202e5855f9fa9a701e25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8067a4222bbec00bc38d48a7a9a93baab756b94f4863831882104afc8d46f1af",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1022c9ca6f860f44049772a58b21a88ef53bb9d7a27d1edb3a5c36291e4b11e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe nonrec instance Finset.toExpr
    {α : Type u} [ToLevel.{u}] [ToExpr α] [HasInstance (DecidableEq α)] : ToExpr (Finset α) :=
  haveI u' : Level := Lean.toLevel.{u}
  haveI α' : Q(Type u') := Lean.toTypeExpr α
  letI : Q(DecidableEq $α') := HasInstance.expr (DecidableEq α)
  { toTypeExpr := q(Finset $α')
    toExpr x := show Q(Finset $α') from mkSetLiteralQ q(Finset $α') (x.val.unquot.map toExpr) }

#guard_expr
  (eval% Finset.powerset ({1, 2, 3} : Finset ℕ)) =
    {∅, {1}, {2}, {1, 2}, {3}, {1, 3}, {2, 3}, {1, 2, 3}}

end from_zulip
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7179fc82574b38c8cd6a202e5855f9fa9a701e25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
