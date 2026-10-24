# test_isCacheMissStatus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f81becd3cd37bb6ddca6ba524058dd968310b966d593f36e59916307b3e432cd",
  "kind": "def",
  "lexical_name": "test_isCacheMissStatus",
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
  "slug": "test-iscachemissstatus--7878f2061a40baa5338b95a6",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1186,
    "line": 1164,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7878f2061a40baa5338b95a69a7c6a38529961bcf25da1d3a0e6e31cca4fd158",
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

Occurrence: `declaration:f81becd3cd37bb6ddca6ba524058dd968310b966d593f36e59916307b3e432cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1164–1186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_isCacheMissStatus : IO Unit := do
  IO.println "isCacheMissStatus:"
  -- 404 is a miss regardless of the flag.
  assertTrue "404 is a miss (flag off)"        (isCacheMissStatus 404 false)
  assertTrue "404 is a miss (flag on)"         (isCacheMissStatus 404 true)
  -- 403 is a miss only when the flag is set (i.e. for `legacy`).
  assertTrue "403 is a failure when flag off"  (!isCacheMissStatus 403 false)
  assertTrue "403 is a miss when flag on"      (isCacheMissStatus 403 true)
  -- Success and server errors are never misses; they must surface.
  assertTrue "200 is not a miss"               (!isCacheMissStatus 200 true)
  assertTrue "500 is not a miss"               (!isCacheMissStatus 500 true)
  assertTrue "403-as-miss is scoped to 403"    (!isCacheMissStatus 401 true)
  -- A refused redirect (`--proto-redir`, `--max-redirs`) leaves its status
  -- here. A miss verdict would make it look like an empty cache and send the
  -- read silently down the container chain, so it counts as a failure.
  assertTrue "302 is not a miss"               (!isCacheMissStatus 302 true)

end CacheMissStatus

section AlreadyPresentStatus

/-- A non-overwrite `put` (`If-None-Match: *`) gets a 409 or 412 back for a blob
that already exists; both mean "present", not a failure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L1164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
