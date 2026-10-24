# isMulLeftInvariant_eq_smul_of_innerRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98e96146-c9cd-48ce-765b-cd3b54335476",
  "kind": "lemma",
  "lexical_name": "isMulLeftInvariant_eq_smul_of_innerRegular",
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
  "slug": "ismulleftinvariant-eq-smul-of-innerregular--86b5600658c272c680c7174b",
  "source": {
    "blob": "39ab965024e0bac57bd24f01951a70af90276218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 867,
    "line": 854,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86b5600658c272c680c7174bb253229925b72750cb334120d4080b29af5f0a0e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98e96146-c9cd-48ce-765b-cd3b54335476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 854–867.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isMulLeftInvariant_eq_smul_of_innerRegular [LocallyCompactSpace G]
    (μ' μ : Measure G) [IsHaarMeasure μ] [IsFiniteMeasureOnCompacts μ'] [IsMulLeftInvariant μ']
    [InnerRegular μ] [InnerRegular μ'] :
    μ' = haarScalarFactor μ' μ • μ := by
  ext s hs
  rw [hs.measure_eq_iSup_isCompact, hs.measure_eq_iSup_isCompact]
  congr! 4 with K _Ks K_comp
  exact measure_isMulLeftInvariant_eq_smul_of_ne_top μ' μ K_comp.measure_lt_top.ne
    K_comp.measure_lt_top.ne

/-- **Uniqueness of left-invariant measures**:
Given two left-invariant measures which are finite
on compacts and regular, they coincide up to a multiplicative constant. -/
@[to_additive isAddLeftInvariant_eq_smul_of_regular]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean#L854).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39ab965024e0bac57bd24f01951a70af90276218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
