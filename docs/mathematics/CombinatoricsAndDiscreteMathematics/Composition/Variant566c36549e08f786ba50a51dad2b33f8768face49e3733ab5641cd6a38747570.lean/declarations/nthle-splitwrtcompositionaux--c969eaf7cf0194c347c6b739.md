# nthLe_splitWrtCompositionAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5edf2f6f-db7a-62be-c3e7-afe962fefd6d",
  "kind": "theorem",
  "lexical_name": "nthLe_splitWrtCompositionAux",
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
  "slug": "nthle-splitwrtcompositionaux--c969eaf7cf0194c347c6b739",
  "source": {
    "blob": "743743d60cec862274d7d70ca71dbe0c2522cc39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 751,
    "line": 732,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant566c36549e08f786ba50a51dad2b33f8768face49e3733ab5641cd6a38747570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c969eaf7cf0194c347c6b7399dec77d6ccad11f6f5d62fd97e03843418f1e9f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Composition/Variant566c36549e08f786ba50a51dad2b33f8768face49e3733ab5641cd6a38747570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5edf2f6f-db7a-62be-c3e7-afe962fefd6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 732–751.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nthLe_splitWrtCompositionAux (l : List α) (ns : List ℕ) {i : ℕ} (hi) :
    nthLe (l.splitWrtCompositionAux ns) i hi =
      (l.take (ns.take (i + 1)).sum).drop (ns.take i).sum := by
  induction' ns with n ns IH generalizing l i
  · cases hi
  cases' i with i
  · rw [Nat.add_zero, List.take_zero, sum_nil, nthLe_zero]; dsimp
    simp only [splitWrtCompositionAux_cons, head!, sum, foldl, zero_add]
  · simp only [splitWrtCompositionAux_cons, take, sum_cons,
      Nat.add_eq, add_zero, gt_iff_lt, nthLe_cons, IH]; dsimp
    rw [Nat.succ_sub_succ_eq_sub, ←Nat.succ_eq_add_one,tsub_zero]
    simp only [← drop_take, drop_drop]
    rw [add_comm]
#align list.nth_le_split_wrt_composition_aux List.nthLe_splitWrtCompositionAux

-- porting note: TODO, refactor to `List.get`
set_option linter.deprecated false in
/-- The `i`-th sublist in the splitting of a list `l` along a composition `c`, is the slice of `l`
between the indices `c.sizeUpTo i` and `c.sizeUpTo (i+1)`, i.e., the indices in the `i`-th
block of the composition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Composition/Variant566c36549e08f786ba50a51dad2b33f8768face49e3733ab5641cd6a38747570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant566c36549e08f786ba50a51dad2b33f8768face49e3733ab5641cd6a38747570.lean#L732).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743743d60cec862274d7d70ca71dbe0c2522cc39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
