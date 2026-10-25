# ofEncodableOfInfinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad84a55c46bf98713818ccd1c081b6a4868feb5771da0eb74ed0cf3a17ef0d35",
  "kind": "def",
  "lexical_name": "ofEncodableOfInfinite",
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
  "slug": "ofencodableofinfinite--cf8985ebf2a813ac06a18e99",
  "source": {
    "blob": "1bff5c6a5a4b3afa8cb8c4d6c9e5038e90fa01b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 315,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf8985ebf2a813ac06a18e997f8353baa46ea9b9141f928f281080731ec8b8bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad84a55c46bf98713818ccd1c081b6a4868feb5771da0eb74ed0cf3a17ef0d35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofEncodableOfInfinite (α : Type*) [Encodable α] [Infinite α] : Denumerable α := by
  letI := @decidableRangeEncode α _
  letI : Infinite (Set.range (@encode α _)) :=
    Infinite.of_injective _ (Equiv.ofInjective _ encode_injective).injective
  letI := Nat.Subtype.denumerable (Set.range (@encode α _))
  exact Denumerable.ofEquiv (Set.range (@encode α _)) (equivRangeEncode α)

end Denumerable

/-- See also `nonempty_encodable`, `nonempty_fintype`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bff5c6a5a4b3afa8cb8c4d6c9e5038e90fa01b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
