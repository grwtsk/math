# UniformConvergenceCLM.piEquivL_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b675c7ae-33ef-4f53-06cf-4fdb1e436136",
  "kind": "lemma",
  "lexical_name": "UniformConvergenceCLM.piEquivL_symm_apply",
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
  "slug": "uniformconvergenceclm-piequivl-symm-apply--149c3ee741e23ab1ad9733eb",
  "source": {
    "blob": "2bdb4be3b2fc294f37fd7469539d21757801eec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 580,
    "path": "GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:149c3ee741e23ab1ad9733ebd55b20ec3eb1c1f8207d79bc92ccb4d4853542e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b675c7ae-33ef-4f53-06cf-4fdb1e436136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UniformConvergenceCLM.piEquivL_symm_apply (𝔖 : Set (Set E))
    (T : E →Lᵤ[𝕜, 𝔖] Π i, F i) (e : E) (i : ι) :
    (piEquivL 𝕜 F 𝔖).symm T i e = T e i :=
  rfl

end Pi

open ContinuousLinearMap

namespace ContinuousLinearEquiv

open scoped UniformConvergenceCLM

section Semilinear

variable {𝕜 : Type*} {𝕜₂ : Type*} {𝕜₃ : Type*} {𝕜₄ : Type*} {E : Type*} {F : Type*}
  {G : Type*} {H : Type*} [AddCommGroup E] [AddCommGroup F] [AddCommGroup G] [AddCommGroup H]
  [NormedField 𝕜] [NormedField 𝕜₂] [NormedField 𝕜₃] [NormedField 𝕜₄]
  [Module 𝕜 E] [Module 𝕜₂ F] [Module 𝕜₃ G] [Module 𝕜₄ H]
  [TopologicalSpace E] [TopologicalSpace F] [TopologicalSpace G] [TopologicalSpace H]
  [IsTopologicalAddGroup G] [IsTopologicalAddGroup H]
  [ContinuousConstSMul 𝕜₃ G] [ContinuousConstSMul 𝕜₄ H]
  {σ₁₂ : 𝕜 →+* 𝕜₂} {σ₂₁ : 𝕜₂ →+* 𝕜} {σ₂₃ : 𝕜₂ →+* 𝕜₃} {σ₁₃ : 𝕜 →+* 𝕜₃}
  {σ₃₄ : 𝕜₃ →+* 𝕜₄} {σ₄₃ : 𝕜₄ →+* 𝕜₃} {σ₂₄ : 𝕜₂ →+* 𝕜₄} {σ₁₄ : 𝕜 →+* 𝕜₄} [RingHomInvPair σ₁₂ σ₂₁]
  [RingHomInvPair σ₂₁ σ₁₂] [RingHomInvPair σ₃₄ σ₄₃] [RingHomInvPair σ₄₃ σ₃₄]
  [RingHomCompTriple σ₂₁ σ₁₄ σ₂₄] [RingHomCompTriple σ₂₄ σ₄₃ σ₂₃] [RingHomCompTriple σ₁₂ σ₂₃ σ₁₃]
  [RingHomCompTriple σ₁₃ σ₃₄ σ₁₄] [RingHomCompTriple σ₂₃ σ₃₄ σ₂₄] [RingHomCompTriple σ₁₂ σ₂₄ σ₁₄]

/-- A pair of continuous (semi)linear equivalences generates a (semi)linear equivalence between the
spaces of continuous (semi)linear maps. This version is for the type alias
`UniformConvergenceCLM`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bdb4be3b2fc294f37fd7469539d21757801eec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
