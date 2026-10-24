# eq_smul_of_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26ca8e4b91dbc051011acf197bafe76bc0be7308",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d56bdd257bf8eb9515f0e1cb2bcd35858a352044c35f058fb62a6b96598d35aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45658d2b-ed8b-4a3f-8121-e8bfd44692f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff9e47b2-aed7-8941-4b96-4591fb2fe363",
  "kind": "theorem",
  "lexical_name": "eq_smul_of_absolutelyContinuous",
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
  "slug": "eq-smul-of-absolutelycontinuous--dc75d395cb3a077b082159c5",
  "source": {
    "blob": "26ca8e4b91dbc051011acf197bafe76bc0be7308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 70,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variantd56bdd257bf8eb9515f0e1cb2bcd35858a352044c35f058fb62a6b96598d35aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc75d395cb3a077b082159c5535b8e3c2fb4b8e0aca86f902c82a1e05c246413",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variantd56bdd257bf8eb9515f0e1cb2bcd35858a352044c35f058fb62a6b96598d35aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff9e47b2-aed7-8941-4b96-4591fb2fe363`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_smul_of_absolutelyContinuous [IsFiniteMeasure μ] [IsFiniteMeasure ν] (hμ : Ergodic f μ)
    (hfν : MeasurePreserving f ν ν) (hνμ : ν ≪ μ) : ∃ c : ℝ≥0∞, ν = c • μ := by
  have := hfν.rnDeriv_comp_aeEq hμ.toMeasurePreserving
  obtain ⟨c, hc⟩ := hμ.ae_eq_const_of_ae_eq_comp₀ (measurable_rnDeriv _ _).nullMeasurable this
  use c
  ext s hs
  calc
    ν s = ∫⁻ a in s, ν.rnDeriv μ a ∂μ := .symm <| setLIntegral_rnDeriv hνμ _
    _ = ∫⁻ _ in s, c ∂μ := lintegral_congr_ae <| hc.filter_mono <| ae_mono restrict_le_self
    _ = (c • μ) s := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variantd56bdd257bf8eb9515f0e1cb2bcd35858a352044c35f058fb62a6b96598d35aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variantd56bdd257bf8eb9515f0e1cb2bcd35858a352044c35f058fb62a6b96598d35aa.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ca8e4b91dbc051011acf197bafe76bc0be7308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
