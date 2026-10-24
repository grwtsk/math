# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.IsEuler.Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.SimpContFract.convs_eq_sum_of_forall_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15a70db3-e021-33d4-ad01-83af65b0a343",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.IsEuler.Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.SimpContFract.convs_eq_sum_of_forall_le",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-iseuler-variant0d10a9183--e1acad058b87d87cabb2f116",
  "source": {
    "blob": "f52dc96cc0a8c1503ec18c1e119429dbf2a0a4da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 356,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1acad058b87d87cabb2f116dda960bc2b2326b38db89ab132867224379e121f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15a70db3-e021-33d4-ad01-83af65b0a343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.IsEuler.Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.SimpContFract.convs_eq_sum_of_forall_le {s : SimpContFract K}
    (not_terminatedAt_n : ¬(↑s : GenContFract K).TerminatedAt n)
    (hB : ∀ m ≤ n, (↑s : GenContFract K).dens m ≠ 0) :
    (↑s : GenContFract K).convs n = (↑s : GenContFract K).h + ∑ i ∈ Finset.range n,
      (-1) ^ i / ((↑s : GenContFract K).dens i * (↑s : GenContFract K).dens (i + 1)) := by
  rw [GenContFract.convs_eq_sum_of_forall_le hB, add_left_cancel_iff]
  apply Finset.sum_congr rfl fun i hi => ?_
  congr
  calc
    _ = -∏ j ∈ Finset.range (i + 1), (-1 : K) := neg_inj.mpr <| Finset.prod_congr rfl fun j hj => by
      obtain ⟨gp, s_ith_eq⟩ : ∃ gp, (↑s : GenContFract K).s.get? j = some gp :=
        Option.ne_none_iff_exists'.1 <| mt (terminated_stable <| show j ≤ n by grind) ‹_›
      rw [partNum_eq_s_a s_ith_eq, s.property j gp.a <| partNum_eq_s_a s_ith_eq, Option.getD_some]
    _ = (-1) ^ i := by simp [pow_succ]

end GenContFract
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f52dc96cc0a8c1503ec18c1e119429dbf2a0a4da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
