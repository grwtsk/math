# partialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11a2b911864ec195189833bee832a2674e25d0db3486eca9ffa7002d642ab3ef",
  "kind": "instance",
  "lexical_name": "partialOrder",
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
  "slug": "partialorder--af7084bd4794c296aa95644b",
  "source": {
    "blob": "4f963340a2d93320d5a7cf9c4e41748f06aba90d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 61,
    "path": "GRWTSK/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af7084bd4794c296aa95644bf1a022eac4ced81d27b190a569dbbd4ee2ebe772",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11a2b911864ec195189833bee832a2674e25d0db3486eca9ffa7002d642ab3ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance partialOrder : PartialOrder (Localization s) where
  le := (· ≤ ·)
  lt := (· < ·)
  le_refl a := Localization.induction_on a fun _ => le_rfl
  le_trans a b c :=
    Localization.induction_on₃ a b c fun a b c hab hbc => by
      simp only [mk_le_mk] at hab hbc ⊢
      apply le_of_mul_le_mul_left' _
      · exact ↑b.2
      rw [mul_left_comm]
      refine (mul_le_mul_left' hab _).trans ?_
      rwa [mul_left_comm, mul_left_comm (b.2 : α), mul_le_mul_iff_left]
  le_antisymm a b := by
    induction' a using Localization.rec with a₁ a₂
    on_goal 1 =>
      induction' b using Localization.rec with b₁ b₂
      · simp_rw [mk_le_mk, mk_eq_mk_iff, r_iff_exists]
        exact fun hab hba => ⟨1, by rw [hab.antisymm hba]⟩
    all_goals rfl
  lt_iff_le_not_le a b := Localization.induction_on₂ a b fun _ _ => lt_iff_le_not_le

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Order/Variantad96dc70a5b0f8ceef66d7a7299fce7a18b1931bbe5d523d98618457e4a7aed8.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f963340a2d93320d5a7cf9c4e41748f06aba90d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
