# mertensTwoPointPrefixMax_le_dyadicPrefixMaximum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a10d2e1-ec8b-d17f-3afb-f15ffb196596",
  "kind": "theorem",
  "lexical_name": "mertensTwoPointPrefixMax_le_dyadicPrefixMaximum",
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
  "slug": "mertenstwopointprefixmax-le-dyadicprefixmaximum--41aa03bc3964f57d46226fa6",
  "source": {
    "blob": "56c1f003e3611750db1020affb661b5e16b6a277",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41aa03bc3964f57d46226fa677624cfd408caebf67bc42a85dd41b227c43f574",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a10d2e1-ec8b-d17f-3afb-f15ffb196596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensTwoPointPrefixMax_le_dyadicPrefixMaximum
    (j h : ℕ) :
    mertensTwoPointPrefixMax j h ≤
      dyadicPrefixMaximum (j + 1)
        (paddedMertensTwoPointSequence j h) := by
  unfold mertensTwoPointPrefixMax dyadicPrefixMaximum
  apply (partialSups_le_iff).2
  intro N hN
  have hNL : N ≤ mertensTwoPointPaddedLength j h := by
    simpa [mertensTwoPointPaddedLength] using hN
  rw [← finitePrefixSum_paddedMertensTwoPoint_eq hNL]
  exact le_partialSups_of_le
    (fun n : ℕ =>
      |finitePrefixSum (paddedMertensTwoPointSequence j h) n|)
    (hNL.trans (mertensTwoPointPaddedLength_le_right j h))

/-- One canonical two-point prefix maximum is controlled by the padded recursive
tree-square energy with the exact depth factor `j+2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicMertensTwoPointTreeEnergy.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56c1f003e3611750db1020affb661b5e16b6a277` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
