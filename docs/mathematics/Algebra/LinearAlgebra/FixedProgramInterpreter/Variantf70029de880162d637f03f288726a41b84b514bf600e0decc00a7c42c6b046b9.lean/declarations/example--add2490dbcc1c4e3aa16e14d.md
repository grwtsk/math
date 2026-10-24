# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:080467141277f3eb56129fe65edd4bf8b5568d6dbb4c58d72f445b9d37689a6b",
  "kind": "example",
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
  "slug": "example--add2490dbcc1c4e3aa16e14d",
  "source": {
    "blob": "3486e8ba9aaa1a4d74e4edd82ef299fedb03a228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 33,
    "path": "GRWTSK/Algebra/LinearAlgebra/FixedProgramInterpreter/Variantf70029de880162d637f03f288726a41b84b514bf600e0decc00a7c42c6b046b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:add2490dbcc1c4e3aa16e14d10670c8e50728dd38ff5617d0049e1e30e987a92",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FixedProgramInterpreter/Variantf70029de880162d637f03f288726a41b84b514bf600e0decc00a7c42c6b046b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:080467141277f3eb56129fe65edd4bf8b5568d6dbb4c58d72f445b9d37689a6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example
    (decoder : CheckedDecoder)
    (programCode input : State)
    (malformed : decoder.decode programCode = none) :
    interpretChecked decoder programCode input = none ∧
      interpretTotal decoder programCode input = zeroState := by
  exact ⟨
    interpretChecked_of_decode_none decoder programCode input malformed,
    interpretTotal_of_decode_none decoder programCode input malformed⟩

end BitMatrix.Tests.FixedProgramInterpreter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FixedProgramInterpreter/Variantf70029de880162d637f03f288726a41b84b514bf600e0decc00a7c42c6b046b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FixedProgramInterpreter/Variantf70029de880162d637f03f288726a41b84b514bf600e0decc00a7c42c6b046b9.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3486e8ba9aaa1a4d74e4edd82ef299fedb03a228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
