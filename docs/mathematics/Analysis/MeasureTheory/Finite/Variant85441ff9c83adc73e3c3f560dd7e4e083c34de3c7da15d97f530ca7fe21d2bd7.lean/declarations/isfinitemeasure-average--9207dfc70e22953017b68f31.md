# IsFiniteMeasure.average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c6720613971e3e1e68f57e6e4fdf73fad5752c5e06439af355ec415376e41cf",
  "kind": "instance",
  "lexical_name": "IsFiniteMeasure.average",
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
  "slug": "isfinitemeasure-average--9207dfc70e22953017b68f31",
  "source": {
    "blob": "39924ea24efca36f560256de7420039b6ab064ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 105,
    "path": "GRWTSK/Analysis/MeasureTheory/Finite/Variant85441ff9c83adc73e3c3f560dd7e4e083c34de3c7da15d97f530ca7fe21d2bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9207dfc70e22953017b68f31df542b5449aa33836eb859515088c6b13480f7ba",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Finite/Variant85441ff9c83adc73e3c3f560dd7e4e083c34de3c7da15d97f530ca7fe21d2bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c6720613971e3e1e68f57e6e4fdf73fad5752c5e06439af355ec415376e41cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsFiniteMeasure.average : IsFiniteMeasure ((μ univ)⁻¹ • μ) where
  measure_univ_lt_top := by
    rw [Measure.smul_apply, smul_eq_mul, ← ENNReal.div_eq_inv_mul]
    exact ENNReal.div_self_le_one.trans_lt ENNReal.one_lt_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Finite/Variant85441ff9c83adc73e3c3f560dd7e4e083c34de3c7da15d97f530ca7fe21d2bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Finite/Variant85441ff9c83adc73e3c3f560dd7e4e083c34de3c7da15d97f530ca7fe21d2bd7.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39924ea24efca36f560256de7420039b6ab064ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
