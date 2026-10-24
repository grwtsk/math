# exists_separable_and_not_isCentral'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b29736832a573327a8ac8bd15305edb7b498a69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c294eb4b4d6b2f6d0c314ee35de5d60d5b2dd86878582a23b45447aea49879e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d9f883e-d4d2-4b20-a1fd-454de4a514a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be65d27f-090e-ba7f-74f1-32c6ef96ce64",
  "kind": "theorem",
  "lexical_name": "exists_separable_and_not_isCentral'",
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
  "slug": "exists-separable-and-not-iscentral--abe07e4f4a4904122104253a",
  "source": {
    "blob": "7b29736832a573327a8ac8bd15305edb7b498a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 182,
    "path": "GRWTSK/Algebra/FieldTheory/JacobsonNoether/Variant8c294eb4b4d6b2f6d0c314ee35de5d60d5b2dd86878582a23b45447aea49879e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abe07e4f4a4904122104253ab6ebfdb33d7e5baec0bc0a4db3e94af691c04966",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/JacobsonNoether/Variant8c294eb4b4d6b2f6d0c314ee35de5d60d5b2dd86878582a23b45447aea49879e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be65d27f-090e-ba7f-74f1-32c6ef96ce64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_separable_and_not_isCentral' {L D : Type*} [Field L] [DivisionRing D]
    [Algebra L D] [Algebra.IsAlgebraic L D] [Algebra.IsCentral L D]
    (hneq : (⊥ : Subalgebra L D) ≠ ⊤) :
    ∃ x : D, x ∉ (⊥ : Subalgebra L D) ∧ IsSeparable L x := by
  have hcenter : Subalgebra.center L D = ⊥ := le_bot_iff.mp IsCentral.out
  have ntrivial : Subring.center D ≠ ⊤ :=
    congr(Subalgebra.toSubring $hcenter).trans_ne (Subalgebra.toSubring_injective.ne hneq)
  set φ := Subalgebra.equivOfEq (⊥ : Subalgebra L D) (.center L D) hcenter.symm
  set equiv : L ≃+* (center D) := ((botEquiv L D).symm.trans φ).toRingEquiv
  let _ : Algebra L (center D) := equiv.toRingHom.toAlgebra
  let _ : Algebra (center D) L := equiv.symm.toRingHom.toAlgebra
  have _ : IsScalarTower L (center D) D := .of_algebraMap_eq fun _ ↦ rfl
  have _ : IsScalarTower (center D) L D := .of_algebraMap_eq fun x ↦ by
    rw [IsScalarTower.algebraMap_apply L (center D)]
    congr
    exact (equiv.apply_symm_apply x).symm
  have _ : Algebra.IsAlgebraic (center D) D := .tower_top (K := L) _
  obtain ⟨x, hxd, hx⟩ := exists_separable_and_not_isCentral D ntrivial
  exact ⟨x, ⟨by rwa [← Subalgebra.center_toSubring L, hcenter] at hxd, IsSeparable.tower_top _ hx⟩⟩

end JacobsonNoether
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/JacobsonNoether/Variant8c294eb4b4d6b2f6d0c314ee35de5d60d5b2dd86878582a23b45447aea49879e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/JacobsonNoether/Variant8c294eb4b4d6b2f6d0c314ee35de5d60d5b2dd86878582a23b45447aea49879e.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b29736832a573327a8ac8bd15305edb7b498a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
