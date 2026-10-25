# parseFails

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e07683f2c408149c6a921452f6bc0f6e0d07238a771fa3dca7448db3f9b29a5",
  "kind": "def",
  "lexical_name": "parseFails",
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
  "slug": "parsefails--d29876bb2c2417254d782cdb",
  "source": {
    "blob": "48179776043c9e5a85baac70987c0f60f5c22bcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeTest/Variant10800136be70a94c9399a9b6abb772a8382af93508390d19ad23eec2d5ac345e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d29876bb2c2417254d782cdb565c34f89b34f84a161f50ecf53451655d3e0586",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeTest/Variant10800136be70a94c9399a9b6abb772a8382af93508390d19ad23eec2d5ac345e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e07683f2c408149c6a921452f6bc0f6e0d07238a771fa3dca7448db3f9b29a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseFails (json : Json) : Bool :=
  match rawExprFromJson json with
  | Except.ok _ => false
  | Except.error _ => true

-- Test 32a: Const parsing succeeds
#guard parseSucceeds (Json.mkObj [("kind", "const"), ("val", Json.mkObj [("n", 5), ("d", 1)])])

-- Test 32b: Var parsing succeeds
#guard parseSucceeds (Json.mkObj [("kind", "var"), ("idx", 0)])

-- Test 32c: Add parsing succeeds
#guard parseSucceeds (Json.mkObj [
  ("kind", "add"),
  ("e1", Json.mkObj [("kind", "var"), ("idx", 0)]),
  ("e2", Json.mkObj [("kind", "const"), ("val", Json.mkObj [("n", 1), ("d", 1)])])
])

-- Test 32d: Mul parsing succeeds
#guard parseSucceeds (Json.mkObj [
  ("kind", "mul"),
  ("e1", Json.mkObj [("kind", "var"), ("idx", 0)]),
  ("e2", Json.mkObj [("kind", "var"), ("idx", 1)])
])

-- Test 32e: Sin parsing succeeds
#guard parseSucceeds (Json.mkObj [
  ("kind", "sin"),
  ("e", Json.mkObj [("kind", "var"), ("idx", 0)])
])

-- Test 32f: Cos parsing succeeds
#guard parseSucceeds (Json.mkObj [
  ("kind", "cos"),
  ("e", Json.mkObj [("kind", "var"), ("idx", 0)])
])

-- Test 32g: Exp parsing succeeds
#guard parseSucceeds (Json.mkObj [
  ("kind", "exp"),
  ("e", Json.mkObj [("kind", "var"), ("idx", 0)])
])

-- Test 32h: Log parsing succeeds
#guard parseSucceeds (Json.mkObj [
  ("kind", "log"),
  ("e", Json.mkObj [("kind", "var"), ("idx", 0)])
])

-- Test 32i: Neg parsing succeeds
#guard parseSucceeds (Json.mkObj [
  ("kind", "neg"),
  ("e", Json.mkObj [("kind", "var"), ("idx", 0)])
])

-- Test 32j: Div parsing succeeds
#guard parseSucceeds (Json.mkObj [
  ("kind", "div"),
  ("e1", Json.mkObj [("kind", "var"), ("idx", 0)]),
  ("e2", Json.mkObj [("kind", "const"), ("val", Json.mkObj [("n", 2), ("d", 1)])])
])

-- Test 32k: Sub parsing succeeds
#guard parseSucceeds (Json.mkObj [
  ("kind", "sub"),
  ("e1", Json.mkObj [("kind", "var"), ("idx", 0)]),
  ("e2", Json.mkObj [("kind", "const"), ("val", Json.mkObj [("n", 1), ("d", 1)])])
])

-- Test 32l: Pow parsing succeeds
#guard parseSucceeds (Json.mkObj [
  ("kind", "pow"),
  ("base", Json.mkObj [("kind", "var"), ("idx", 0)]),
  ("exp", 2)
])

-- Test 32m: Sqrt parsing succeeds
#guard parseSucceeds (Json.mkObj [
  ("kind", "sqrt"),
  ("e", Json.mkObj [("kind", "var"), ("idx", 0)])
])

-- Test 32n: Nested expression parsing succeeds
#guard parseSucceeds (Json.mkObj [
  ("kind", "mul"),
  ("e1", Json.mkObj [
    ("kind", "add"),
    ("e1", Json.mkObj [("kind", "var"), ("idx", 0)]),
    ("e2", Json.mkObj [("kind", "const"), ("val", Json.mkObj [("n", 1), ("d", 1)])])
  ]),
  ("e2", Json.mkObj [("kind", "var"), ("idx", 0)])
])

-- Test 32o: Unknown kind fails
#guard parseFails (Json.mkObj [("kind", "unknown_kind")])

-- Test 32p: Missing kind fails
#guard parseFails (Json.mkObj [("val", 5)])

/-! ## Test 33: Rational Serialization -/

-- Test 33a: RawRat to Rat conversion for positive numbers
#guard (
  let raw : RawRat := { n := 3, d := 4 }
  let q := raw.toRat
  q.num = 3 ∧ q.den = 4
)

-- Test 33b: RawRat to Rat conversion for negative numbers
#guard (
  let raw : RawRat := { n := -5, d := 7 }
  let q := raw.toRat
  q.num = -5 ∧ q.den = 7
)

-- Test 33c: RawRat to Rat conversion for zero
#guard (
  let raw : RawRat := { n := 0, d := 1 }
  let q := raw.toRat
  q.num = 0 ∧ q.den = 1
)

-- Test 33d: toRawRat for positive rationals
#guard (
  let q : ℚ := 3 / 4
  let raw := toRawRat q
  raw.n = 3 ∧ raw.d = 4
)

-- Test 33e: toRawRat for negative rationals
#guard (
  let q : ℚ := -5 / 7
  let raw := toRawRat q
  raw.n = -5 ∧ raw.d = 7
)

-- Test 33f: RawRat JSON serialization
#guard (
  let raw : RawRat := { n := 7, d := 11 }
  let json := toJson raw
  match json.getObjValAs? Int "n", json.getObjValAs? Nat "d" with
  | Except.ok n, Except.ok d => n = 7 ∧ d = 11
  | _, _ => false
)

-- Test 33g: RawInterval JSON serialization
#guard (
  let interval : RawInterval := {
    lo := { n := 1, d := 3 },
    hi := { n := 2, d := 3 }
  }
  let json := toJson interval
  match json.getObjVal? "lo", json.getObjVal? "hi" with
  | Except.ok lo, Except.ok hi =>
    match lo.getObjValAs? Int "n", hi.getObjValAs? Int "n" with
    | Except.ok loN, Except.ok hiN => loN = 1 ∧ hiN = 2
    | _, _ => false
  | _, _ => false
)

-- Test 33h: Zero denominator handling (returns 0)
#guard (
  let raw : RawRat := { n := 5, d := 0 }
  raw.toRat = 0
)

end LeanCert.Test.BridgeTest
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeTest/Variant10800136be70a94c9399a9b6abb772a8382af93508390d19ad23eec2d5ac345e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeTest/Variant10800136be70a94c9399a9b6abb772a8382af93508390d19ad23eec2d5ac345e.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48179776043c9e5a85baac70987c0f60f5c22bcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
