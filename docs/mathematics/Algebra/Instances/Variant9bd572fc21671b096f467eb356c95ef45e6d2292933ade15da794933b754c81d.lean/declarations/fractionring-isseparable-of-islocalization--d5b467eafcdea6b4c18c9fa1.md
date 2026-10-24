# FractionRing.isSeparable_of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b72970a8daf65403208a159d6045da76627098e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bd572fc21671b096f467eb356c95ef45e6d2292933ade15da794933b754c81d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd97b774-26ef-6ae9-0012-0a32c92575e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3609c003-df87-bad7-c746-0d554c9b7e40",
  "kind": "theorem",
  "lexical_name": "FractionRing.isSeparable_of_isLocalization",
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
  "slug": "fractionring-isseparable-of-islocalization--d5b467eafcdea6b4c18c9fa1",
  "source": {
    "blob": "b72970a8daf65403208a159d6045da76627098e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 61,
    "path": "GRWTSK/Algebra/Instances/Variant9bd572fc21671b096f467eb356c95ef45e6d2292933ade15da794933b754c81d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5b467eafcdea6b4c18c9fa1992fa87281a6821885e35d9bec13a8a7c1e07f68",
  "verification": {
    "reference": "docs/verification/Algebra/Instances/Variant9bd572fc21671b096f467eb356c95ef45e6d2292933ade15da794933b754c81d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3609c003-df87-bad7-c746-0d554c9b7e40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FractionRing.isSeparable_of_isLocalization (hM : M ≤ R⁰) :
    Algebra.IsSeparable (FractionRing Rₘ) (FractionRing Sₘ) := by
  let M' := algebraMapSubmonoid S M
  have hM' : algebraMapSubmonoid S M ≤ S⁰ := algebraMapSubmonoid_le_nonZeroDivisors_of_faithfulSMul
    _ hM
  let f₁ : Rₘ →+* K := map _ (T := R⁰) (RingHom.id R) hM
  let f₂ : Sₘ →+* L := map _ (T := S⁰) (RingHom.id S) hM'
  algebraize [f₁, f₂]
  have := localization_isScalarTower_of_submonoid_le Rₘ K _ _ hM
  have := localization_isScalarTower_of_submonoid_le Sₘ L _ _ hM'
  have := isFractionRing_of_isDomain_of_isLocalization M Rₘ K
  have := isFractionRing_of_isDomain_of_isLocalization M' Sₘ L
  have : IsDomain Rₘ := isDomain_of_le_nonZeroDivisors _ hM
  apply Algebra.IsSeparable.of_equiv_equiv (FractionRing.algEquiv Rₘ K).symm.toRingEquiv
    (FractionRing.algEquiv Sₘ L).symm.toRingEquiv
  apply ringHom_ext R⁰
  ext
  simp only [RingHom.coe_comp,
      RingHom.coe_coe, Function.comp_apply, ← algebraMap_apply]
  rw [algebraMap_apply R Rₘ (FractionRing R), AlgEquiv.coe_ringEquiv, AlgEquiv.commutes,
    algebraMap_apply R S L, algebraMap_apply S Sₘ L, AlgEquiv.coe_ringEquiv, AlgEquiv.commutes]
  simp only [← algebraMap_apply]
  rw [algebraMap_apply R Rₘ (FractionRing Rₘ), ← algebraMap_apply Rₘ, ← algebraMap_apply]

end

variable {P : Ideal R} [P.IsPrime]

local notation3 "P'" => algebraMapSubmonoid S P.primeCompl
local notation3 "Rₚ" => Localization.AtPrime P
local notation3 "Sₚ" => Localization P'

variable [FaithfulSMul R S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Instances/Variant9bd572fc21671b096f467eb356c95ef45e6d2292933ade15da794933b754c81d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Instances/Variant9bd572fc21671b096f467eb356c95ef45e6d2292933ade15da794933b754c81d.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72970a8daf65403208a159d6045da76627098e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
