# test_expandDownloadRounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6751d52de61df7884f9a0900a1e71d22771294c9160f9f6d1eeceff62d9bb99",
  "kind": "def",
  "lexical_name": "test_expandDownloadRounds",
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
  "slug": "test-expanddownloadrounds--341151b990d87701d774d671",
  "source": {
    "blob": "0b525c0371c69136736e08efcbd51f781e5f36f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1711,
    "line": 1664,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:341151b990d87701d774d6712eddf4eff2242ee7911f342899ab364261ec5840",
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

Occurrence: `declaration:a6751d52de61df7884f9a0900a1e71d22771294c9160f9f6d1eeceff62d9bb99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1664–1711.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_expandDownloadRounds : IO Unit := do
  IO.println "expandDownloadRounds:"
  let chain : List (Option Container × String) :=
    [(some .master, "U_m"), (some .forks, "U_f"), (some .legacy, "U_l")]

  -- No unsafe scopes: one round per container, each carrying the base scope.
  assertTrue "no unsafe scopes, no base scope → scope none on every round"
    (expandDownloadRounds chain none [] ==
      [(some .master, "U_m", none), (some .forks, "U_f", none), (some .legacy, "U_l", none)])
  assertTrue "no unsafe scopes, base scope → base scope on every round"
    (expandDownloadRounds chain (some "S") [] ==
      [(some .master, "U_m", some "S"), (some .forks, "U_f", some "S"),
       (some .legacy, "U_l", some "S")])

  -- With no base scope the forks round defaults to the HEAD scope; the other
  -- containers' layouts are not SHA-scoped, so it must not leak into them.
  assertTrue "no base scope, head scope → forks at head, others unscoped"
    (expandDownloadRounds chain none [] (some "H") ==
      [(some .master, "U_m", none), (some .forks, "U_f", some "H"),
       (some .legacy, "U_l", none)])
  assertTrue "explicit base scope wins over head scope"
    (expandDownloadRounds chain (some "S") [] (some "H") ==
      [(some .master, "U_m", some "S"), (some .forks, "U_f", some "S"),
       (some .legacy, "U_l", some "S")])
  assertTrue "unsafe mode ignores head scope"
    (expandDownloadRounds chain none ["a"] (some "H") ==
      [(some .master, "U_m", none), (some .forks, "U_f", some "a"),
       (some .legacy, "U_l", none)])

  -- Unsafe scopes: only forks fans out, in order; others unscoped, base dropped.
  assertTrue "unsafe scopes fan out forks (in order), others unscoped"
    (expandDownloadRounds chain (some "ignored") ["a", "b"] ==
      [(some .master, "U_m", none),
       (some .forks, "U_f", some "a"), (some .forks, "U_f", some "b"),
       (some .legacy, "U_l", none)])

  -- A chain without forks admits no SHA-scoped reads, so it is left unchanged.
  assertTrue "no forks container → unsafe scopes have no effect"
    (expandDownloadRounds [(some .master, "U_m"), (some .legacy, "U_l")] none ["a", "b"] ==
      [(some .master, "U_m", none), (some .legacy, "U_l", none)])

end UnsafeRounds

section DecompPipeline

/-- Shared `DecompConfig` for the pipeline tests. `hashToMod` is unused here;
`isMathlibRoot := true` makes `decompressBatch` treat pending paths as plain
entries, so `mathlibDepPath` is unused too. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean#L1664).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b525c0371c69136736e08efcbd51f781e5f36f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
