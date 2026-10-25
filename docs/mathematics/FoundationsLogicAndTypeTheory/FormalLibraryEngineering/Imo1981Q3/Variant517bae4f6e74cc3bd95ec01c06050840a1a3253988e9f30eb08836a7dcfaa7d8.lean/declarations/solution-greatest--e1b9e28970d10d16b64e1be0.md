# solution_greatest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "199a09dd1e95c1637d53fc26049671f59219d49c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/517bae4f6e74cc3bd95ec01c06050840a1a3253988e9f30eb08836a7dcfaa7d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7bf3ffb-71a0-2b36-1418-34fa9aaa54c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08454ab3-2139-e518-75f9-dae9899965cf",
  "kind": "theorem",
  "lexical_name": "solution_greatest",
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
  "slug": "solution-greatest--e1b9e28970d10d16b64e1be0",
  "source": {
    "blob": "199a09dd1e95c1637d53fc26049671f59219d49c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant517bae4f6e74cc3bd95ec01c06050840a1a3253988e9f30eb08836a7dcfaa7d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1b9e28970d10d16b64e1be014440b9b2c92d93bde4efe4b057f4243c176c787",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant517bae4f6e74cc3bd95ec01c06050840a1a3253988e9f30eb08836a7dcfaa7d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08454ab3-2139-e518-75f9-dae9899965cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem solution_greatest (H : ProblemPredicate N (fib K) (fib (K + 1))) :
    IsGreatest (specifiedSet N) M :=
  ⟨⟨fib K, fib (K + 1), by simp [HM], H⟩, fun k h => solution_bound HK HM h⟩

end Imo1981Q3

open Imo1981Q3

/-
Now we just have to demonstrate that 987 and 1597 are in fact the largest Fibonacci
numbers in this range, and thus provide the maximum of `specifiedSet`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant517bae4f6e74cc3bd95ec01c06050840a1a3253988e9f30eb08836a7dcfaa7d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant517bae4f6e74cc3bd95ec01c06050840a1a3253988e9f30eb08836a7dcfaa7d8.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `199a09dd1e95c1637d53fc26049671f59219d49c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
