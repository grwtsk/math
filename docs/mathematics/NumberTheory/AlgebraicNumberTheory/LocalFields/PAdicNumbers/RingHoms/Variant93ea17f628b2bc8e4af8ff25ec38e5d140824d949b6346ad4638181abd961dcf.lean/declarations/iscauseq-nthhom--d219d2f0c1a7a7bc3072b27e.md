# isCauSeq_nthHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e8c5bffb7d64576fd64ffe8636ca79f37af2dbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 505,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90c0424d-4eab-133e-4642-243b1c0d6a02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba37a904-6004-9be9-3dd4-0404f7ad632c",
  "kind": "theorem",
  "lexical_name": "isCauSeq_nthHom",
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
  "slug": "iscauseq-nthhom--d219d2f0c1a7a7bc3072b27e",
  "source": {
    "blob": "1e8c5bffb7d64576fd64ffe8636ca79f37af2dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 505,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d219d2f0c1a7a7bc3072b27eeb8a247b40c8b34693dd337da2c88e29ff4ac276",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba37a904-6004-9be9-3dd4-0404f7ad632c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCauSeq_nthHom (r : R) : IsCauSeq (padicNorm p) fun n => nthHom f r n := by
  intro ε hε
  obtain ⟨k, hk⟩ : ∃ k : ℕ, (p : ℚ) ^ (-((k : ℕ) : ℤ)) < ε := exists_pow_neg_lt_rat p hε
  use k
  intro j hj
  refine' lt_of_le_of_lt _ hk
  norm_cast
  rw [← padicNorm.dvd_iff_norm_le]
  exact_mod_cast pow_dvd_nthHom_sub f_compat r k j hj
#align padic_int.is_cau_seq_nth_hom PadicInt.isCauSeq_nthHom

/-- `nthHomSeq f_compat r` bundles `PadicInt.nthHom f r`
as a Cauchy sequence of rationals with respect to the `p`-adic norm.
The `n`th value of the sequence is `((f n r).val : ℚ)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e8c5bffb7d64576fd64ffe8636ca79f37af2dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
