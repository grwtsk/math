# test_Container_flatPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5121bb8cdf05091288f3fca9eeac85290c55558eb511906c3833af178edf8e7",
  "kind": "def",
  "lexical_name": "test_Container_flatPath",
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
  "slug": "test-container-flatpath--e8b280b1ce8610198bd93f59",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 265,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8b280b1ce8610198bd93f59ca6faa83284949c7daaeb3911a66ed475335433e",
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

Occurrence: `declaration:f5121bb8cdf05091288f3fca9eeac85290c55558eb511906c3833af178edf8e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_Container_flatPath : IO Unit := do
  IO.println "Container.flatPath:"
  assertTrue "master is flat for the canonical repo"
    (Container.master.flatPath MATHLIBREPO == true)
  assertTrue "master is flat for a fork repo too"
    (Container.master.flatPath "alice/mathlib4" == true)
  assertTrue "legacy is flat for the canonical repo"
    (Container.legacy.flatPath MATHLIBREPO == true)
  assertTrue "legacy is prefixed for a fork repo"
    (Container.legacy.flatPath "alice/mathlib4" == false)
  assertTrue "forks is prefixed for the canonical repo"
    (Container.forks.flatPath MATHLIBREPO == false)
  assertTrue "forks is prefixed for a fork repo"
    (Container.forks.flatPath "alice/mathlib4" == false)
  assertTrue "nightly-testing is prefixed for the nightly-testing repo"
    (Container.nightlyTesting.flatPath NIGHTLY_TESTING_REPO == false)
  assertTrue "nightly-testing is prefixed for the canonical repo"
    (Container.nightlyTesting.flatPath MATHLIBREPO == false)
  assertTrue "pr-toolchain-tests is prefixed for the nightly-testing repo"
    (Container.prToolchainTests.flatPath NIGHTLY_TESTING_REPO == false)

end ContainerModel

section PerRepoAllowlist

/-- Trust-ordered read chain per GitHub repo: the tool tries containers in this
order and stops at the first hit, so both membership and ordering are part of
the trust boundary. Key points the tests pin:
- The nightly-testing chain excludes `pr-toolchain-tests`, so trusted-nightly
  consumers never fall back to low-trust toolchain-PR uploads (those branches
  opt into the wider chain via `MATHLIB_CACHE_FROM` in CI).
- The fork chain leads with `master` (shared upstream deps), then `forks`
  (PR-specific files); `master` is absent from the nightly chain because that
  repo's toolchain gives it a different root hash.
- Every chain ends with `legacy`, so older clients' artifacts stay reachable.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
