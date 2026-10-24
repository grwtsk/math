# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:957af5f11ff6a078cff9ccbbe8c5c7a37b3642c700b73e82fa5f37215c51ff9d",
  "kind": "instance",
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
  "slug": "instance--f02a2a186692fe42dd653bcb",
  "source": {
    "blob": "b9fac5fabef357ae41de8293703fed3ca2013414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 143,
    "path": "GRWTSK/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f02a2a186692fe42dd653bcbb12c6ce694d27f13cd8989d60622200ecb2da904",
  "verification": {
    "reference": "docs/verification/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:957af5f11ff6a078cff9ccbbe8c5c7a37b3642c700b73e82fa5f37215c51ff9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Algebra.IsSeparable F⟮X⟯ K] : IsDedekindDomain (ringOfIntegers F K) :=
  IsIntegralClosure.isDedekindDomain F[X] F⟮X⟯ K _

end ringOfIntegers

section deprecated

@[deprecated RatFunc.inftyValuationDef (since := "2026-04-14")]
alias inftyValuationDef := RatFunc.inftyValuationDef

@[deprecated RatFunc.InftyValuation.map_zero' (since := "2026-04-14")]
alias InftyValuation.map_zero' := RatFunc.InftyValuation.map_zero'

@[deprecated RatFunc.InftyValuation.map_one' (since := "2026-04-14")]
alias InftyValuation.map_one' := RatFunc.InftyValuation.map_one'

@[deprecated RatFunc.InftyValuation.map_mul' (since := "2026-04-14")]
alias InftyValuation.map_mul' := RatFunc.InftyValuation.map_mul'

@[deprecated RatFunc.InftyValuation.map_add_le_max' (since := "2026-04-14")]
alias InftyValuation.map_add_le_max' := RatFunc.InftyValuation.map_add_le_max'

@[deprecated RatFunc.inftyValuation_of_nonzero (since := "2026-04-14")]
alias inftyValuation_of_nonzero := RatFunc.inftyValuation_of_nonzero

@[deprecated RatFunc.inftyValuation (since := "2026-04-14")]
alias inftyValuation := RatFunc.inftyValuation

@[deprecated RatFunc.inftyValuation_apply (since := "2026-04-14")]
alias inftyValuation_apply := RatFunc.inftyValuation_apply

@[deprecated RatFunc.inftyValuation.C (since := "2026-04-14")]
alias inftyValuation.C := RatFunc.inftyValuation.C

@[deprecated RatFunc.inftyValuation.X (since := "2026-04-14")]
alias inftyValuation.X := RatFunc.inftyValuation.X

@[deprecated RatFunc.inftyValuation.X_zpow (since := "2026-04-14")]
alias inftyValuation.X_zpow := RatFunc.inftyValuation.X_zpow

@[deprecated RatFunc.inftyValuation.X_inv (since := "2026-04-14")]
alias inftyValuation.X_inv := RatFunc.inftyValuation.X_inv

@[deprecated RatFunc.inftyValuation.polynomial (since := "2026-04-14")]
alias inftyValuation.polynomial := RatFunc.inftyValuation.polynomial

@[deprecated RatFunc.inftyValued (since := "2026-04-14")]
alias inftyValuedFqt := RatFunc.inftyValued

@[deprecated RatFunc.inftyValued.def (since := "2026-04-14")]
alias inftyValuedFqt.def := RatFunc.inftyValued.def

@[deprecated RatFunc.CompletionAtInfty (since := "2026-04-14")]
alias FqtInfty := RatFunc.CompletionAtInfty

@[deprecated "Use the anonymous `Valued` instance on `RatFunc.CompletionAtInfty`"
(since := "2026-04-14")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9fac5fabef357ae41de8293703fed3ca2013414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
