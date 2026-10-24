# Kernel.apply_eq_measure_condKernel_of_compProd_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca9ee4df-54c4-7b9c-0b6f-04efbb06749e",
  "kind": "lemma",
  "lexical_name": "Kernel.apply_eq_measure_condKernel_of_compProd_eq",
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
  "slug": "kernel-apply-eq-measure-condkernel-of-compprod-eq--27a7d4be6b7daa9aa8c5ac1a",
  "source": {
    "blob": "60758afde70d320b9eeca6dbf816d00a25d73622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 143,
    "path": "GRWTSK/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27a7d4be6b7daa9aa8c5ac1ad96fd2bb9835eb6be27301af91b05a7bc2953f15",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca9ee4df-54c4-7b9c-0b6f-04efbb06749e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Kernel.apply_eq_measure_condKernel_of_compProd_eq
    {ρ : Kernel α (β × Ω)} [IsFiniteKernel ρ] {κ : Kernel (α × β) Ω} [IsFiniteKernel κ]
    (hκ : Kernel.fst ρ ⊗ₖ κ = ρ) (a : α) :
    (fun b ↦ κ (a, b)) =ᵐ[Kernel.fst ρ a] (ρ a).condKernel := by
  have : ρ a = (ρ a).fst ⊗ₘ Kernel.comap κ (fun b ↦ (a, b)) measurable_prodMk_left := by
    ext s hs
    conv_lhs => rw [← hκ]
    rw [Measure.compProd_apply hs, Kernel.compProd_apply hs]
    rfl
  have h := eq_condKernel_of_measure_eq_compProd _ this
  rw [Kernel.fst_apply]
  filter_upwards [h] with b hb
  rw [← hb, Kernel.comap_apply]

/-- For `fst κ a`-almost all `b`, the conditional kernel `Kernel.condKernel κ` applied to `(a, b)`
is equal to the conditional kernel of the measure `κ a` applied to `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60758afde70d320b9eeca6dbf816d00a25d73622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
