# Nodup.idxOf_getElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b97597a5-5f10-9edf-1dca-6cfab7532778",
  "kind": "theorem",
  "lexical_name": "Nodup.idxOf_getElem",
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
  "slug": "nodup-idxof-getelem--4d205b2d7141f8b8ca0aee9f",
  "source": {
    "blob": "1ceaa7eca75b8d682bbe774518d0286245c10549",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d205b2d7141f8b8ca0aee9f39ce475f7e38d7db1223a111cda3cbcffbebc3ae",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b97597a5-5f10-9edf-1dca-6cfab7532778`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nodup.idxOf_getElem [BEq α] [LawfulBEq α] {xs : List α} (H : Nodup xs)
    (i : Nat) (h : i < xs.length) : idxOf xs[i] xs = i := by
  induction xs generalizing i with
  | nil => exact absurd h (Nat.not_lt_zero i)
  | cons a l ih =>
    rw [nodup_cons] at H
    match i with
    | 0 => rw [getElem_cons_zero, idxOf_cons_self]
    | j + 1 =>
      have hj : j < l.length := Nat.lt_of_succ_lt_succ h
      have hne : (a == l[j]) = false := by
        rw [beq_eq_false_iff_ne]
        exact fun hc => H.1 (hc ▸ getElem_mem hj)
      rw [getElem_cons_succ, idxOf_cons, hne, cond_false, ih H.2 j hj]

grind_pattern Nodup.idxOf_getElem => Nodup xs, idxOf (xs[i]'h) xs

end List
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd330cd1f79c12279a822092b5d3f97cfcb57f44d2a1e6baeb7523767f641397b.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ceaa7eca75b8d682bbe774518d0286245c10549` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
