# galEquivZMod_stabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a178bc7f-d1cb-3342-6a31-e68f83b7b886",
  "kind": "theorem",
  "lexical_name": "galEquivZMod_stabilizer",
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
  "slug": "galequivzmod-stabilizer--f781290574f756d6fa34b66e",
  "source": {
    "blob": "f0621d0eb3e646b0912432e86baa0800bb0bd0d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 143,
    "path": "GRWTSK/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f781290574f756d6fa34b66ebb50f101daa8304278deff239cca0e62953fd959",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a178bc7f-d1cb-3342-6a31-e68f83b7b886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem galEquivZMod_stabilizer :
    (galEquivZMod n K).mapSubgroup (stabilizer Gal(K/ℚ) P) =
      Subgroup.zpowers (ZMod.unitOfCoprime p hn) := by
  classical
  have : IsGalois ℚ K := IsCyclotomicExtension.isGalois {n} ℚ K
  apply SetLike.ext'
  refine Set.eq_of_subset_of_card_le ?_ ?_
  · rintro _ ⟨σ, hσ, rfl⟩
    exact mem_zpowers_galEquivZMod_of_mem_stabilizer n K p P hn hσ
  · replace hn : ¬ p ∣ n := (Nat.Prime.coprime_iff_not_dvd hp.out).mp hn
    rw [Fintype.card_eq_nat_card, Fintype.card_eq_nat_card, SetLike.coe_sort_coe, Nat.card_zpowers,
      MulEquiv.mapSubgroup_apply, Subgroup.coe_map]
    change _ ≤ Nat.card ((galEquivZMod n K).toEquiv '' _)
    rw [Nat.card_image_equiv, SetLike.coe_sort_coe, Ideal.card_stabilizer_eq (span {(p : ℤ)}),
      ramificationIdxIn_eq_of_not_dvd p K hn, one_mul, ← orderOf_injective _ Units.coeHom_injective,
      Units.coeHom_apply, ZMod.coe_unitOfCoprime, inertiaDegIn_eq_of_not_dvd p K hn]

end stabilizer

open MulChar DirichletCharacter IntermediateField

variable (R : Type*) [CommRing R] [HasEnoughRootsOfUnity R (Monoid.exponent (ZMod n)ˣ)]

/--
The bijection between the subgroups of `Gal(ℚ(ζₙ)/ℚ)` and the subgroups of the group
of Dirichlet characters of level `n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0621d0eb3e646b0912432e86baa0800bb0bd0d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
