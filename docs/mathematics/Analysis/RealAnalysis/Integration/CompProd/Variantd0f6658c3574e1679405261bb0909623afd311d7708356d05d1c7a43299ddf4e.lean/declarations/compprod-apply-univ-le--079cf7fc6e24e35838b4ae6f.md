# compProd_apply_univ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a43c2990d0c5f8048bcc84378d0cf0bee56c7c5d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 527,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d90d7343-5630-c3e0-68d9-caf0a31343ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50be4eaa-f15c-c172-2fb2-ea9379bf0da4",
  "kind": "theorem",
  "lexical_name": "compProd_apply_univ_le",
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
  "slug": "compprod-apply-univ-le--079cf7fc6e24e35838b4ae6f",
  "source": {
    "blob": "a43c2990d0c5f8048bcc84378d0cf0bee56c7c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 527,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:079cf7fc6e24e35838b4ae6f38ca788297a13e3610769349cfaf811a0b678cb8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50be4eaa-f15c-c172-2fb2-ea9379bf0da4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compProd_apply_univ_le (κ : Kernel α β) (η : Kernel (α × β) γ) [IsFiniteKernel η] (a : α) :
    (κ ⊗ₖ η) a Set.univ ≤ κ a Set.univ * IsFiniteKernel.bound η := by
  by_cases hκ : IsSFiniteKernel κ
  swap
  · rw [compProd_of_not_isSFiniteKernel_left _ _ hκ]
    simp
  rw [compProd_apply .univ]
  let Cη := IsFiniteKernel.bound η
  calc
    ∫⁻ b, η (a, b) Set.univ ∂κ a ≤ ∫⁻ _, Cη ∂κ a :=
      lintegral_mono fun b => measure_le_bound η (a, b) Set.univ
    _ = Cη * κ a Set.univ := MeasureTheory.lintegral_const Cη
    _ = κ a Set.univ * Cη := mul_comm _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43c2990d0c5f8048bcc84378d0cf0bee56c7c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
