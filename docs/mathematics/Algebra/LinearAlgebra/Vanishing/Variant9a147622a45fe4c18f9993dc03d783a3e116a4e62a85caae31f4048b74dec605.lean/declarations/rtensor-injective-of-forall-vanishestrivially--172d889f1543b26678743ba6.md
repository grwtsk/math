# rTensor_injective_of_forall_vanishesTrivially

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a795537-fe72-7912-896f-069c25ae0ba5",
  "kind": "theorem",
  "lexical_name": "rTensor_injective_of_forall_vanishesTrivially",
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
  "slug": "rtensor-injective-of-forall-vanishestrivially--172d889f1543b26678743ba6",
  "source": {
    "blob": "58c8448212e81a6799d554fef30b4ba727c8d452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 235,
    "path": "GRWTSK/Algebra/LinearAlgebra/Vanishing/Variant9a147622a45fe4c18f9993dc03d783a3e116a4e62a85caae31f4048b74dec605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:172d889f1543b26678743ba6bcbd9072836e87c987fe67ac16527dc255c0dabb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Vanishing/Variant9a147622a45fe4c18f9993dc03d783a3e116a4e62a85caae31f4048b74dec605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a795537-fe72-7912-896f-069c25ae0ba5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rTensor_injective_of_forall_vanishesTrivially
    (hMN : ∀ {l : ℕ} {m : Fin l → M} {n : Fin l → N},
      ∑ i, m i ⊗ₜ n i = (0 : M ⊗[R] N) → VanishesTrivially R m n)
    (M' : Submodule R M) : Injective (rTensor N M'.subtype) := by
  apply (injective_iff_map_eq_zero _).mpr
  rintro x hx
  obtain ⟨s, rfl⟩ := exists_finset x
  rw [← Finset.sum_attach]
  apply sum_tmul_eq_zero_of_vanishesTrivially
  simp only [map_sum, rTensor_tmul, coe_subtype] at hx
  have e := (Fintype.equivFin s).symm
  rw [← Finset.sum_coe_sort, ← e.sum_comp] at hx
  have := hMN hx
  rw [← e.vanishesTrivially_comp]
  unfold VanishesTrivially at this ⊢
  convert! this
  symm
  convert! (injective_iff_map_eq_zero' _).mp (injective_subtype M') _
  simp

/-- Every expression $\sum_i m_i \otimes n_i$ which vanishes also vanishes trivially if and only if
for every submodule $M' \subseteq M$, the map $M' \otimes N \to M \otimes N$ is injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Vanishing/Variant9a147622a45fe4c18f9993dc03d783a3e116a4e62a85caae31f4048b74dec605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Vanishing/Variant9a147622a45fe4c18f9993dc03d783a3e116a4e62a85caae31f4048b74dec605.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58c8448212e81a6799d554fef30b4ba727c8d452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
