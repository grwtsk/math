# getValue?_filter_not_contains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c58f06c7-32fd-786f-6b0e-1cc7804b97c3",
  "kind": "theorem",
  "lexical_name": "getValue?_filter_not_contains",
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
  "slug": "getvalue-filter-not-contains--7ae087f3ce3aa69ba5a4d8cc",
  "source": {
    "blob": "ddcb189e0bb3710a43ea511e7a5fcd0941f0a100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6308,
    "line": 6282,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ae087f3ce3aa69ba5a4d8ccdcdc5b2837230a5ca48cec9389b6be17c93a1c28",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c58f06c7-32fd-786f-6b0e-1cc7804b97c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6282–6308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getValue?_filter_not_contains {β : Type v} [BEq α] [EquivBEq α]
    {l₁ : List ((_ : α) × β)} {l₂ : List α} {k : α}
    (dl₁ : DistinctKeys l₁) :
    getValue? k (List.filter (fun p => !List.contains l₂ p.fst) l₁) =
    if List.contains l₂ k then none else getValue? k l₁ := by
  simp only [getValue?_eq_getEntry?]
  split
  case isTrue h =>
    simp only [Option.map_eq_none_iff, getEntry?_eq_none]
    apply containsKey_filter_not_contains_of_contains_right
    · exact dl₁
    · exact h
  case isFalse h =>
    congr 1
    rw [getEntry?_filter]
    · simp only [Option.filter]
      split
      case h_1 _ val heq =>
        simp only [Bool.not_eq_eq_eq_not, Bool.not_true, heq, ite_eq_left_iff, Bool.not_eq_false,
          reduceCtorEq, imp_false, Bool.not_eq_true]
        have := @beq_of_getEntry?_eq_some α (fun _ => β) _ l₁ k val heq
        rw [Bool.not_eq_true] at h
        rw [List.contains_congr this, h]
      case h_2 _ heq =>
        simp [heq]
    · exact dl₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean#L6282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcb189e0bb3710a43ea511e7a5fcd0941f0a100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
