# HasFDerivWithinAt.tendsto_nhdsWithin_nhdsNE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5115ebd8cc13e0c5aadce48c6d8b11a5bcc72b9d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98dc4c1e-2469-45e9-eba7-20473a37ac2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d62d515-c61c-94f0-1315-e40041067494",
  "kind": "theorem",
  "lexical_name": "HasFDerivWithinAt.tendsto_nhdsWithin_nhdsNE",
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
  "slug": "hasfderivwithinat-tendsto-nhdswithin-nhdsne--64bfe46dd9234ddb14bd571e",
  "source": {
    "blob": "5115ebd8cc13e0c5aadce48c6d8b11a5bcc72b9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 325,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantdc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64bfe46dd9234ddb14bd571e1b0e5a3ae72eef8819e6123f5f8b5cbabe71e237",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantdc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d62d515-c61c-94f0-1315-e40041067494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivWithinAt.tendsto_nhdsWithin_nhdsNE (h : HasFDerivWithinAt f f' s x)
    (hf' : ∃ C, AntilipschitzWith C f') : Tendsto f (𝓝[s \ {x}] x) (𝓝[≠] f x) := by
  replace hf' : ∃ C, ∀ z, ‖z‖ ≤ C * ‖f' z‖ := by
    obtain ⟨C, hC⟩ := hf'
    exact ⟨C, fun x ↦ by simpa using hC.le_mul_dist 0 x⟩
  have A : (fun z ↦ z - x) =O[𝓝[s] x] fun z ↦ f' (z - x) :=
    isBigO_iff.mpr <| hf'.imp fun C hC ↦ Eventually.of_forall fun z ↦ hC (z - x)
  have : (fun z ↦ f z - f x) ~[𝓝[s] x] fun z ↦ f' (z - x) := h.isLittleO.trans_isBigO A
  have : ∀ᶠ (x_1 : E) in 𝓝[s] x, x_1 ∈ ({x}ᶜ : Set E) → f x_1 ∈ ({f x}ᶜ : Set F) := by
    simpa [sub_eq_zero, not_imp_not] using (A.trans this.isBigO_symm).eq_zero_imp
  apply le_inf ((map_mono (nhdsWithin_mono x sdiff_subset)).trans h.continuousWithinAt)
  rwa [le_principal_iff, ← eventually_mem_set, eventually_map, sdiff_eq, nhdsWithin_inter',
    eventually_inf_principal]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantdc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantdc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5115ebd8cc13e0c5aadce48c6d8b11a5bcc72b9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
