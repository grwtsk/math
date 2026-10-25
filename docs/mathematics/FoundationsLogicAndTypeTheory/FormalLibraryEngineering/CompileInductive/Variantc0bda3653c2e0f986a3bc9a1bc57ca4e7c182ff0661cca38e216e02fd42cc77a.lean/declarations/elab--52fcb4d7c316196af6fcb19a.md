# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bb0aaca5360d85f471661e60c2a989fa43915e56b03217abcbaf999e65359b0",
  "kind": "elab",
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
  "slug": "elab--52fcb4d7c316196af6fcb19a",
  "source": {
    "blob": "dd2005a6a3f391e292db70e4cb9a5ffa32e6df60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 226,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52fcb4d7c316196af6fcb19a39390dfb1afdaa049b8b0c223badb46f22484579",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bb0aaca5360d85f471661e60c2a989fa43915e56b03217abcbaf999e65359b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab tk:"compile_inductive% " i:ident : command => Command.liftTermElabM do
  let n ← realizeGlobalConstNoOverloadWithInfo i
  let iv ← withRef i <| getConstInfoInduct n
  withRef tk <| compileInductive iv

end Mathlib.Util

-- `Nat.rec` already has a `@[csimp]` lemma in Lean.
compile_def% Nat.recOn
compile_def% Nat.brecOn
compile_inductive% Prod
compile_inductive% List
compile_inductive% PUnit
compile_inductive% PEmpty
compile_inductive% Sum
compile_inductive% PSum
compile_inductive% And
compile_inductive% False
compile_inductive% Empty
compile_inductive% Bool
compile_inductive% Sigma
compile_inductive% Option

-- In addition to the manual implementation below, we also have to override the `Float.val` and
-- `Float.mk` functions because these also have no implementation in core lean.
-- Because `floatSpec.float` is an opaque type, the identity function is as good an implementation
-- as any.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompileInductive/Variantc0bda3653c2e0f986a3bc9a1bc57ca4e7c182ff0661cca38e216e02fd42cc77a.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd2005a6a3f391e292db70e4cb9a5ffa32e6df60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
