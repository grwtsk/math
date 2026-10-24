# Unitization.complex_cfcₙ_eq_cfc_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:469050ee-d3b9-c973-3377-b5b45f7235b5",
  "kind": "lemma",
  "lexical_name": "Unitization.complex_cfcₙ_eq_cfc_inr",
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
  "slug": "unitization-complex-cfc-eq-cfc-inr--f973c956d143700c1366f9e3",
  "source": {
    "blob": "9a232de5f4356748e118239022ae71b016052f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 461,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f973c956d143700c1366f9e35c3bb28ecc4290c9d65edb0e57e99b3ce0575274",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:469050ee-d3b9-c973-3377-b5b45f7235b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Unitization.complex_cfcₙ_eq_cfc_inr (a : A) (f : ℂ → ℂ) (hf₀ : f 0 = 0 := by cfc_zero_tac) :
    cfcₙ f a = cfc f (a : A⁺¹) :=
  Unitization.cfcₙ_eq_cfc_inr isStarNormal_inr ..

/-- note: the version for `ℝ≥0`, `Unization.nnreal_cfcₙ_eq_cfc_inr`, can be found in
`Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante7b17d117cb5d58c0826df7d1b690767e3a8b86c0fa828a832dc4c4a7d794ab1.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a232de5f4356748e118239022ae71b016052f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
