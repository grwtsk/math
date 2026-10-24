# cuspFunction_zero_eq_limUnder_nhds_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84cb11fe-da9b-87f9-7360-620a0c354c87",
  "kind": "theorem",
  "lexical_name": "cuspFunction_zero_eq_limUnder_nhds_ne",
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
  "slug": "cuspfunction-zero-eq-limunder-nhds-ne--7c63d6390b750d557ed26bff",
  "source": {
    "blob": "d59faa7120a46b387099af2e9af3b191c65bef14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 113,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant38b1b3f309b575d9c2692d2ce1a56d5ef47ca9e2f26130372fbe0c4de5f99fb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c63d6390b750d557ed26bff266a7d737f6385f402945950e361de2fe25ae869",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant38b1b3f309b575d9c2692d2ce1a56d5ef47ca9e2f26130372fbe0c4de5f99fb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84cb11fe-da9b-87f9-7360-620a0c354c87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cuspFunction_zero_eq_limUnder_nhds_ne :
    cuspFunction h f 0 = limUnder (𝓝[≠] 0) (cuspFunction h f) := by
  conv_lhs => simp only [cuspFunction, update_self]
  refine congr_arg lim (Filter.map_congr <| eventuallyEq_nhdsWithin_of_eqOn fun r hr ↦ ?_)
  rw [cuspFunction, update_of_ne hr]

variable {f h}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant38b1b3f309b575d9c2692d2ce1a56d5ef47ca9e2f26130372fbe0c4de5f99fb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant38b1b3f309b575d9c2692d2ce1a56d5ef47ca9e2f26130372fbe0c4de5f99fb5.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d59faa7120a46b387099af2e9af3b191c65bef14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
