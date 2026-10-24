# IsAcyclic.isPath_iff_isChain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e03801f-1e78-3cda-83f4-bac2c6fdb871",
  "kind": "theorem",
  "lexical_name": "IsAcyclic.isPath_iff_isChain",
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
  "slug": "isacyclic-ispath-iff-ischain--bb2ff5e9a68e6be09bbedb1d",
  "source": {
    "blob": "ce7a0b545fb79a395061d82f7e312b84ebe085d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 276,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb2ff5e9a68e6be09bbedb1d0dda41729590015fa557931e651e7dfe77d64cf8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e03801f-1e78-3cda-83f4-bac2c6fdb871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAcyclic.isPath_iff_isChain (hG : G.IsAcyclic) {v w : V} (p : G.Walk v w) :
     p.IsPath ↔ List.IsChain (· ≠ ·) p.edges := by
  classical
  refine ⟨fun h ↦ (edges_nodup_of_support_nodup <| p.isPath_def.mp h).isChain, fun h ↦ ?_⟩
  induction p with
  | nil => simp
  | @cons u' v' _ head tail ih =>
    have hcc := List.isChain_cons.mp (edges_cons _ _ ▸ h)
    refine cons_isPath_iff head tail |>.mpr ⟨ih hcc.2, ?_⟩
    rcases tail.length.eq_zero_or_pos with h' | h'
    · simp [nil_iff_support_eq.mp (length_eq_zero_iff.mp h'), head.ne]
    · by_contra hh
      apply hG <| cons head (tail.takeUntil u' hh)
      simp only [isCycle_def, isTrail_def, edges_cons, List.nodup_cons, ne_eq, reduceCtorEq,
        not_false_eq_true, support_cons, List.tail_cons, true_and]
      have : cons head (tail.takeUntil u' hh) |>.support.tail.Nodup :=
        tail.isPath_def.mp (ih hcc.2) |>.sublist <| List.IsInfix.sublist
          ⟨[], (tail.dropUntil u' hh).support.tail, by simp [← support_append]⟩
      refine ⟨⟨?_, edges_nodup_of_support_nodup this⟩, this⟩
      by_contra hhh
      refine hcc.1 s(u', v') ?_ rfl
      rw [← tail.cons_tail_eq (by simp [not_nil_iff_lt_length, h'])]
      have := IsPath.mk' this |>.eq_snd_of_mem_edges (Sym2.eq_swap ▸ hhh)
      simp [this, snd_takeUntil head.ne]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variantadafdebb18aef71d4dc7b4031ad9ce065b991df96f6e350d521903cc132fd351.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7a0b545fb79a395061d82f7e312b84ebe085d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
