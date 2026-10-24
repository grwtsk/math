# eq_condKernel_of_kernel_eq_compProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4827e7da-205d-50d7-562e-56ccd4e3cd22",
  "kind": "theorem",
  "lexical_name": "eq_condKernel_of_kernel_eq_compProd",
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
  "slug": "eq-condkernel-of-kernel-eq-compprod--e74bea0a029258bbac7aed1d",
  "source": {
    "blob": "60758afde70d320b9eeca6dbf816d00a25d73622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 181,
    "path": "GRWTSK/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e74bea0a029258bbac7aed1d7cc141625e5534db8de9b2dfbedefcacf2462f60",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4827e7da-205d-50d7-562e-56ccd4e3cd22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_condKernel_of_kernel_eq_compProd [CountableOrCountablyGenerated α β]
    {ρ : Kernel α (β × Ω)} [IsFiniteKernel ρ] {κ : Kernel (α × β) Ω} [IsFiniteKernel κ]
    (hκ : Kernel.fst ρ ⊗ₖ κ = ρ) (a : α) :
    ∀ᵐ x ∂(Kernel.fst ρ a), κ (a, x) = Kernel.condKernel ρ (a, x) := by
  filter_upwards [Kernel.condKernel_apply_eq_condKernel ρ a,
    Kernel.apply_eq_measure_condKernel_of_compProd_eq hκ a] with a h1 h2
  rw [h1, h2]

end Kernel

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Unique/Variantb9f99cf4c9c1661fe4f7bfef4cd37bbabcdc488c52aa64cc549ceff4429b9d1e.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60758afde70d320b9eeca6dbf816d00a25d73622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
