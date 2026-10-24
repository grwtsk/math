# supportDim_le_supportDim_quotSMulTop_succ_of_mem_jacobson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4086897a59ebfca38b498a1404357ad6b5483d07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05d2bd02f6eaee829d748fb45f2a319be54f8d33b8de7fbe3abc02b274acde34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e742208c-0d4f-419b-faef-177bed5b3ad8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80e3d14a-756f-47a0-d4bc-a7d008187c23",
  "kind": "theorem",
  "lexical_name": "supportDim_le_supportDim_quotSMulTop_succ_of_mem_jacobson",
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
  "slug": "supportdim-le-supportdim-quotsmultop-succ-of-mem-jacobson--74fe877487ec7830050d8a8f",
  "source": {
    "blob": "4086897a59ebfca38b498a1404357ad6b5483d07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 42,
    "path": "GRWTSK/Algebra/Regular/Variant05d2bd02f6eaee829d748fb45f2a319be54f8d33b8de7fbe3abc02b274acde34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74fe877487ec7830050d8a8f65827fdebfeb160ae7982d2863d16d22306c5391",
  "verification": {
    "reference": "docs/verification/Algebra/Regular/Variant05d2bd02f6eaee829d748fb45f2a319be54f8d33b8de7fbe3abc02b274acde34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80e3d14a-756f-47a0-d4bc-a7d008187c23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supportDim_le_supportDim_quotSMulTop_succ_of_mem_jacobson {x : R}
    (h : x ∈ (annihilator R M).jacobson) : supportDim R M ≤ supportDim R (QuotSMulTop x M) + 1 := by
  nontriviality M
  refine iSup_le_iff.mpr (fun p ↦ ?_)
  wlog hxp : x ∈ p.last.1.1 generalizing p
  · obtain ⟨p, hle, hm⟩ := exists_ltSeries_support_isMaximal_last_of_ltSeries_support p
    have hj : (annihilator R M).jacobson ≤ p.last.1.1 :=
      sInf_le ⟨mem_support_iff_of_finite.mp p.last.2, inferInstance⟩
    exact (Nat.cast_le.mpr hle).trans <| this _ (hj h)
  -- `q` is a chain of primes such that `x ∈ q 1`, `p.length = q.length` and `p.head = q.head`.
  obtain ⟨q, hxq, hq, h0, _⟩ : ∃ q : LTSeries (PrimeSpectrum R), _ ∧ _ ∧ p.head = q.head ∧ _ :=
    exist_ltSeries_mem_one_of_mem_last (p.map Subtype.val (fun ⦃_ _⦄ lt ↦ lt)) hxp
  by_cases hp0 : p.length = 0
  · have hb : supportDim R (QuotSMulTop x M) ≠ ⊥ :=
      (supportDim_ne_bot_iff_nontrivial R (QuotSMulTop x M)).mpr <|
        Submodule.Quotient.nontrivial_iff.mpr <|
          (Submodule.top_ne_pointwise_smul_of_mem_jacobson_annihilator h).symm
    rw [hp0, ← WithBot.coe_unbot (supportDim R (QuotSMulTop x M)) hb]
    exact WithBot.coe_le_coe.mpr zero_le
  -- Let `q' i := q (i + 1)`, then `q'` is a chain of prime ideals in `Supp(M/xM)`.
  let q' : LTSeries (support R (QuotSMulTop x M)) := {
    length := p.length - 1
    toFun := by
      intro ⟨i, hi⟩
      have hi : i + 1 < q.length + 1 :=
        Nat.succ_lt_succ (hi.trans_eq ((Nat.sub_add_cancel (Nat.pos_of_ne_zero hp0)).trans hq))
      exact ⟨q ⟨i + 1, hi⟩, by simpa using!
        ⟨mem_support_mono (by simpa [h0] using! q.monotone (Fin.zero_le _)) p.head.2, q.monotone
          ((Fin.natCast_eq_mk (Nat.lt_of_add_left_lt hi)).trans_le (Nat.le_add_left 1 i)) hxq⟩⟩
    step := by exact fun _ ↦ q.strictMono (by simp)
  }
  grw [le_tsub_add (b := p.length) (a := 1), Nat.cast_add_one, supportDim, Order.krullDim,
    ← le_iSup _ q']

set_option backward.isDefEq.respectTransparency.types false in
omit [IsNoetherianRing R] in
/-- If `M` is a finite module over a commutative ring `R`, `x ∈ M` is not in any minimal prime of
  `M`, then `dim M/xM + 1 ≤ dim M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Regular/Variant05d2bd02f6eaee829d748fb45f2a319be54f8d33b8de7fbe3abc02b274acde34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Regular/Variant05d2bd02f6eaee829d748fb45f2a319be54f8d33b8de7fbe3abc02b274acde34.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4086897a59ebfca38b498a1404357ad6b5483d07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
