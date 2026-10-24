# isLocalization_of_is_exists_mul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8337465-af50-a4a6-01cc-2bb2b65a3bc4",
  "kind": "theorem",
  "lexical_name": "isLocalization_of_is_exists_mul_mem",
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
  "slug": "islocalization-of-is-exists-mul-mem--fb0d08c8c6bcb186898a6333",
  "source": {
    "blob": "9273b387704f3c74498686d78c13ece4446a271e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 255,
    "path": "GRWTSK/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb0d08c8c6bcb186898a6333dab1b49fcba20cbc1efc5b8db4af189361a7d538",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8337465-af50-a4a6-01cc-2bb2b65a3bc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalization_of_is_exists_mul_mem (M N : Submonoid R) [IsLocalization M S] (h : M ≤ N)
    (h' : ∀ x : N, ∃ m : R, m * x ∈ M) : IsLocalization N S :=
  { map_units' := fun y => by
      obtain ⟨m, hm⟩ := h' y
      have := IsLocalization.map_units S ⟨_, hm⟩
      erw [map_mul] at this
      exact (IsUnit.mul_iff.mp this).2
    surj' := fun z => by
      obtain ⟨⟨y, s⟩, e⟩ := IsLocalization.surj M z
      exact ⟨⟨y, _, h s.prop⟩, e⟩
    eq_iff_exists' := fun {_ _} => by
      rw [IsLocalization.eq_iff_exists M]
      refine ⟨fun ⟨x, hx⟩ => ⟨⟨_, h x.prop⟩, hx⟩, ?_⟩
      rintro ⟨x, h⟩
      obtain ⟨m, hm⟩ := h' x
      refine ⟨⟨_, hm⟩, ?_⟩
      simp [h, mul_assoc] }
#align is_localization.is_localization_of_is_exists_mul_mem IsLocalization.isLocalization_of_is_exists_mul_mem

end LocalizationLocalization

end IsLocalization

namespace IsFractionRing

open IsLocalization

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9273b387704f3c74498686d78c13ece4446a271e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
