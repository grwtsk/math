# eval_disjoinClauses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:801285ed-3d81-2f6a-5441-7777eaa79620",
  "kind": "theorem",
  "lexical_name": "eval_disjoinClauses",
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
  "slug": "eval-disjoinclauses--d14de7d193373b45908fd313",
  "source": {
    "blob": "7bd7d1e2cf0af415589435c2b71a17ead5cf7c23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 176,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d14de7d193373b45908fd31326eb1b5746f1f644515f8a784a351f246a340cda",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:801285ed-3d81-2f6a-5441-7777eaa79620`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem eval_disjoinClauses
    (ν : Valuation α)
    (left right : List (Clause α)) :
    evalClauses ν (disjoinClauses left right) =
      (evalClauses ν left || evalClauses ν right) := by
  induction left with
  | nil =>
      cases evalClauses ν right <;> rfl
  | cons clause clauses ih =>
      cases right with
      | nil =>
          simp [disjoinClauses, evalClauses]
      | cons rhs rest =>
          change
            (Clause.eval ν (clause ++ rhs) &&
                evalClauses ν
                  (List.map (fun rhsClause => clause ++ rhsClause) rest ++
                    disjoinClauses clauses (rhs :: rest))) =
              ((Clause.eval ν clause && evalClauses ν clauses) ||
                evalClauses ν (rhs :: rest))
          rw [evalClauses_append, evalClauses_map_append_left, ih]
          rw [Clause.eval_append]
          cases hc : Clause.eval ν clause <;>
            cases hs : evalClauses ν clauses <;>
            cases hr : Clause.eval ν rhs <;>
            cases ht : evalClauses ν rest <;>
            simp [evalClauses, hr, ht]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Variantb0e6940675bbab06d9967fcd41e019b25932a4cc27c4ca22fee882ceed5f4468.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bd7d1e2cf0af415589435c2b71a17ead5cf7c23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
