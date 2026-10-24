# IsFiniteKernel.compProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ffbe2796bb39de05d6a437584676e2e0f3b8d8d7df6bf499df836e22fae1580",
  "kind": "instance",
  "lexical_name": "IsFiniteKernel.compProd",
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
  "slug": "isfinitekernel-compprod--873f11ecb2c91270395646f4",
  "source": {
    "blob": "a43c2990d0c5f8048bcc84378d0cf0bee56c7c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 541,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:873f11ecb2c91270395646f4c0f758881d1eb8ea1f23920b70dd510d48651092",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ffbe2796bb39de05d6a437584676e2e0f3b8d8d7df6bf499df836e22fae1580`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsFiniteKernel.compProd (κ : Kernel α β) [IsFiniteKernel κ] (η : Kernel (α × β) γ)
    [IsFiniteKernel η] : IsFiniteKernel (κ ⊗ₖ η) :=
  ⟨⟨IsFiniteKernel.bound κ * IsFiniteKernel.bound η,
      ENNReal.mul_lt_top (IsFiniteKernel.bound_lt_top κ) (IsFiniteKernel.bound_lt_top η), fun a =>
      calc
        (κ ⊗ₖ η) a Set.univ ≤ κ a Set.univ * IsFiniteKernel.bound η := compProd_apply_univ_le κ η a
        _ ≤ IsFiniteKernel.bound κ * IsFiniteKernel.bound η :=
          mul_le_mul (measure_le_bound κ a Set.univ) le_rfl (zero_le _) (zero_le _)⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43c2990d0c5f8048bcc84378d0cf0bee56c7c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
