# Subgroup.commProb_subgroup_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90b8f372-5bbb-a270-4f1e-aa0d15033eca",
  "kind": "theorem",
  "lexical_name": "Subgroup.commProb_subgroup_le",
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
  "slug": "subgroup-commprob-subgroup-le--150e24acc0cddecbbda23e15",
  "source": {
    "blob": "44af56c7381a9a45ab97e45f78de00a2c26ef55f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 113,
    "path": "GRWTSK/Algebra/GroupTheory/CommutingProbability/Variant1194a6458354e1ec67ee50d88691be3b49fcb5c897f6e13ef0d798590835ef25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:150e24acc0cddecbbda23e150e6220e29d05d06dffc46799ce6c1966a980d497",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CommutingProbability/Variant1194a6458354e1ec67ee50d88691be3b49fcb5c897f6e13ef0d798590835ef25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90b8f372-5bbb-a270-4f1e-aa0d15033eca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subgroup.commProb_subgroup_le : commProb H ≤ commProb G * (H.index : ℚ) ^ 2 := by
  /- After rewriting with `commProb_def`, we reduce to showing that `G` has at least as many
      commuting pairs as `H`. -/
  rw [commProb_def, commProb_def, div_le_iff₀, mul_assoc, ← mul_pow, ← Nat.cast_mul,
    mul_comm H.index, H.card_mul_index, div_mul_cancel₀, Nat.cast_le]
  · refine Nat.card_le_card_of_injective (fun p ↦ ⟨⟨p.1.1, p.1.2⟩, Subtype.ext_iff.mp p.2⟩) ?_
    exact fun p q h ↦ by simpa only [Subtype.ext_iff, Prod.ext_iff] using h
  · exact pow_ne_zero 2 (Nat.cast_ne_zero.mpr Finite.card_pos.ne')
  · exact pow_pos (Nat.cast_pos.mpr Finite.card_pos) 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CommutingProbability/Variant1194a6458354e1ec67ee50d88691be3b49fcb5c897f6e13ef0d798590835ef25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CommutingProbability/Variant1194a6458354e1ec67ee50d88691be3b49fcb5c897f6e13ef0d798590835ef25.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44af56c7381a9a45ab97e45f78de00a2c26ef55f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
