# isEmpty_filter_not_contains_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d16504d5-bbf4-b927-0896-6d3e07a714a1",
  "kind": "theorem",
  "lexical_name": "isEmpty_filter_not_contains_iff",
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
  "slug": "isempty-filter-not-contains-iff--56d736098ccf038789173af7",
  "source": {
    "blob": "ddcb189e0bb3710a43ea511e7a5fcd0941f0a100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6270,
    "line": 6233,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56d736098ccf038789173af7f363d0128c770b3b69df589d8e967efbf1257e3a",
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

Occurrence: `result:d16504d5-bbf4-b927-0896-6d3e07a714a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6233–6270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEmpty_filter_not_contains_iff [BEq α] [EquivBEq α]
    {l₁ : List ((a : α) × β a)} {l₂ : List α} (dl₁ : DistinctKeys l₁) :
    (List.filter (fun p => !List.contains l₂ p.fst) l₁).isEmpty = true ↔
    ∀ (k : α), containsKey k l₁ = true → List.contains l₂ k := by
  constructor
  case mpr =>
    intro hyp
    rw [List.isEmpty_iff]
    simp only [List.filter_eq_nil_iff, Bool.not_eq_true]
    intro ⟨k, v⟩ mem
    simp only [Bool.not_eq_eq_eq_not, Bool.not_false]
    apply hyp
    apply List.containsKey_of_mem mem
  case mp =>
    intro hyp k mem
    rw [List.isEmpty_iff] at hyp
    induction l₁ with
    | nil => simp at mem
    | cons h t ih =>
      rw [containsKey_cons] at mem
      simp only [Bool.or_eq_true] at mem
      rw [List.filter_cons] at hyp
      split at hyp
      case cons.isTrue _ =>
        simp at hyp
      case cons.isFalse heq =>
        simp only [Bool.not_eq_eq_eq_not, Bool.not_true] at heq
        cases mem
        case inl heq2 =>
          rw [Bool.not_eq_false] at heq
          rwa [List.contains_congr heq2] at heq
        case inr heq2 =>
          apply ih
          · rw [List.distinctKeys_cons_iff] at dl₁
            exact dl₁.1
          · exact hyp
          · exact heq2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean#L6233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcb189e0bb3710a43ea511e7a5fcd0941f0a100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
