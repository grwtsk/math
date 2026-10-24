# KaehlerDifferential.submodule_span_range_eq_ideal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d51f5cbb-5c50-9029-07be-c354415187eb",
  "kind": "theorem",
  "lexical_name": "KaehlerDifferential.submodule_span_range_eq_ideal",
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
  "slug": "kaehlerdifferential-submodule-span-range-eq-ideal--71289b9b8a1d12577dba200b",
  "source": {
    "blob": "a4dd5e434af9d53d19da48a4a31bc630194ee4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 105,
    "path": "GRWTSK/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71289b9b8a1d12577dba200bc93ef44121f92704a0918e00facf724479e71d0d",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d51f5cbb-5c50-9029-07be-c354415187eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KaehlerDifferential.submodule_span_range_eq_ideal :
    Submodule.span S (Set.range fun s : S => (1 : S) ⊗ₜ[R] s - s ⊗ₜ[R] (1 : S)) =
      (KaehlerDifferential.ideal R S).restrictScalars S := by
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro _ ⟨s, rfl⟩
    exact KaehlerDifferential.one_smul_sub_smul_one_mem_ideal _ _
  · rintro x (hx : _ = _)
    have : x - TensorProduct.lmul' (S := S) R x ⊗ₜ[R] (1 : S) = x := by
      rw [hx, TensorProduct.zero_tmul, sub_zero]
    rw [← this]
    clear this hx
    refine TensorProduct.induction_on x ?_ ?_ ?_
    · rw [map_zero, TensorProduct.zero_tmul, sub_zero]; exact zero_mem _
    · intro x y
      have : x ⊗ₜ[R] y - (x * y) ⊗ₜ[R] (1 : S) = x • ((1 : S) ⊗ₜ y - y ⊗ₜ (1 : S)) := by
        simp_rw [smul_sub, TensorProduct.smul_tmul', smul_eq_mul, mul_one]
      rw [TensorProduct.lmul'_apply_tmul, this]
      refine Submodule.smul_mem _ x ?_
      apply Submodule.subset_span
      exact Set.mem_range_self y
    · intro x y hx hy
      rw [map_add, TensorProduct.add_tmul, ← sub_add_sub_comm]
      exact add_mem hx hy
#align kaehler_differential.submodule_span_range_eq_ideal KaehlerDifferential.submodule_span_range_eq_ideal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4dd5e434af9d53d19da48a4a31bc630194ee4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
