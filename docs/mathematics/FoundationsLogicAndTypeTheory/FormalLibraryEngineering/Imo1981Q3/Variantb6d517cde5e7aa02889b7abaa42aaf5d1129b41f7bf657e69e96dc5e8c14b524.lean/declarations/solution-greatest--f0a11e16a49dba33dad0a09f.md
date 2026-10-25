# solution_greatest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:004720a5-3136-5681-b347-78593c7b8ce7",
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
  "slug": "solution-greatest--f0a11e16a49dba33dad0a09f",
  "source": {
    "blob": "c7833e4dc01c45e9f5f10168f88a4a6d74688603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variantb6d517cde5e7aa02889b7abaa42aaf5d1129b41f7bf657e69e96dc5e8c14b524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0a11e16a49dba33dad0a09f4611801619805768b809b78739631af7c8792842",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variantb6d517cde5e7aa02889b7abaa42aaf5d1129b41f7bf657e69e96dc5e8c14b524.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:004720a5-3136-5681-b347-78593c7b8ce7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem solution_greatest (H : ProblemPredicate N (fib K) (fib (K + 1))) :
    IsGreatest (specifiedSet N) M :=
  ⟨⟨fib K, fib (K + 1), by simp [HM], H⟩, fun k h => solution_bound HK HM h⟩
#align imo1981_q3.solution_greatest Imo1981Q3.solution_greatest

end Imo1981Q3

open Imo1981Q3

/-
Now we just have to demonstrate that 987 and 1597 are in fact the largest Fibonacci
numbers in this range, and thus provide the maximum of `specifiedSet`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variantb6d517cde5e7aa02889b7abaa42aaf5d1129b41f7bf657e69e96dc5e8c14b524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variantb6d517cde5e7aa02889b7abaa42aaf5d1129b41f7bf657e69e96dc5e8c14b524.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7833e4dc01c45e9f5f10168f88a4a6d74688603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
