# _root_.SimpContFract.convs_eq_sum_of_forall_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74c89a57fd68dc6e45f6e3dc5e910ed5daddc010",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c27673b0-9877-bd37-235f-34142e32116d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:963f0993-efbd-d722-887b-f1344f806af8",
  "kind": "theorem",
  "lexical_name": "_root_.SimpContFract.convs_eq_sum_of_forall_le",
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
  "slug": "root-simpcontfract-convs-eq-sum-of-forall-le--a72b558fee971c6c426a4052",
  "source": {
    "blob": "74c89a57fd68dc6e45f6e3dc5e910ed5daddc010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 348,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a72b558fee971c6c426a40524f64c649fc53bd535cf806791759f2aa000a1c33",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:963f0993-efbd-d722-887b-f1344f806af8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.SimpContFract.convs_eq_sum_of_forall_le {s : SimpContFract K}
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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74c89a57fd68dc6e45f6e3dc5e910ed5daddc010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
