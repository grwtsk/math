# vanishingIdeal_zeroLocus_eq_radical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5de8e7ba22091c3ed9112c1f455c2f80325541a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:776413a0-d11a-ba32-e3c1-33e2f7056170",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89310f76-529a-bd93-a213-f18f824a029e",
  "kind": "theorem",
  "lexical_name": "vanishingIdeal_zeroLocus_eq_radical",
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
  "slug": "vanishingideal-zerolocus-eq-radical--b1395bb3d718fb8f08c6ba15",
  "source": {
    "blob": "e5de8e7ba22091c3ed9112c1f455c2f80325541a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 200,
    "path": "GRWTSK/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1395bb3d718fb8f08c6ba156514add1e37bd168f2cb6278335e003b7ae81fb0",
  "verification": {
    "reference": "docs/verification/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89310f76-529a-bd93-a213-f18f824a029e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vanishingIdeal_zeroLocus_eq_radical (I : Ideal (MvPolynomial σ k)) :
    vanishingIdeal (zeroLocus I) = I.radical := by
  rw [I.radical_eq_jacobson]
  refine' le_antisymm (le_sInf _) fun p hp x hx => _
  · rintro J ⟨hJI, hJ⟩
    obtain ⟨x, hx⟩ := (isMaximal_iff_eq_vanishingIdeal_singleton J).1 hJ
    refine' hx.symm ▸ vanishingIdeal_anti_mono fun y hy p hp => _
    rw [← mem_vanishingIdeal_singleton_iff, Set.mem_singleton_iff.1 hy, ← hx]
    refine' hJI hp
  · rw [← mem_vanishingIdeal_singleton_iff x p]
    refine' (mem_sInf.mp hp)
      ⟨le_trans (le_vanishingIdeal_zeroLocus I) (vanishingIdeal_anti_mono fun y hy => hy.symm ▸ hx),
        MvPolynomial.vanishingIdeal_singleton_isMaximal⟩
#align mv_polynomial.vanishing_ideal_zero_locus_eq_radical MvPolynomial.vanishingIdeal_zeroLocus_eq_radical

-- Porting note : marked this as high priority to short cut simplifier
@[simp (high)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nullstellensatz/Variantb2c11b51f9ca01af6f961c80daa43e765caa28e605a2f0a0efb146bb10cb0f45.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5de8e7ba22091c3ed9112c1f455c2f80325541a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
