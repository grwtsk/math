# mk_perm_eq_self_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0916aba8-4d96-04dc-a617-a01feb6ec8cc",
  "kind": "theorem",
  "lexical_name": "mk_perm_eq_self_power",
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
  "slug": "mk-perm-eq-self-power--3605c77e63a2b748483b2ce0",
  "source": {
    "blob": "eb39c0a2798bcab80f9f69c4d6903ffed124f34b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 668,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant16e6e118513ff29693f1ba574f55834218806ce80303ecc60e4c01e1dae0ef83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3605c77e63a2b748483b2ce074e4fb3a896e4a7daa0733475fdaa5fb99a5aca8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant16e6e118513ff29693f1ba574f55834218806ce80303ecc60e4c01e1dae0ef83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0916aba8-4d96-04dc-a617-a01feb6ec8cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 668–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_perm_eq_self_power : #(Equiv.Perm α) = #α ^ #α :=
  ((mk_equiv_le_embedding α α).trans (mk_embedding_le_arrow α α)).antisymm <| by
    suffices Nonempty ((α → Bool) ↪ Equiv.Perm (α × Bool)) by
      obtain ⟨e⟩ : Nonempty (α ≃ α × Bool) := by simp [← Cardinal.eq, mul_two]
      simp only [← le_def, mk_pi, mk_fintype, Fintype.card_bool, Nat.cast_ofNat,
        prod_const, lift_ofNat, lift_uzero] at this
      rwa [← power_def, power_self_eq (aleph0_le_mk α), e.permCongr.cardinal_eq]
    refine ⟨⟨fun f ↦ Involutive.toPerm (fun x ↦ ⟨x.1, xor (f x.1) x.2⟩) fun x ↦ ?_, fun f g h ↦ ?_⟩⟩
    · simp_rw [← Bool.xor_assoc, Bool.xor_self, Bool.false_xor]
    · ext a; rw [← (f a).xor_false, ← (g a).xor_false]; exact congr(($h ⟨a, false⟩).2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant16e6e118513ff29693f1ba574f55834218806ce80303ecc60e4c01e1dae0ef83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant16e6e118513ff29693f1ba574f55834218806ce80303ecc60e4c01e1dae0ef83.lean#L668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb39c0a2798bcab80f9f69c4d6903ffed124f34b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
