# compProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a375a6b6972b767eb180fc3981394b8f02b384b2cde5d0fb85d9c0450f08eb29",
  "kind": "def",
  "lexical_name": "compProd",
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
  "slug": "compprod--0b3c2d6dc8fd5c00b72eb963",
  "source": {
    "blob": "ead17e0147675af98c5315926e73cc1861800115",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b3c2d6dc8fd5c00b72eb963a64e081fa905bfa4b07281a1128a1953ec02ee2e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a375a6b6972b767eb180fc3981394b8f02b384b2cde5d0fb85d9c0450f08eb29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def compProd (κ : Kernel α β) (η : Kernel (α × β) γ) : Kernel α (β × γ) :=
  if h : IsSFiniteKernel κ ∧ IsSFiniteKernel η then
  { toFun := fun a ↦
      have : IsSFiniteKernel η := h.2
      Measure.ofMeasurable (fun s _ ↦ compProdFun κ η a s) (compProdFun_empty κ η a)
        (compProdFun_iUnion κ η a)
    measurable' := by
      have : IsSFiniteKernel κ := h.1
      have : IsSFiniteKernel η := h.2
      refine Measure.measurable_of_measurable_coe _ fun s hs ↦ ?_
      have : (fun a ↦ Measure.ofMeasurable (fun s _ ↦ compProdFun κ η a s) (compProdFun_empty κ η a)
              (compProdFun_iUnion κ η a) s)
          = fun a ↦ compProdFun κ η a s := by
        ext1 a; rwa [Measure.ofMeasurable_apply]
      rw [this]
      exact measurable_compProdFun κ η hs }
  else 0

@[inherit_doc]
scoped[ProbabilityTheory] infixl:100 " ⊗ₖ " => ProbabilityTheory.Kernel.compProd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ead17e0147675af98c5315926e73cc1861800115` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
