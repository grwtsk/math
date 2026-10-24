# mertensResidual_eq_neg_causal_energy_sub_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b1f9f5aa6ac99b83f939c567dcbc130802a55a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6c5e3ed-68cc-ecac-5ca5-fdf55edc3ce9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ba954df-0901-0ba6-781e-c5eb37542388",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_neg_causal_energy_sub_work",
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
  "slug": "mertensresidual-eq-neg-causal-energy-sub-work--6f4dafbb4f98ced1b28b420b",
  "source": {
    "blob": "4b1f9f5aa6ac99b83f939c567dcbc130802a55a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 202,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f4dafbb4f98ced1b28b420bcbd8019fa958480b696846856e6494141d2c52ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ba954df-0901-0ba6-781e-c5eb37542388`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_neg_causal_energy_sub_work {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = -(1/2) * (∫ x : ℝ, causalSourceTail A x ^ 2) -
      criticalMangoldtWork A := by
  rw [mertensResidual_eq_continuous_sub_Mangoldt_work A hA,
    criticalContinuousMoment_eq_neg_half_causal_energy hA]

/-- A completely explicit source term accompanies the unchanged arithmetic interaction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1f9f5aa6ac99b83f939c567dcbc130802a55a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
