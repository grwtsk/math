# IsStarProjection.mul_right_and_mul_left_of_nonneg_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36b47a38-f140-c60c-f65d-7c59e24aceb4",
  "kind": "lemma",
  "lexical_name": "IsStarProjection.mul_right_and_mul_left_of_nonneg_of_le",
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
  "slug": "isstarprojection-mul-right-and-mul-left-of-nonneg-of-le--5344280bdb1c8cfea2627a2a",
  "source": {
    "blob": "f86d7f9ef44d8304600f9e742e1afe40fbe2a2ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 659,
    "line": 646,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5344280bdb1c8cfea2627a2a391dae941f1d39249b1d6a117f0825b830dd0b3c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36b47a38-f140-c60c-f65d-7c59e24aceb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–659.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsStarProjection.mul_right_and_mul_left_of_nonneg_of_le {a e : A}
    (he : IsStarProjection e) (ha : 0 ≤ a) (hae : a ≤ e) : a * e = a ∧ e * a = a := by
  suffices a * e = a from
    ⟨this, by simpa [ha.star_eq, he.isSelfAdjoint.star_eq] using congr(star $this)⟩
  suffices ∀ a e : A⁺¹, IsStarProjection e → 0 ≤ a → a ≤ e → a * e = a from
    mod_cast this a e he.inr ha.inr (inr_mono hae)
  intro a e he ha hae
  suffices sqrt a * (1 - e : A⁺¹) = 0 by
    simpa [← mul_assoc, sqrt_mul_sqrt_self a, mul_sub, sub_eq_zero, eq_comm (a := a)]
      using congr(sqrt a * $this)
  rw [← norm_eq_zero, ← sq_eq_zero_iff, ← norm_star_mul_mul_self_of_nonneg, norm_eq_zero]
  refine le_antisymm ?_ <| star_left_conjugate_nonneg ha _
  grw [star_left_conjugate_le_conjugate hae (1 - e), mul_assoc, he.mul_one_sub_self, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f86d7f9ef44d8304600f9e742e1afe40fbe2a2ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
