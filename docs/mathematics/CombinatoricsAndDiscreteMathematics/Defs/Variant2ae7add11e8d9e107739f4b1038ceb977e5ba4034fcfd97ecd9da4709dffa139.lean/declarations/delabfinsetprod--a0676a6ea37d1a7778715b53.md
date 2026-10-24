# delabFinsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e125bdacb5f7a4dc3eccb09aacf07841b80d68b27134f57db7e9346bbb92e5e5",
  "kind": "def",
  "lexical_name": "delabFinsetProd",
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
  "slug": "delabfinsetprod--a0676a6ea37d1a7778715b53",
  "source": {
    "blob": "84e7a40cd644c362ba59f96b27ad46569ac92471",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 298,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant2ae7add11e8d9e107739f4b1038ceb977e5ba4034fcfd97ecd9da4709dffa139.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0676a6ea37d1a7778715b53b3a62cb017fc141c277796299f5728f195296a29",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant2ae7add11e8d9e107739f4b1038ceb977e5ba4034fcfd97ecd9da4709dffa139.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e125bdacb5f7a4dc3eccb09aacf07841b80d68b27134f57db7e9346bbb92e5e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[app_delab Finset.prod] meta def delabFinsetProd : Delab :=
  whenPPOption getPPNotation <| withOverApp 5 do
  let #[_, _, _, _, f] := (← getExpr).getAppArgs | failure
  guard f.isLambda
  let ppDomain ← withAppArg <| getPPOption getPPFunBinderTypes
  let (i, body) ← withAppArg <| withBindingBodyUnusedName fun i => do
    return ((⟨i⟩ : Ident), ← delab)
  let ⟨res, p⟩ ← withNaryArg 3 <| delabFinsetArg i
  let withClause? : Option (TSyntax `BigOperators.BigOpWith) ← (match p with
    | .some pp => return some (← `(BigOpWith|with $pp:term))
    | .none => return none)
  match res with
  | .finset ss => `(∏ $i:ident ∈ $ss $[$withClause?]?, $body)
  | .univ =>
    let binder ←
    if ppDomain then
      let ty ← withNaryArg 0 delab
      `(bigOpBinder| $i:ident : $ty)
    else
      `(bigOpBinder| $i:ident)
    `(∏ $binder:bigOpBinder $[$withClause?]?, $body)
  | .Iio ss => `(∏ $i:ident < $ss $[$withClause?]?, $body)
  | .Iic ss => `(∏ $i:ident ≤ $ss $[$withClause?]?, $body)
  | .Ioi ss => `(∏ $i:ident > $ss $[$withClause?]?, $body)
  | .Ici ss => `(∏ $i:ident ≥ $ss $[$withClause?]?, $body)

/-- Delaborator for `Finset.sum`. The `pp.funBinderTypes` option controls whether
to show the domain type when the sum is over `Finset.univ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant2ae7add11e8d9e107739f4b1038ceb977e5ba4034fcfd97ecd9da4709dffa139.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant2ae7add11e8d9e107739f4b1038ceb977e5ba4034fcfd97ecd9da4709dffa139.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e7a40cd644c362ba59f96b27ad46569ac92471` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
