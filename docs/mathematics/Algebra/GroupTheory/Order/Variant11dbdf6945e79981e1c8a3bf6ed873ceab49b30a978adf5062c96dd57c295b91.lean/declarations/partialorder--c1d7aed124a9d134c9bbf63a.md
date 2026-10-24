# partialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e0e8a891a43d46eeb850ae764636029dd564a7a732a6c24092e3c41fa54d0c8",
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
  "slug": "partialorder--c1d7aed124a9d134c9bbf63a",
  "source": {
    "blob": "8de67bc977889b053cee2102ba0373b1b35ba820",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 69,
    "path": "GRWTSK/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1d7aed124a9d134c9bbf63a59364d585203134a1afd0d3915a78e2d42268764",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e0e8a891a43d46eeb850ae764636029dd564a7a732a6c24092e3c41fa54d0c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–90.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de67bc977889b053cee2102ba0373b1b35ba820` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
