# runParserTest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba2055c48357d9b6e1458e2452606bc1c63183aed11476402400a48f00c19bf2",
  "kind": "def",
  "lexical_name": "runParserTest",
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
  "slug": "runparsertest--0e7977307c29d9c6213a34e3",
  "source": {
    "blob": "c9fa4cbadfae845dc573aac9d5d99d7653f3528a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 282,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variant2f228f0f3c393cda257b9b002fed63c0c11ab25589d71c327be118a48c240719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e7977307c29d9c6213a34e322118174e22c3646b95e069dd7e1be97c9a4fbbd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variant2f228f0f3c393cda257b9b002fed63c0c11ab25589d71c327be118a48c240719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba2055c48357d9b6e1458e2452606bc1c63183aed11476402400a48f00c19bf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def runParserTest (dump : M Unit) : MetaM Unit := do
  let bufferRef ← IO.mkRef {data := .empty, pos := 0}
  let stream := .ofBuffer bufferRef
  IO.withStdout stream <| do
    run do
      initState (← read).env
      dumpMetadata
      dump
  bufferRef.modify fun buf => { buf with pos := 0 }
  let env ← Export.parseStream stream
  env.constOrder.forM fun n => IO.println n


/--
info: List
List.nil
List.cons
List.rec
-/
#guard_msgs in
#eval runParserTest do
  dumpConstant `List

/--
info: Bool
Bool.false
Bool.true
Bool.rec
sorryAx
-/
#guard_msgs in
#eval runParserTest do
  dumpConstant `sorryAx

/--
info: Eq
Eq.refl
Eq.rec
Quot
Quot.mk
Quot.lift
Quot.ind
-/
#guard_msgs in
#eval runParserTest do
  dumpConstant `Quot.mk

/--
info: Eq
Eq.refl
Eq.rec
Quot
Quot.mk
Quot.lift
Quot.ind
-/
#guard_msgs in
#eval runParserTest do
  dumpConstant `Quot.lift

/-- info: Lean.opaqueId -/
#guard_msgs in
#eval runParserTest do
  dumpConstant ``opaqueId

/-- info: Function.const -/
#guard_msgs in
#eval runParserTest do
  dumpConstant ``Function.const

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variant2f228f0f3c393cda257b9b002fed63c0c11ab25589d71c327be118a48c240719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variant2f228f0f3c393cda257b9b002fed63c0c11ab25589d71c327be118a48c240719.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9fa4cbadfae845dc573aac9d5d99d7653f3528a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
