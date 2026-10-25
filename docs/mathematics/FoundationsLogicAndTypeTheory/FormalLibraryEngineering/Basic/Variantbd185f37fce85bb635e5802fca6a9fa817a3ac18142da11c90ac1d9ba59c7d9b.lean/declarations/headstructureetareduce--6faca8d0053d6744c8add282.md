# headStructureEtaReduce

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65734bd620d1a824ad77faef707ecabe431ad89871d9448949b050c76c89f3cc",
  "kind": "def",
  "lexical_name": "headStructureEtaReduce",
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
  "slug": "headstructureetareduce--6faca8d0053d6744c8add282",
  "source": {
    "blob": "2d9ee464994d5563431c41fba169e9e9bf48ef5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1003,
    "line": 971,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6faca8d0053d6744c8add28291e7c4aee014da31909fab028e1c7708f4f16925",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65734bd620d1a824ad77faef707ecabe431ad89871d9448949b050c76c89f3cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 971–1003.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def headStructureEtaReduce (e : Expr) : MetaM Expr := do
  let env ← getEnv
  let (ctor, args) := e.getAppFnArgs
  let some (.ctorInfo { induct := struct, numParams, ..}) := env.find? ctor | pure e
  let some { fieldNames, .. } := getStructureInfo? env struct | pure e
  let (params, fields) := args.toList.splitAt numParams -- fix if `Array.take` / `Array.drop` exist
  trace[simps.debug]
    "rhs is constructor application with params{indentD params}\nand fields {indentD fields}"
  let field0 :: fieldsTail := fields | return e
  let fieldName0 :: fieldNamesTail := fieldNames.toList | return e
  let (fn0, fieldArgs0) := field0.getAppFnArgs
  unless fn0 == struct ++ fieldName0 do
    trace[simps.debug] "{fn0} ≠ {struct ++ fieldName0}"
    return e
  let (params', reduct :: _) := fieldArgs0.toList.splitAt numParams | unreachable!
  unless params' == params do
    trace[simps.debug] "{params'} ≠ {params}"
    return e
  trace[simps.debug] "Potential structure-eta-reduct:{indentExpr e}\nto{indentExpr reduct}"
  let allArgs := params.toArray.push reduct
  let isEta ← (fieldsTail.zip fieldNamesTail).allM fun (field, fieldName) ↦
    if field.getAppFnArgs == (struct ++ fieldName, allArgs) then pure true else isProof field
  unless isEta do return e
  trace[simps.debug] "Structure-eta-reduce:{indentExpr e}\nto{indentExpr reduct}"
  headStructureEtaReduce reduct

/-- Derive lemmas specifying the projections of the declaration.
  `nm`: name of the lemma
  If `todo` is non-empty, it will generate exactly the names in `todo`.
  `toApply` is non-empty after a custom projection that is a composition of multiple projections
  was just used. In that case we need to apply these projections before we continue changing `lhs`.
  `simpLemmas`: names of the simp lemmas added so far.(simpLemmas : Array Name)
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean#L971).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d9ee464994d5563431c41fba169e9e9bf48ef5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
