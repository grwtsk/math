# eraseList_perm_filter_not_contains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53ccd35c-73a6-bb94-8ed2-ba76dc32baa2",
  "kind": "theorem",
  "lexical_name": "eraseList_perm_filter_not_contains",
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
  "slug": "eraselist-perm-filter-not-contains--3011b6837ab1b0785beb7111",
  "source": {
    "blob": "ddcb189e0bb3710a43ea511e7a5fcd0941f0a100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5556,
    "line": 5495,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3011b6837ab1b0785beb7111b6421c38500258a1f0115622cd6b3dfa1bd32839",
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

Occurrence: `result:53ccd35c-73a6-bb94-8ed2-ba76dc32baa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5495–5556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eraseList_perm_filter_not_contains [BEq α] [EquivBEq α] (l toErase : List ((a : α) × β a)) (hl : DistinctKeys l):
    List.Perm (eraseList l (toErase.map Sigma.fst)) (l.filter (fun p => !List.contains (toErase.map Sigma.fst) p.fst)) := by
  induction toErase generalizing l with
  | nil =>
    simp only [List.map_nil, eraseList, List.contains, List.elem, Bool.not_false]
    clear hl
    induction l
    case nil => simp
    case cons h t t_ih =>
      simp only [List.filter_cons_of_pos, List.perm_cons]
      apply t_ih
  | cons kv tl ih =>
    simp only [List.map_cons, eraseList]
    apply Perm.trans
    · apply ih
      · apply DistinctKeys.eraseKey hl
    · apply getEntry?_ext
      · apply @DistinctKeys.filter α β _ (eraseKey kv.fst l) (fun p _ => !List.contains (tl.map Sigma.fst) p)
        · apply DistinctKeys.eraseKey hl
      · apply @DistinctKeys.filter α β _ l (fun p _ => !List.contains ((kv :: tl).map Sigma.fst) p) hl
      · intro a
        rw [getEntry?_filter, getEntry?_filter]
        rw [getEntry?_eraseKey]
        split
        · rename_i heq
          conv =>
            rhs
            lhs
            ext p
            congr
            rw [List.contains_cons]
          simp only [Option.filter_none, Bool.not_or]
          generalize heq2 : getEntry? a l = x
          cases x
          · simp
          · rename_i val
            rw [getEntry?_eq_some_iff] at heq2
            · simp [Option.filter]
              intro hyp
              rw [BEq.symm <| BEq.trans heq heq2.1] at hyp
              contradiction
            · exact hl
        · rename_i heq
          simp only [Bool.not_eq_true] at heq
          generalize heq2 : getEntry? a l = x
          cases x
          · simp
          · rename_i val
            simp only [Option.filter, Bool.not_eq_eq_eq_not, Bool.not_true]
            rw [List.contains_cons]
            rw [getEntry?_eq_some_iff] at heq2
            · suffices (val.fst == kv.fst) = false by simp [this]
              apply Classical.byContradiction
              intro hyp
              simp only [Bool.not_eq_false] at hyp
              rw [BEq.symm <| BEq.trans heq2.1 hyp] at heq
              contradiction
            · exact hl
        · exact hl
        · exact hl
        · apply DistinctKeys.eraseKey hl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean#L5495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcb189e0bb3710a43ea511e7a5fcd0941f0a100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
