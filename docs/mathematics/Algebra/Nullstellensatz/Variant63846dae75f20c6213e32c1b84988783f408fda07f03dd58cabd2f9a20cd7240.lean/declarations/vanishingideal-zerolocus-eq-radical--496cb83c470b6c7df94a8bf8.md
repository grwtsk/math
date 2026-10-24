# vanishingIdeal_zeroLocus_eq_radical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e1a8291-d03b-674a-18ba-0aa3c118efeb",
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
  "slug": "vanishingideal-zerolocus-eq-radical--496cb83c470b6c7df94a8bf8",
  "source": {
    "blob": "3d907a355ef948ae520dc5f725fb9fee480a0012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 208,
    "path": "GRWTSK/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:496cb83c470b6c7df94a8bf806c3a2b1f98dc9af10d9bec858d3ec70fe211ab0",
  "verification": {
    "reference": "docs/verification/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e1a8291-d03b-674a-18ba-0aa3c118efeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–224.

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

[Verification target and public status](../../../../../verification/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d907a355ef948ae520dc5f725fb9fee480a0012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
