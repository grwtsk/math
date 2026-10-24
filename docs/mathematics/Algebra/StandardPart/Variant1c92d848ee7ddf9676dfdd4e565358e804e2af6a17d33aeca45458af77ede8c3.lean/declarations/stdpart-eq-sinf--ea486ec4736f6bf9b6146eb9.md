# stdPart_eq_sInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0975798-198c-9868-8065-49669272ec21",
  "kind": "theorem",
  "lexical_name": "stdPart_eq_sInf",
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
  "slug": "stdpart-eq-sinf--ea486ec4736f6bf9b6146eb9",
  "source": {
    "blob": "257c0d42e19a2ce43c8766ae128a374546011e77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 457,
    "path": "GRWTSK/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea486ec4736f6bf9b6146eb9cb13c0104ea52b89a85298678fc617c4728e89bf",
  "verification": {
    "reference": "docs/verification/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0975798-198c-9868-8065-49669272ec21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stdPart_eq_sInf (f : ℝ →+*o K) (x : K) : stdPart x = sInf {r | x < f r} := by
  obtain hx | hx := le_or_gt 0 (mk x)
  · obtain ⟨a, ha⟩ := exists_int_lt_of_mk_nonneg hx
    obtain ⟨b, hb⟩ := exists_int_gt_of_mk_nonneg hx
    have hn : {r | x < f r}.Nonempty := ⟨b, by simpa using hb⟩
    have hb : BddBelow {r | x < f r} := by
      refine ⟨a, fun r hr ↦ ?_⟩
      by_contra! hra
      exact (f.monotone' hra.le).not_gt (by simpa using ha.trans hr)
    apply stdPart_eq f <;> intro r hr
    · simpa using notMem_of_lt_csInf hr hb
    · obtain ⟨s, hs, hs'⟩ := (csInf_lt_iff hb hn).1 hr
      exact hs.le.trans (f.monotone' hs'.le)
  · rw [stdPart_of_mk_ne_zero hx.ne]
    have hr {r} := hx.trans_le (mk_map_nonneg_of_archimedean f r)
    obtain h | h := le_or_gt 0 x
    · convert! Real.sInf_empty.symm
      rw [Set.eq_empty_iff_forall_notMem]
      exact fun r ↦ (lt_of_mk_lt_mk_of_nonneg hr h).not_gt
    · convert! Real.sInf_univ.symm
      rw [Set.eq_univ_iff_forall]
      exact fun r ↦ lt_of_mk_lt_mk_of_nonpos hr h.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `257c0d42e19a2ce43c8766ae128a374546011e77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
