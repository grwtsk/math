# TestStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc1d0b5cea5a149ae3f69334d0c62c246360d8e19971de424a5813189b165e0a",
  "kind": "structure",
  "lexical_name": "TestStruct",
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
  "slug": "teststruct--b0539475a0ff846dc0b0332a",
  "source": {
    "blob": "4e586672e268881628802a6e040dc2abf72c989b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0539475a0ff846dc0b0332afeda0c8ed4ef9b63da98973a179dabc9c61b4f5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc1d0b5cea5a149ae3f69334d0c62c246360d8e19971de424a5813189b165e0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TestStruct where
  /-- Supress lint -/
  foo : Int
  /-- Supress lint -/
  bar : Int

/--
info: TestStruct : Type
TestStruct.bar (self : TestStruct) : Int
TestStruct.casesOn.{u} {motive : TestStruct → Sort u} (t : TestStruct)
  (mk : (foo bar : Int) → motive { foo := foo, bar := bar }) : motive t
TestStruct.ctorIdx : TestStruct → Nat
TestStruct.foo (self : TestStruct) : Int
TestStruct.mk (foo bar : Int) : TestStruct
TestStruct.mk.inj {foo bar foo✝ bar✝ : Int} :
  { foo := foo, bar := bar } = { foo := foo✝, bar := bar✝ } → foo = foo✝ ∧ bar = bar✝
TestStruct.mk.injEq (foo bar foo✝ bar✝ : Int) :
  ({ foo := foo, bar := bar } = { foo := foo✝, bar := bar✝ }) = (foo = foo✝ ∧ bar = bar✝)
TestStruct.mk.noConfusion.{u} {P : Sort u} {foo bar foo' bar' : Int}
  (eq : { foo := foo, bar := bar } = { foo := foo', bar := bar' }) (k : foo = foo' → bar = bar' → P) : P
TestStruct.mk.sizeOf_spec (foo bar : Int) : sizeOf { foo := foo, bar := bar } = 1 + sizeOf foo + sizeOf bar
TestStruct.noConfusion.{u} {P : Sort u} {t t' : TestStruct} (eq : t = t') : TestStruct.noConfusionType P t t'
TestStruct.noConfusionType.{u} (P : Sort u) (t t' : TestStruct) : Sort u
TestStruct.rec.{u} {motive : TestStruct → Sort u} (mk : (foo bar : Int) → motive { foo := foo, bar := bar })
  (t : TestStruct) : motive t
TestStruct.recOn.{u} {motive : TestStruct → Sort u} (t : TestStruct)
  (mk : (foo bar : Int) → motive { foo := foo, bar := bar }) : motive t
-/
#guard_msgs in
#print prefix TestStruct

/--
info: TestStruct : Type
TestStruct.bar (self : TestStruct) : Int
TestStruct.casesOn.{u} {motive : TestStruct → Sort u} (t : TestStruct)
  (mk : (foo bar : Int) → motive { foo := foo, bar := bar }) : motive t
TestStruct.ctorIdx : TestStruct → Nat
TestStruct.foo (self : TestStruct) : Int
TestStruct.mk (foo bar : Int) : TestStruct
TestStruct.mk.noConfusion.{u} {P : Sort u} {foo bar foo' bar' : Int}
  (eq : { foo := foo, bar := bar } = { foo := foo', bar := bar' }) (k : foo = foo' → bar = bar' → P) : P
TestStruct.noConfusion.{u} {P : Sort u} {t t' : TestStruct} (eq : t = t') : TestStruct.noConfusionType P t t'
TestStruct.noConfusionType.{u} (P : Sort u) (t t' : TestStruct) : Sort u
TestStruct.rec.{u} {motive : TestStruct → Sort u} (mk : (foo bar : Int) → motive { foo := foo, bar := bar })
  (t : TestStruct) : motive t
TestStruct.recOn.{u} {motive : TestStruct → Sort u} (t : TestStruct)
  (mk : (foo bar : Int) → motive { foo := foo, bar := bar }) : motive t
-/
#guard_msgs in
#print prefix -propositions TestStruct

/--
info: TestStruct.mk.inj {foo bar foo✝ bar✝ : Int} :
  { foo := foo, bar := bar } = { foo := foo✝, bar := bar✝ } → foo = foo✝ ∧ bar = bar✝
TestStruct.mk.injEq (foo bar foo✝ bar✝ : Int) :
  ({ foo := foo, bar := bar } = { foo := foo✝, bar := bar✝ }) = (foo = foo✝ ∧ bar = bar✝)
TestStruct.mk.sizeOf_spec (foo bar : Int) : sizeOf { foo := foo, bar := bar } = 1 + sizeOf foo + sizeOf bar
-/
#guard_msgs in
#print prefix +propositionsOnly TestStruct

/--
info: TestStruct
TestStruct.bar
TestStruct.casesOn
TestStruct.ctorIdx
TestStruct.foo
TestStruct.mk
TestStruct.mk.inj
TestStruct.mk.injEq
TestStruct.mk.noConfusion
TestStruct.mk.sizeOf_spec
TestStruct.noConfusion
TestStruct.noConfusionType
TestStruct.rec
TestStruct.recOn
-/
#guard_msgs in
#print prefix -showTypes TestStruct

/--
Artificial test function to show #print prefix filters out internals
including match_/proof_.

Note.  Internal names are inherently subject to change.  This test case may
fail regularly when the Lean version is changed.  If so, we should disable
the test case using this function below until a more robust solution is found.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e586672e268881628802a6e040dc2abf72c989b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
