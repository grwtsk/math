# nndist_single_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27d029ee8e68efb7a99c2399e7cd2678bd5d7889",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81f4d31f-f950-b7a9-ed7d-f8223ec86197",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb8e73c2-05b4-66fc-97a7-9a741e07325b",
  "kind": "lemma",
  "lexical_name": "nndist_single_single",
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
  "slug": "nndist-single-single--1dacc3012fa25f2ea2af79f8",
  "source": {
    "blob": "27d029ee8e68efb7a99c2399e7cd2678bd5d7889",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 167,
    "path": "GRWTSK/Topology/MetricTopology/Pi/Variant6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dacc3012fa25f2ea2af79f816f0ef53b73cc00ea12f0a7a17182caf295fa6b5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pi/Variant6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb8e73c2-05b4-66fc-97a7-9a741e07325b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nndist_single_single {Y : Type*} [PseudoMetricSpace Y] [Zero Y] [DecidableEq β]
    (i j : β) (a b : Y) (h : i ≠ j) :
    nndist (Pi.single i a : β → Y) (Pi.single j b) = max (nndist a 0) (nndist b 0) := by
  refine le_antisymm (nndist_pi_le_iff.2 fun k ↦ ?_) (max_le ?_ ?_)
  · simp only [Pi.single_apply]
    by_cases hki : k = i <;> by_cases hkj : k = j <;> simp_all [nndist_comm]
  · simpa [h] using nndist_le_pi_nndist (Pi.single i a : β → Y) (Pi.single j b) i
  · simpa [h, nndist_comm] using nndist_le_pi_nndist (Pi.single i a : β → Y) (Pi.single j b) j

/-- The (sup metric) distance between `Pi.single i a` and `Pi.single j b` for
`i ≠ j` is `max (dist a 0) (dist b 0)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pi/Variant6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pi/Variant6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27d029ee8e68efb7a99c2399e7cd2678bd5d7889` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
