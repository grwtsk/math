# primitive_element_iff_algHom_eq_of_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98b24dbf-47cf-9aa8-8cb2-440c0fae085b",
  "kind": "theorem",
  "lexical_name": "primitive_element_iff_algHom_eq_of_eval",
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
  "slug": "primitive-element-iff-alghom-eq-of-eval--c435514ad07eab06c2281450",
  "source": {
    "blob": "2b9546978513fabf1ef67e65f1e08c1933913002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 397,
    "path": "GRWTSK/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c435514ad07eab06c2281450ecadecc12e663575186c91e31d9a19b434b3fdcc",
  "verification": {
    "reference": "docs/verification/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98b24dbf-47cf-9aa8-8cb2-440c0fae085b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_element_iff_algHom_eq_of_eval (α : E)
    (φ : E →ₐ[F] A) : F⟮α⟯ = ⊤ ↔ ∀ ψ : E →ₐ[F] A, φ α = ψ α → φ = ψ := by
  refine ⟨fun h ψ hψ ↦ (Field.primitive_element_iff_algHom_eq_of_eval' F A hA α).mp h hψ,
    fun h ↦ eq_of_le_of_finrank_eq' le_top ?_⟩
  letI : Algebra F⟮α⟯ A := (φ.comp F⟮α⟯.val).toAlgebra
  haveI := Algebra.isSeparable_tower_top_of_isSeparable F F⟮α⟯ E
  rw [IntermediateField.finrank_top, ← AlgHom.card_of_splits _ _ A, Fintype.card_eq_one_iff]
  · exact ⟨{ __ := φ, commutes' := fun _ ↦ rfl }, fun ψ ↦ AlgHom.restrictScalars_injective F <|
      Eq.symm <| h _ (ψ.commutes <| AdjoinSimple.gen F α).symm⟩
  · exact fun x ↦ (IsIntegral.of_finite F x).minpoly_splits_tower_top (hA x)

end Field

end iff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b9546978513fabf1ef67e65f1e08c1933913002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
