# toString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52822e18a10c5f8af99d06f9cd72f44c5b7f4fcaa21c558549b6f46df0975674",
  "kind": "def",
  "lexical_name": "toString",
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
  "slug": "tostring--86cd0b2ae6085d36f82b52cc",
  "source": {
    "blob": "824b720557e2086cea28adb1c6062223fa0302e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc87b4b30e6225578d25f41ada708fa35f04a397c69c5d8eb017482a0bfd56df6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86cd0b2ae6085d36f82b52ccbe44688026c6906f91756b1ecd585f2c066d9dea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc87b4b30e6225578d25f41ada708fa35f04a397c69c5d8eb017482a0bfd56df6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52822e18a10c5f8af99d06f9cd72f44c5b7f4fcaa21c558549b6f46df0975674`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def toString : JsonNumber → String
  | ⟨m, 0⟩ => m.repr
  | ⟨m, e⟩ =>
    let sign := if m ≥ 0 then "" else "-"
    let m := m.natAbs
    -- if there are too many zeroes after the decimal, we
    -- use exponents to compress the representation.
    -- this is mostly done for memory usage reasons:
    -- the size of the representation would otherwise
    -- grow exponentially in the value of exponent.
    let exp : Int := 9 + countDigits m - (e : Int)
    let exp := if exp < 0 then exp else 0
    let e' := 10 ^ (e - exp.natAbs)
    let left := (m / e').repr
    if m % e' = 0 && exp = 0 then
      s!"{sign}{left}"
    else
      let right := e' + m % e'
        |>.repr.toRawSubstring.drop 1
        |>.dropRightWhile (fun c => c = '0')
        |>.toString
      let exp := if exp = 0 then "" else "e" ++ exp.repr
      s!"{sign}{left}.{right}{exp}"

-- shift a JsonNumber by a specified amount of places to the left
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc87b4b30e6225578d25f41ada708fa35f04a397c69c5d8eb017482a0bfd56df6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc87b4b30e6225578d25f41ada708fa35f04a397c69c5d8eb017482a0bfd56df6.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `824b720557e2086cea28adb1c6062223fa0302e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
