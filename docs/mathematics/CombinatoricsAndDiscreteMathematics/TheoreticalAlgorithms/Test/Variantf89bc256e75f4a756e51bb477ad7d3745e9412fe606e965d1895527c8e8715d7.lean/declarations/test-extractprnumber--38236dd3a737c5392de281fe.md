# test_extractPRNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8215f7fcd4888a5418b06c5fb295183ed4ab51c813deeabaf6111ce6a680fa77",
  "kind": "def",
  "lexical_name": "test_extractPRNumber",
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
  "slug": "test-extractprnumber--38236dd3a737c5392de281fe",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 475,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38236dd3a737c5392de281fe8d304bd5808364ac6711124f28616fbd5d817849",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8215f7fcd4888a5418b06c5fb295183ed4ab51c813deeabaf6111ce6a680fa77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_extractPRNumber : IO Unit := do
  IO.println "extractPRNumber:"
  -- The shape git produces for fetched PR refs.
  assertTrue "standard PR ref format"
    (extractPRNumber "refs/remotes/upstream/pr/1234" == some 1234)
  -- Branch refs are not PR refs; must not match.
  assertTrue "master branch returns none"
    (extractPRNumber "refs/heads/master" == none)
  -- Minimal `pr/N` is also accepted — the parser only inspects the trailing two segments.
  assertTrue "simple pr number"
    (extractPRNumber "pr/42" == some 42)
  -- The tail must be a valid Nat; non-numeric tails are rejected (no partial parsing).
  assertTrue "non-numeric tail returns none"
    (extractPRNumber "refs/remotes/upstream/pr/foo" == none)
  -- `0` is a valid Nat; pin down that it isn't special-cased.
  assertTrue "zero PR number"
    (extractPRNumber "refs/remotes/upstream/pr/0" == some 0)
  -- A numeric tail without the `pr/` parent must not be mistaken for a PR ref.
  assertTrue "missing pr segment returns none"
    (extractPRNumber "refs/remotes/upstream/42" == none)

end ExtractPRNumber

section HashFromFileName

/-- Recovers the UInt64 cache hash from a cached file's path, the inverse of
`UInt64.asLTar`. The subtle cases are the in-flight suffixes curl writes during a
download: today's process-tagged `.ltar.<pid>.part` (see `IO.PARTSUFFIX`) and the
untagged `.ltar.part` a cache from before tagging may have left in the shared
directory. A regression here corrupts cache lookups, so every suffix and a
non-hex stem are covered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
