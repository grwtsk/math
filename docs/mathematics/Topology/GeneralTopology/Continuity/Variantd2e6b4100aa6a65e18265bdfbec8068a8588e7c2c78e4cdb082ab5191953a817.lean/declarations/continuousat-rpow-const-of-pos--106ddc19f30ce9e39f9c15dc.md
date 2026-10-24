# continuousAt_rpow_const_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:422c7d35-80de-72f4-4036-e39c1abbb295",
  "kind": "theorem",
  "lexical_name": "continuousAt_rpow_const_of_pos",
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
  "slug": "continuousat-rpow-const-of-pos--106ddc19f30ce9e39f9c15dc",
  "source": {
    "blob": "c54a8b36b1b4f089573b6e94688f49ca23065f36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 461,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantd2e6b4100aa6a65e18265bdfbec8068a8588e7c2c78e4cdb082ab5191953a817.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:106ddc19f30ce9e39f9c15dca7fc17ff3498d1c725607cd523cbdc0dc55a0651",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantd2e6b4100aa6a65e18265bdfbec8068a8588e7c2c78e4cdb082ab5191953a817.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:422c7d35-80de-72f4-4036-e39c1abbb295`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem continuousAt_rpow_const_of_pos {x : ℝ≥0∞} {y : ℝ} (h : 0 < y) :
    ContinuousAt (fun a : ℝ≥0∞ => a ^ y) x := by
  by_cases hx : x = ⊤
  · rw [hx, ContinuousAt]
    convert ENNReal.tendsto_rpow_at_top h
    simp [h]
  lift x to ℝ≥0 using hx
  rw [continuousAt_coe_iff]
  convert continuous_coe.continuousAt.comp (NNReal.continuousAt_rpow_const (Or.inr h.le)) using 1
  ext1 x
  simp [← coe_rpow_of_nonneg _ h.le]

@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantd2e6b4100aa6a65e18265bdfbec8068a8588e7c2c78e4cdb082ab5191953a817.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantd2e6b4100aa6a65e18265bdfbec8068a8588e7c2c78e4cdb082ab5191953a817.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c54a8b36b1b4f089573b6e94688f49ca23065f36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
