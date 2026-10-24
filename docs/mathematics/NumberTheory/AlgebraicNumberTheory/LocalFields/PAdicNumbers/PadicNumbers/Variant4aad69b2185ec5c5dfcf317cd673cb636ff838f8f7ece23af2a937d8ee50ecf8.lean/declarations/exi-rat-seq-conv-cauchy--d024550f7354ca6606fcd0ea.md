# exi_rat_seq_conv_cauchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46d32e37-3d39-cc87-e072-4cb41bdcfb92",
  "kind": "theorem",
  "lexical_name": "exi_rat_seq_conv_cauchy",
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
  "slug": "exi-rat-seq-conv-cauchy--d024550f7354ca6606fcd0ea",
  "source": {
    "blob": "03992962c56bade9f45eae6542bea6aa3fcdf176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 736,
    "line": 709,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d024550f7354ca6606fcd0eaa5c8b11a20d672a059bb9827ac957e66ab40dc03",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46d32e37-3d39-cc87-e072-4cb41bdcfb92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 709–736.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exi_rat_seq_conv_cauchy : IsCauSeq (padicNorm p) (limSeq f) := fun ε hε ↦ by
  have hε3 : 0 < ε / 3 := div_pos hε (by norm_num)
  let ⟨N, hN⟩ := exi_rat_seq_conv f hε3
  let ⟨N2, hN2⟩ := f.cauchy₂ hε3
  exists max N N2
  intro j hj
  suffices
    padicNormE (limSeq f j - f (max N N2) + (f (max N N2) - limSeq f (max N N2)) : ℚ_[p]) < ε by
    ring_nf at this ⊢
    rw [← padicNormE.eq_padic_norm']
    exact_mod_cast this
  · apply lt_of_le_of_lt
    · apply padicNormE.add_le
    · rw [←add_thirds ε]
      apply _root_.add_lt_add
      · suffices padicNormE (limSeq f j - f j + (f j - f (max N N2)) : ℚ_[p]) < ε / 3 + ε / 3 by
          simpa only [sub_add_sub_cancel]
        apply lt_of_le_of_lt
        · apply padicNormE.add_le
        · apply _root_.add_lt_add
          · rw [padicNormE.map_sub]
            apply_mod_cast hN j
            exact le_of_max_le_left hj
          · exact hN2 _ (le_of_max_le_right hj) _ (le_max_right _ _)
      · apply_mod_cast hN (max N N2)
        apply le_max_left
#align padic.exi_rat_seq_conv_cauchy Padic.exi_rat_seq_conv_cauchy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean#L709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03992962c56bade9f45eae6542bea6aa3fcdf176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
