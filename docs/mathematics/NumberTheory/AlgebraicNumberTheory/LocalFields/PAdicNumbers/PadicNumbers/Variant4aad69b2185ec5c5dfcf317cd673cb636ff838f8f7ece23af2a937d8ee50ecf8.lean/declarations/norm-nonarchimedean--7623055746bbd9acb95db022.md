# norm_nonarchimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f516666a-2b58-9508-e97d-5fcc064e3862",
  "kind": "theorem",
  "lexical_name": "norm_nonarchimedean",
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
  "slug": "norm-nonarchimedean--7623055746bbd9acb95db022",
  "source": {
    "blob": "03992962c56bade9f45eae6542bea6aa3fcdf176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 384,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7623055746bbd9acb95db022fc130ccfda1cbdef837a1eda50c81f839463cbb0",
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

Occurrence: `result:f516666a-2b58-9508-e97d-5fcc064e3862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_nonarchimedean (f g : PadicSeq p) : (f + g).norm ≤ max f.norm g.norm :=
  if hfg : f + g ≈ 0 then by
    have : 0 ≤ max f.norm g.norm := le_max_of_le_left (norm_nonneg _)
    simpa only [hfg, norm]
  else
    if hf : f ≈ 0 then by
      have hfg' : f + g ≈ g := by
        change LimZero (f - 0) at hf
        show LimZero (f + g - g); · simpa only [sub_zero, add_sub_cancel] using hf
      have hcfg : (f + g).norm = g.norm := norm_equiv hfg'
      have hcl : f.norm = 0 := (norm_zero_iff f).2 hf
      have : max f.norm g.norm = g.norm := by rw [hcl]; exact max_eq_right (norm_nonneg _)
      rw [this, hcfg]
    else
      if hg : g ≈ 0 then by
        have hfg' : f + g ≈ f := by
          change LimZero (g - 0) at hg
          show LimZero (f + g - f); · simpa only [add_sub_cancel', sub_zero] using hg
        have hcfg : (f + g).norm = f.norm := norm_equiv hfg'
        have hcl : g.norm = 0 := (norm_zero_iff g).2 hg
        have : max f.norm g.norm = f.norm := by rw [hcl]; exact max_eq_left (norm_nonneg _)
        rw [this, hcfg]
      else norm_nonarchimedean_aux hfg hf hg
#align padic_seq.norm_nonarchimedean PadicSeq.norm_nonarchimedean

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03992962c56bade9f45eae6542bea6aa3fcdf176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
