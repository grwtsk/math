# haarScalarFactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3552f917ad6b31118c9c0eb8e11daaad293ccf117c6803c17476c31e4b5927a",
  "kind": "def",
  "lexical_name": "haarScalarFactor",
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
  "slug": "haarscalarfactor--425db93c4e6c3d8cea9510f4",
  "source": {
    "blob": "39ab965024e0bac57bd24f01951a70af90276218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 302,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:425db93c4e6c3d8cea9510f4b022ead8bd76b7b8f2e24a2d244a56f98ba49a9b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3552f917ad6b31118c9c0eb8e11daaad293ccf117c6803c17476c31e4b5927a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def haarScalarFactor
    (μ' μ : Measure G) [IsHaarMeasure μ] [IsFiniteMeasureOnCompacts μ'] [IsMulLeftInvariant μ'] :
    ℝ≥0 :=
  if ¬ LocallyCompactSpace G then 1
  else (exists_integral_isMulLeftInvariant_eq_smul_of_hasCompactSupport μ' μ).choose

/-- Two left invariant measures integrate in the same way continuous compactly supported functions,
up to the scalar `haarScalarFactor μ' μ`. See also
`measure_isMulInvariant_eq_smul_of_isCompact_closure`, which gives the same result for compact
sets, and `measure_isHaarMeasure_eq_smul_of_isOpen` for open sets. -/
@[to_additive integral_isAddLeftInvariant_eq_smul_of_hasCompactSupport
"Two left invariant measures integrate in the same way continuous compactly supported functions,
up to the scalar `addHaarScalarFactor μ' μ`. See also
`measure_isAddInvariant_eq_smul_of_isCompact_closure`, which gives the same result for compact
sets, and `measure_isAddHaarMeasure_eq_smul_of_isOpen` for open sets."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39ab965024e0bac57bd24f01951a70af90276218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
