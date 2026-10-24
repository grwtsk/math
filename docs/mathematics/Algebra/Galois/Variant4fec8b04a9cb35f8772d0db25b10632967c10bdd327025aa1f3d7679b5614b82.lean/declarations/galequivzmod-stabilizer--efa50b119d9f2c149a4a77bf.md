# galEquivZMod_stabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d44dfac65146ad625c990c79ed6841b297e1437",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74e576f7-abd3-24eb-b06e-92d6a41c783a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:382b0e27-317b-3a9f-8d70-6ccc14dea15e",
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
  "slug": "galequivzmod-stabilizer--efa50b119d9f2c149a4a77bf",
  "source": {
    "blob": "4d44dfac65146ad625c990c79ed6841b297e1437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 135,
    "path": "GRWTSK/Algebra/Galois/Variant4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efa50b119d9f2c149a4a77bf1f01de39211a7a49115ab1e3f5c3536dda023698",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:382b0e27-317b-3a9f-8d70-6ccc14dea15e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–161.

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

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant4fec8b04a9cb35f8772d0db25b10632967c10bdd327025aa1f3d7679b5614b82.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d44dfac65146ad625c990c79ed6841b297e1437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
