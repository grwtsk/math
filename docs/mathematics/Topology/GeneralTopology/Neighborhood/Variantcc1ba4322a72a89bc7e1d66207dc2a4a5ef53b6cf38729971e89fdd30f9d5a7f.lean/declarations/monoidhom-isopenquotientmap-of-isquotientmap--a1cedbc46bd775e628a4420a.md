# MonoidHom.isOpenQuotientMap_of_isQuotientMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15dbcec4-399d-e6f7-8226-35eae0faeb5f",
  "kind": "lemma",
  "lexical_name": "MonoidHom.isOpenQuotientMap_of_isQuotientMap",
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
  "slug": "monoidhom-isopenquotientmap-of-isquotientmap--a1cedbc46bd775e628a4420a",
  "source": {
    "blob": "c699590b3ab696baf28c44478bafdf2d8a450bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1cedbc46bd775e628a4420a00dbf1a3f286e80dff838223d8af11cf8436e466",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15dbcec4-399d-e6f7-8226-35eae0faeb5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MonoidHom.isOpenQuotientMap_of_isQuotientMap {A : Type*} [Group A]
    [TopologicalSpace A] [ContinuousMul A] {B : Type*} [Group B] [TopologicalSpace B]
    {F : Type*} [FunLike F A B] [MonoidHomClass F A B] {φ : F}
    (hφ : IsQuotientMap φ) : IsOpenQuotientMap φ where
    surjective := hφ.surjective
    continuous := hφ.continuous
    isOpenMap := by
      -- We need to check that if `U ⊆ A` is open then `φ⁻¹ (φ U)` is open.
      intro U hU
      rw [← hφ.isOpen_preimage]
      -- It suffices to show that `φ⁻¹ (φ U) = ⋃ (U * k⁻¹)` as `k` runs through the kernel of `φ`,
      -- as `U * k⁻¹` is open because `x ↦ x * k` is continuous.
      -- Remark: here is where we use that we have groups not monoids (you cannot avoid
      -- using both `k` and `k⁻¹` at this point).
      suffices ⇑φ ⁻¹' ⇑φ '' U = ⋃ k ∈ ker (φ : A →* B), (fun x ↦ x * k) ⁻¹' U by
        exact this ▸ isOpen_biUnion (fun k _ ↦ Continuous.isOpen_preimage (by fun_prop) _ hU)
      ext x
      -- But this is an elementary calculation.
      constructor
      · rintro ⟨y, hyU, hyx⟩
        apply Set.mem_iUnion_of_mem (x⁻¹ * y)
        simp_all
      · rintro ⟨_, ⟨k, rfl⟩, _, ⟨(hk : φ k = 1), rfl⟩, hx⟩
        use x * k, hx
        rw [map_mul, hk, mul_one]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c699590b3ab696baf28c44478bafdf2d8a450bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
