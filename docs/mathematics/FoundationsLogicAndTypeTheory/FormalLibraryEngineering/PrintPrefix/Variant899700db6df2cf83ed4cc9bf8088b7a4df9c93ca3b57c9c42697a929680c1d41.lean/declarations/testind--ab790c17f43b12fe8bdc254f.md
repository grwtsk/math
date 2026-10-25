# TestInd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf2134dc0b66915f8261e335d9552f623559aa2016741ba0da8962fbeedc9191",
  "kind": "inductive",
  "lexical_name": "TestInd",
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
  "slug": "testind--ab790c17f43b12fe8bdc254f",
  "source": {
    "blob": "4780d3a79d75d05ae004561c4bdaba81b0738e5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab790c17f43b12fe8bdc254ffeda03c4cc15f0b9615bab5e9ddcb778af4c2d84",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf2134dc0b66915f8261e335d9552f623559aa2016741ba0da8962fbeedc9191`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private inductive TestInd where
| foo : TestInd
| bar : TestInd

/--
info: TestInd : Type
TestInd.bar : TestInd
TestInd.bar.elim.{u} {motive : TestInd → Sort u} (t : TestInd) (h : t.ctorIdx = 1) (bar : motive TestInd.bar) : motive t
TestInd.bar.sizeOf_spec : sizeOf TestInd.bar = 1
TestInd.casesOn.{u} {motive : TestInd → Sort u} (t : TestInd) (foo : motive TestInd.foo) (bar : motive TestInd.bar) :
  motive t
TestInd.ctorElim.{u} {motive : TestInd → Sort u} (ctorIdx : Nat) (t : TestInd) (h : ctorIdx = t.ctorIdx)
  (k : TestInd.ctorElimType ctorIdx) : motive t
TestInd.ctorElimType.{u} {motive : TestInd → Sort u} (ctorIdx : Nat) : Sort (max 1 u)
TestInd.ctorIdx : TestInd → Nat
TestInd.foo : TestInd
TestInd.foo.elim.{u} {motive : TestInd → Sort u} (t : TestInd) (h : t.ctorIdx = 0) (foo : motive TestInd.foo) : motive t
TestInd.foo.sizeOf_spec : sizeOf TestInd.foo = 1
TestInd.noConfusion.{v✝} {P : Sort v✝} {x y : TestInd} (h : x = y) : TestInd.noConfusionType P x y
TestInd.noConfusionType.{v✝} (P : Sort v✝) (x y : TestInd) : Sort v✝
TestInd.rec.{u} {motive : TestInd → Sort u} (foo : motive TestInd.foo) (bar : motive TestInd.bar) (t : TestInd) :
  motive t
TestInd.recOn.{u} {motive : TestInd → Sort u} (t : TestInd) (foo : motive TestInd.foo) (bar : motive TestInd.bar) :
  motive t
TestInd.toCtorIdx : TestInd → Nat
-/
#guard_msgs in
#print prefix TestInd

-- `#print prefix` does nothing if no identifier is provided
#guard_msgs in
#print prefix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4780d3a79d75d05ae004561c4bdaba81b0738e5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
