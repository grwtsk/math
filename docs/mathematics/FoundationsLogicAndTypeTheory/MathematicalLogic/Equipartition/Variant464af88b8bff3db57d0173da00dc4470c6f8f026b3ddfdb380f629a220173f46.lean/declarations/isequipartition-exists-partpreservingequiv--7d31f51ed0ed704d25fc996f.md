# IsEquipartition.exists_partPreservingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb41e198ea39fb58b4550fa0ad9a1f357ba61121",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7579b96b-6664-aa11-45c5-880683b31c14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f0fecc0-9892-856f-26c7-3d8b3b343262",
  "kind": "theorem",
  "lexical_name": "IsEquipartition.exists_partPreservingEquiv",
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
  "slug": "isequipartition-exists-partpreservingequiv--7d31f51ed0ed704d25fc996f",
  "source": {
    "blob": "cb41e198ea39fb58b4550fa0ad9a1f357ba61121",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d31f51ed0ed704d25fc996f8eaa5943bcd3b0695132c7bcc2abfa4d9cb7bf2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f0fecc0-9892-856f-26c7-3d8b3b343262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsEquipartition.exists_partPreservingEquiv (hP : P.IsEquipartition) : ∃ f : s ≃ Fin #s,
    ∀ a b : s, P.part a = P.part b ↔ f a % #P.parts = f b % #P.parts := by
  obtain ⟨f, hf⟩ := P.exists_enumeration
  obtain ⟨g, hg⟩ := hP.exists_partsEquiv
  let z := fun a ↦ #P.parts * (f a).2 + g (f a).1
  have gl := fun a ↦ (g (f a).1).2
  have less : ∀ a, z a < #s := fun a ↦ by
    rcases hP.card_parts_eq_average (f a).1.2 with (c | c)
    · calc
        _ < #P.parts * ((f a).2 + 1) := add_lt_add_left (gl a) _
        _ ≤ #P.parts * (#s / #P.parts) := mul_le_mul_left' (c ▸ (f a).2.2) _
        _ ≤ #P.parts * (#s / #P.parts) + #s % #P.parts := Nat.le_add_right ..
        _ = _ := Nat.div_add_mod ..
    · rw [← Nat.div_add_mod #s #P.parts]
      exact add_lt_add_of_le_of_lt (mul_le_mul_left' (by omega) _) ((hg (f a).1).mp c)
  let z' : s → Fin #s := fun a ↦ ⟨z a, less a⟩
  have bij : z'.Bijective := by
    refine (bijective_iff_injective_and_card z').mpr ⟨fun a b e ↦ ?_, by simp⟩
    simp_rw [z', z, Fin.mk.injEq, mul_comm #P.parts] at e
    haveI : NeZero #P.parts := ⟨((Nat.zero_le _).trans_lt (gl a)).ne'⟩
    change (#P.parts).divModEquiv.symm (_, _) = (#P.parts).divModEquiv.symm (_, _) at e
    simp only [Equiv.apply_eq_iff_eq, Prod.mk.injEq] at e
    apply_fun f
    exact Sigma.ext e.2 <| (Fin.heq_ext_iff (by rw [e.2])).mpr e.1
  use Equiv.ofBijective _ bij
  intro a b
  simp_rw [z', z, Equiv.ofBijective_apply, hf a b, Nat.mul_add_mod,
    Nat.mod_eq_of_lt (gl a), Nat.mod_eq_of_lt (gl b), Fin.val_eq_val, g.apply_eq_iff_eq]

/-! ### Discrete and indiscrete finpartitions -/


variable (s) -- [Decidable (a = ⊥)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb41e198ea39fb58b4550fa0ad9a1f357ba61121` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
