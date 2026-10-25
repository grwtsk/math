# exists_last_eq_snoc_equivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2381085bd7c554e1c5dca38cf1aaf2e573bf8eb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 418,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:918587f8-f1cf-2fa3-1d85-6b1b4cfa29d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0fc174d-0336-2bd0-d3a9-cf1f01c68c8b",
  "kind": "theorem",
  "lexical_name": "exists_last_eq_snoc_equivalent",
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
  "slug": "exists-last-eq-snoc-equivalent--5d00348821da2d1a8c672153",
  "source": {
    "blob": "2381085bd7c554e1c5dca38cf1aaf2e573bf8eb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 418,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d00348821da2d1a8c6721539d073e14505f2c46c48f97c8899835319ea8f360",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0fc174d-0336-2bd0-d3a9-cf1f01c68c8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_last_eq_snoc_equivalent (s : CompositionSeries X) (x : X) (hm : IsMaximal x s.last)
    (hb : s.head ≤ x) :
    ∃ t : CompositionSeries X,
      t.head = s.head ∧ t.length + 1 = s.length ∧
      ∃ htx : t.last = x,
        Equivalent s (snoc t s.last (show IsMaximal t.last _ from htx.symm ▸ hm)) := by
  induction hn : s.length generalizing s x with
  | zero =>
    exact (ne_of_gt (lt_of_le_of_lt hb (lt_of_isMaximal hm))
      (subsingleton_of_length_eq_zero hn s.last_mem s.head_mem)).elim
  | succ n ih =>
    have h0s : 0 < s.length := hn.symm ▸ Nat.succ_pos _
    by_cases hetx : s.eraseLast.last = x
    · use s.eraseLast
      simp [← hetx, hn, Equivalent.refl]
    · have imxs : IsMaximal (x ⊓ s.eraseLast.last) s.eraseLast.last :=
        isMaximal_of_eq_inf x s.last rfl (Ne.symm hetx) hm (isMaximal_eraseLast_last h0s)
      have := ih _ _ imxs (le_inf (by simpa) (le_last_of_mem s.eraseLast.head_mem)) (by simp [hn])
      rcases this with ⟨t, htb, htl, htt, hteqv⟩
      have hmtx : IsMaximal t.last x :=
        isMaximal_of_eq_inf s.eraseLast.last s.last (by rw [inf_comm, htt]) hetx
          (isMaximal_eraseLast_last h0s) hm
      use snoc t x hmtx
      refine ⟨by simp [htb], by simp [htl], by simp, ?_⟩
      have : s.Equivalent ((snoc t s.eraseLast.last <| show IsMaximal t.last _ from
        htt.symm ▸ imxs).snoc s.last
          (by simpa using isMaximal_eraseLast_last h0s)) := by
        conv_lhs => rw [eq_snoc_eraseLast h0s]
        exact Equivalent.snoc hteqv (by simpa using iso_refl)
      refine this.trans <| Equivalent.snoc_snoc_swap
        (iso_symm
            (second_iso_of_eq hm
              (sup_eq_of_isMaximal hm (isMaximal_eraseLast_last h0s) (Ne.symm hetx)) htt.symm))
        (second_iso_of_eq (isMaximal_eraseLast_last h0s)
            (sup_eq_of_isMaximal (isMaximal_eraseLast_last h0s) hm hetx) (by rw [inf_comm, htt]))

/-- The **Jordan-Hölder** theorem, stated for any `JordanHolderLattice`.
If two composition series start and finish at the same place, they are equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2381085bd7c554e1c5dca38cf1aaf2e573bf8eb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
