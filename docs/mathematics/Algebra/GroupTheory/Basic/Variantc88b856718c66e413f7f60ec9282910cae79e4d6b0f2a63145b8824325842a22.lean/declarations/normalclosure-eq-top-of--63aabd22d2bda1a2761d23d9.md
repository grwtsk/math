# normalClosure_eq_top_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5eca4519136d53ff82d1a680fc87e8b975624157",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 935,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d166dc53-e016-f488-fb71-743ac6918c0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edfd6e30-8f16-2790-def0-b26e53ba683d",
  "kind": "theorem",
  "lexical_name": "normalClosure_eq_top_of",
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
  "slug": "normalclosure-eq-top-of--63aabd22d2bda1a2761d23d9",
  "source": {
    "blob": "5eca4519136d53ff82d1a680fc87e8b975624157",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 961,
    "line": 935,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63aabd22d2bda1a2761d23d910ab16d8c5543cb080eaf18c1ff89d499fa90cff",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edfd6e30-8f16-2790-def0-b26e53ba683d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 935–961.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalClosure_eq_top_of {N : Subgroup G} [hn : N.Normal] {g g' : G} {hg : g ∈ N}
    {hg' : g' ∈ N} (hc : IsConj g g') (ht : normalClosure ({⟨g, hg⟩} : Set N) = ⊤) :
    normalClosure ({⟨g', hg'⟩} : Set N) = ⊤ := by
  obtain ⟨c, rfl⟩ := isConj_iff.1 hc
  have h : ∀ x : N, (MulAut.conj c) x ∈ N := by
    rintro ⟨x, hx⟩
    exact hn.conj_mem _ hx c
  have hs : Function.Surjective (((MulAut.conj c).toMonoidHom.restrict N).codRestrict _ h) := by
    rintro ⟨x, hx⟩
    refine ⟨⟨c⁻¹ * x * c, ?_⟩, ?_⟩
    · have h := hn.conj_mem _ hx c⁻¹
      rwa [inv_inv] at h
    simp only [MonoidHom.codRestrict_apply, MulEquiv.coe_toMonoidHom, MulAut.conj_apply, coe_mk,
      MonoidHom.restrict_apply, Subtype.mk_eq_mk, ← mul_assoc, mul_inv_cancel, one_mul]
    rw [mul_assoc, mul_inv_cancel, mul_one]
  rw [eq_top_iff, ← MonoidHom.range_eq_top.2 hs, MonoidHom.range_eq_map]
  refine le_trans (map_mono (eq_top_iff.1 ht)) (map_le_iff_le_comap.2 (normalClosure_le_normal ?_))
  rw [Set.singleton_subset_iff, SetLike.mem_coe]
  simp only [MonoidHom.codRestrict_apply, MulEquiv.coe_toMonoidHom, MulAut.conj_apply, coe_mk,
    MonoidHom.restrict_apply, mem_comap]
  exact subset_normalClosure (Set.mem_singleton _)

end IsConj

namespace ConjClasses

/-- The conjugacy classes that are not trivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.lean#L935).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eca4519136d53ff82d1a680fc87e8b975624157` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
