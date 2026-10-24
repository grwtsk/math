# sorted_divisorsAntidiagonalList_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:318f485a-993e-4d24-7a04-9385f0e66aa0",
  "kind": "lemma",
  "lexical_name": "sorted_divisorsAntidiagonalList_fst",
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
  "slug": "sorted-divisorsantidiagonallist-fst--0f1ee73047098c7657790ef3",
  "source": {
    "blob": "5d658d1571b561289403db422386848e60253424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f1ee73047098c7657790ef38e8a34962f66f462861095925b1417e1ce6b71f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:318f485a-993e-4d24-7a04-9385f0e66aa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sorted_divisorsAntidiagonalList_fst {n : ℕ} :
    n.divisorsAntidiagonalList.Sorted (·.fst < ·.fst) := by
  refine (List.sorted_lt_range' _ _ Nat.one_ne_zero).filterMap fun a b c d h h' ha => ?_
  rw [Option.ite_none_right_eq_some, Option.some.injEq] at h h'
  simpa [← h.right, ← h'.right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d658d1571b561289403db422386848e60253424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
