# matchSuffix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1c1f8b7d17c0a822c268263f4017c6331c132ff42d153647bb530a7967d009b",
  "kind": "def",
  "lexical_name": "matchSuffix",
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
  "slug": "matchsuffix--26c69daa02c49a06aeee827c",
  "source": {
    "blob": "a5a196e9287d4d9acaf4eb0daf0741098b76891c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant56f192399c8c3984337885446834c1e98b15b845b767df0913c42a89abcd4c19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26c69daa02c49a06aeee827c5e358682f22c33a966f7c2a5e2f879228f1d79ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant56f192399c8c3984337885446834c1e98b15b845b767df0913c42a89abcd4c19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1c1f8b7d17c0a822c268263f4017c6331c132ff42d153647bb530a7967d009b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def matchSuffix (left right : Subarray α) : Subarray α × Subarray α × Array α :=
  let rec go (i : Nat) : Subarray α × Subarray α × Array α :=
    if _ : i < left.size ∧ i < right.size then
      if left[left.size - i - 1]'(by omega) == right[right.size - i - 1]'(by omega) then
        go i.succ
      else
        (left.take (left.size - i), right.take (right.size - i), (left.drop (left.size - i)).toArray)
    else
      (left.take (left.size - i), right.take (right.size - i), (left.drop (left.size - i)).toArray)
    termination_by left.size - i
  go 0

/--
Finds the least common subsequence of two arrays using a variant of jgit's histogram diff algorithm.

Unlike jgit's implementation, this one does not perform a cutoff on histogram bucket sizes, nor does
it fall back to the Myers diff algorithm. This means that it has quadratic worst-case complexity.
Empirically, however, even quadratic cases of this implementation can handle hundreds of megabytes
in a second or so, and it is intended to be used for short strings like error messages. Be
cautious when applying it to larger workloads.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant56f192399c8c3984337885446834c1e98b15b845b767df0913c42a89abcd4c19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant56f192399c8c3984337885446834c1e98b15b845b767df0913c42a89abcd4c19.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5a196e9287d4d9acaf4eb0daf0741098b76891c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
