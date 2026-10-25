# exists_last_eq_snoc_equivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56788081-1599-6145-1f02-4dec10392ed1",
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
  "slug": "exists-last-eq-snoc-equivalent--32c22809bd24ecb731c4692b",
  "source": {
    "blob": "b6ba949cd340e0a11327d485e1348f5fd300ad50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 373,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32c22809bd24ecb731c4692bcc0c9914bd62b127be3df640f4e1f5c3d42f017c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56788081-1599-6145-1f02-4dec10392ed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–410.

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
        exact Equivalent.snoc hteqv (by simpa using (isMaximal_eraseLast_last h0s).iso_refl)
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ba949cd340e0a11327d485e1348f5fd300ad50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
