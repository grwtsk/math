# minimalPeriod_single_dvd_minimalPeriod_piMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4f987d9-336a-9ceb-27d8-d6840c5e7598",
  "kind": "theorem",
  "lexical_name": "minimalPeriod_single_dvd_minimalPeriod_piMap",
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
  "slug": "minimalperiod-single-dvd-minimalperiod-pimap--5ee7feb1153280643e2ca628",
  "source": {
    "blob": "255deefdb5b81455b21f0a6c00451c598bcd551c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 156,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ee7feb1153280643e2ca62874eb6393385264fa7c8b6ae229d676c2f7c73734",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4f987d9-336a-9ceb-27d8-d6840c5e7598`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimalPeriod_single_dvd_minimalPeriod_piMap (i : ι) :
    minimalPeriod (f i) (x i) ∣ minimalPeriod (Pi.map f) x := by
  simp only [minimalPeriod_piMap]
  by_cases h : {n | 0 < n ∧ ∀ (i : ι), minimalPeriod (f i) (x i) ∣ n}.Nonempty
  · exact (Nat.sInf_mem h).2 i
  · simp [not_nonempty_iff_eq_empty.mp h]

end Pi

end Function
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `255deefdb5b81455b21f0a6c00451c598bcd551c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
