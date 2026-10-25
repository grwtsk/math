# isPrincipal_mul_iff_le_two_or_omega0_opow_opow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a4ed422-1f0d-a9cd-dafc-8972a1e153c0",
  "kind": "theorem",
  "lexical_name": "isPrincipal_mul_iff_le_two_or_omega0_opow_opow",
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
  "slug": "isprincipal-mul-iff-le-two-or-omega0-opow-opow--56e129f8f21416688e6c3781",
  "source": {
    "blob": "f861d902ab73fb9d15ebb284b22fb433054e57d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 479,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56e129f8f21416688e6c37815e7caaee47e621669e5211b0a03ac0c2a156fde4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a4ed422-1f0d-a9cd-dafc-8972a1e153c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrincipal_mul_iff_le_two_or_omega0_opow_opow :
    IsPrincipal (· * ·) o ↔ o ≤ 2 ∨ o ∈ Set.range (ω ^ ω ^ · : Ordinal → Ordinal) := by
  refine ⟨fun ho => ?_, ?_⟩
  · rcases le_or_gt o 2 with ho₂ | ho₂
    · exact Or.inl ho₂
    · rcases isPrincipal_add_iff_zero_or_omega0_opow.1
        (isPrincipal_add_of_isPrincipal_mul ho ho₂.ne') with (rfl | ⟨a, rfl⟩)
      · exact (not_lt_zero ho₂).elim
      · rcases isPrincipal_add_iff_zero_or_omega0_opow.1
          (isPrincipal_add_of_isPrincipal_mul_opow one_lt_omega0 ho) with (rfl | ⟨b, rfl⟩)
        · simp
        · exact Or.inr ⟨b, rfl⟩
  · rintro (ho₂ | ⟨a, rfl⟩)
    · exact isPrincipal_mul_of_le_two ho₂
    · exact isPrincipal_mul_omega0_opow_opow a

@[deprecated (since := "2026-03-17")]
alias principal_mul_iff_le_two_or_omega0_opow_opow := isPrincipal_mul_iff_le_two_or_omega0_opow_opow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f861d902ab73fb9d15ebb284b22fb433054e57d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
