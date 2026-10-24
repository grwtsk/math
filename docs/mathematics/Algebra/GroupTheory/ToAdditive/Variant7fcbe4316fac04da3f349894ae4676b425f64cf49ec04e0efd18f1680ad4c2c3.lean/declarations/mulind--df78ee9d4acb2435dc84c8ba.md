# MulInd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:156f138c277b6587e84eb1d7cef345249123732087a655b31337bf9c45cd5735",
  "kind": "inductive",
  "lexical_name": "MulInd",
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
  "slug": "mulind--df78ee9d4acb2435dc84c8ba",
  "source": {
    "blob": "2fabdae49e9abb464a9e9c1eaeff99852aad0cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 175,
    "path": "GRWTSK/Algebra/GroupTheory/ToAdditive/Variant7fcbe4316fac04da3f349894ae4676b425f64cf49ec04e0efd18f1680ad4c2c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df78ee9d4acb2435dc84c8ba9f2b209b0457f682a443edf55ba5311f0d7ebd4e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ToAdditive/Variant7fcbe4316fac04da3f349894ae4676b425f64cf49ec04e0efd18f1680ad4c2c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:156f138c277b6587e84eb1d7cef345249123732087a655b31337bf9c45cd5735`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive MulInd : ℕ → Prop where
  | basic : MulInd 2
  | one : MulInd 1

run_cmd do
  unless findTranslation? (← getEnv) `Test.MulInd.one == some `Test.AddInd.zero do throwError "1"
  unless findTranslation? (← getEnv) `Test.MulInd.basic == none do throwError "2"
  unless findTranslation? (← getEnv) `Test.MulInd == some `Test.AddInd do throwError "3"

@[to_additive addFixedNumeralTest]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ToAdditive/Variant7fcbe4316fac04da3f349894ae4676b425f64cf49ec04e0efd18f1680ad4c2c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ToAdditive/Variant7fcbe4316fac04da3f349894ae4676b425f64cf49ec04e0efd18f1680ad4c2c3.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fabdae49e9abb464a9e9c1eaeff99852aad0cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
