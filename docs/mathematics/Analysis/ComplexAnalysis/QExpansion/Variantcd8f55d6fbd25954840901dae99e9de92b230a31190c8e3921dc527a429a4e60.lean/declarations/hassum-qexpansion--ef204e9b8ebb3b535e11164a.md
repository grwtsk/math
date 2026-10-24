# hasSum_qExpansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf0ecf66-a00c-18e3-e5f2-2f58006c110c",
  "kind": "lemma",
  "lexical_name": "hasSum_qExpansion",
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
  "slug": "hassum-qexpansion--ef204e9b8ebb3b535e11164a",
  "source": {
    "blob": "a5d9b086553b7adc6f67e3dc39daeb98c9fba044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 781,
    "line": 740,
    "path": "GRWTSK/Analysis/ComplexAnalysis/QExpansion/Variantcd8f55d6fbd25954840901dae99e9de92b230a31190c8e3921dc527a429a4e60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef204e9b8ebb3b535e11164a8af45c942e2c3f9137135a54271a8898f2fb1684",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/QExpansion/Variantcd8f55d6fbd25954840901dae99e9de92b230a31190c8e3921dc527a429a4e60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf0ecf66-a00c-18e3-e5f2-2f58006c110c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 740–781.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_qExpansion (hh : 0 < h) {k : ℤ} [ModularFormClass F Γ k]
    [Fact (IsCusp .infty Γ)] (hΓ : h ∈ Γ.strictPeriods) (τ : ℍ) :
    HasSum (fun m ↦ (qExpansion h f).coeff m * 𝕢 h τ ^ m) (f τ) :=
  τ.hasSum_qExpansion hh (periodic_comp_ofComplex f hΓ) (holo f) (bdd_at_infty f)

end ModularForm

namespace ModularFormClass

@[deprecated (since := "2026-05-05")]
protected alias cuspFunction_smul := ModularForm.cuspFunction_smul

@[deprecated (since := "2026-05-05")]
protected alias cuspFunction_neg := ModularForm.cuspFunction_neg

@[deprecated (since := "2026-05-05")]
protected alias cuspFunction_add := ModularForm.cuspFunction_add

@[deprecated (since := "2026-05-05")]
protected alias cuspFunction_sub := ModularForm.cuspFunction_sub

@[deprecated (since := "2026-05-05")]
protected alias qExpansion_smul := ModularForm.qExpansion_smul

@[deprecated (since := "2026-05-05")]
protected alias qExpansion_neg := ModularForm.qExpansion_neg

@[deprecated (since := "2026-05-05")]
protected alias qExpansion_add := ModularForm.qExpansion_add

@[deprecated (since := "2026-05-05")]
protected alias qExpansion_sub := ModularForm.qExpansion_sub

end ModularFormClass

end ring

section uniqueness

namespace UpperHalfPlane

/-- The `q`-expansion of `f` is an `FPowerSeries` representing `cuspFunction n f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/QExpansion/Variantcd8f55d6fbd25954840901dae99e9de92b230a31190c8e3921dc527a429a4e60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/QExpansion/Variantcd8f55d6fbd25954840901dae99e9de92b230a31190c8e3921dc527a429a4e60.lean#L740).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d9b086553b7adc6f67e3dc39daeb98c9fba044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
