# IsSelfAdjoint.spectralRadius_eq_nnnorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91e5584d07e30cedfd6de43e39471f90b20d98e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00a9debd-8b6f-48f8-937d-bf1fd38a5ce1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afa570c6-797d-8502-3c09-778d87a14453",
  "kind": "theorem",
  "lexical_name": "IsSelfAdjoint.spectralRadius_eq_nnnorm",
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
  "slug": "isselfadjoint-spectralradius-eq-nnnorm--8dae5e1d837ada3138a1c6d5",
  "source": {
    "blob": "91e5584d07e30cedfd6de43e39471f90b20d98e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 117,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dae5e1d837ada3138a1c6d50c86b6ba0c1dd48be13d7b2552c22f0a4ce8e25f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afa570c6-797d-8502-3c09-778d87a14453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSelfAdjoint.spectralRadius_eq_nnnorm {a : A} (ha : IsSelfAdjoint a) :
    spectralRadius ℂ a = ‖a‖₊ := by
  have hconst : Tendsto (fun _n : ℕ => (‖a‖₊ : ℝ≥0∞)) atTop _ := tendsto_const_nhds
  refine tendsto_nhds_unique_of_forall ((pow_nnnorm_pow_one_div_tendsto_nhds_spectralRadius a).comp
      (tendsto_pow_atTop_atTop_of_one_lt one_lt_two)) hconst fun n ↦ ?_
  rw [Function.comp_apply, ha.nnnorm_pow_two_pow, ENNReal.coe_pow, ← rpow_natCast, ← rpow_mul]
  simp

/-- In a C⋆-algebra, the spectral radius of a self-adjoint element is equal to its norm.
See `IsSelfAdjoint.toReal_spectralRadius_eq_norm` for a version involving
`spectralRadius ℝ a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant2ce06bcdcb0b12bf12f117c4761e10dd1ecb0fa35d2b939dfe0bf9c2ac6bd078.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91e5584d07e30cedfd6de43e39471f90b20d98e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
