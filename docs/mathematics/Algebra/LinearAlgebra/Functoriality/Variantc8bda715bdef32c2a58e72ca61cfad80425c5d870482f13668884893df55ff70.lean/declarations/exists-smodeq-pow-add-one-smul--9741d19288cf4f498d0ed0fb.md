# exists_smodEq_pow_add_one_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51c4a072-6853-2b5c-9e2a-76b51c1c544e",
  "kind": "theorem",
  "lexical_name": "exists_smodEq_pow_add_one_smul",
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
  "slug": "exists-smodeq-pow-add-one-smul--9741d19288cf4f498d0ed0fb",
  "source": {
    "blob": "ce8fac5c6b7cd95f65f979d9b8a24d43094f1d24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 382,
    "path": "GRWTSK/Algebra/LinearAlgebra/Functoriality/Variantc8bda715bdef32c2a58e72ca61cfad80425c5d870482f13668884893df55ff70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9741d19288cf4f498d0ed0fba6d80ac06016757b708bcc5cc8adaf88a3550f80",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Functoriality/Variantc8bda715bdef32c2a58e72ca61cfad80425c5d870482f13668884893df55ff70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51c4a072-6853-2b5c-9e2a-76b51c1c544e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_smodEq_pow_add_one_smul {f : M →ₗ[R] N}
    (h : Function.Surjective (mkQ (I • ⊤) ∘ₗ f)) {y : N} {n : ℕ}
    (hy : y ∈ (I ^ n • ⊤ : Submodule R N)) :
    ∃ x ∈ (I ^ n • ⊤ : Submodule R M), f x ≡ y [SMOD (I ^ (n + 1) • ⊤ : Submodule R N)] := by
  induction hy using smul_induction_on' with
  | smul r hr y _ =>
    obtain ⟨x, hx⟩ := h (mkQ _ y)
    use r • x, smul_mem_smul hr mem_top
    simp only [coe_comp, Function.comp_apply, mkQ_apply, ← SModEq.def, map_smul] at ⊢ hx
    rw [pow_succ, ← smul_smul]
    exact SModEq.smul' hx hr
  | add y1 hy1 y2 hy2 ih1 ih2 =>
    obtain ⟨x1, hx1, hx1'⟩ := ih1
    obtain ⟨x2, hx2, hx2'⟩ := ih2
    use x1 + x2, add_mem hx1 hx2
    simp only [map_add]
    exact SModEq.add hx1' hx2'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Functoriality/Variantc8bda715bdef32c2a58e72ca61cfad80425c5d870482f13668884893df55ff70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Functoriality/Variantc8bda715bdef32c2a58e72ca61cfad80425c5d870482f13668884893df55ff70.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce8fac5c6b7cd95f65f979d9b8a24d43094f1d24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
