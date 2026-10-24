# test_hashFromFileName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c52397a933d951e0bee7b7bbeb80a5a3035079ef710eee308cc5b6b70554444",
  "kind": "def",
  "lexical_name": "test_hashFromFileName",
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
  "slug": "test-hashfromfilename--bc2f81140d5aa6b5afb00377",
  "source": {
    "blob": "0b525c0371c69136736e08efcbd51f781e5f36f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 498,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc2f81140d5aa6b5afb003770afd2d10701157c65bebcf64693206904be729bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c52397a933d951e0bee7b7bbeb80a5a3035079ef710eee308cc5b6b70554444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_hashFromFileName : IO Unit := do
  IO.println "hashFromFileName:"
  assertTrue "plain .ltar file"
    (hashFromFileName "abc123def.ltar" == String.parseHexToUInt64? "000000abc123def")
  assertTrue "in-flight process-tagged .part file strips all three suffixes"
    (hashFromFileName "abc123def.ltar.31415.part" == String.parseHexToUInt64? "000000abc123def")
  assertTrue "legacy untagged .ltar.part file strips both suffixes"
    (hashFromFileName "abc123def.ltar.part" == String.parseHexToUInt64? "000000abc123def")
  assertTrue "the tag this process actually writes round-trips"
    (hashFromFileName ("abc123def.ltar" ++ IO.PARTSUFFIX) ==
      String.parseHexToUInt64? "000000abc123def")
  assertTrue "full 16-digit hex stem"
    (hashFromFileName "deadbeef00112233.ltar" == String.parseHexToUInt64? "deadbeef00112233")
  -- A non-hex stem returns none rather than a garbage hash.
  assertTrue "non-hex stem returns none"
    (hashFromFileName "nothexa.ltar" == none)
  assertTrue "non-hex stem returns none for a tagged part file too"
    (hashFromFileName "nothexa.ltar.31415.part" == none)
  -- Directory components are ignored; only the basename's stem is parsed.
  assertTrue "leading path is ignored"
    (hashFromFileName "/path/to/abc123def.ltar" == String.parseHexToUInt64? "000000abc123def")

end HashFromFileName

section TempFileNames

/-- Every temporary file `cache` writes into the shared `CACHEDIR` carries this process's
tag, so two runs in flight in one cache directory cannot write each other's curl
configuration or each other's partial downloads. The `.part` ending is load-bearing
beyond uniqueness: the download monitor keys both its rename-on-success and its
remove-on-error off it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b525c0371c69136736e08efcbd51f781e5f36f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
