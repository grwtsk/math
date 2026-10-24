# oddColumnRow_two_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c281d182c8b24752ef0c275ca0b64b67395c268",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f83dcf42-2f0e-6f4c-8b16-3c1ef084c662",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a1f76ec-922e-e83e-ab94-409082787e0f",
  "kind": "theorem",
  "lexical_name": "oddColumnRow_two_difference",
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
  "slug": "oddcolumnrow-two-difference--6036706772c70183bf158fe7",
  "source": {
    "blob": "2c281d182c8b24752ef0c275ca0b64b67395c268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6036706772c70183bf158fe7194bd0667fda62501429dea864b6397b4a2a4368",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a1f76ec-922e-e83e-ab94-409082787e0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oddColumnRow_two_difference (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    oddColumnRow A i - oddColumnRow A (2*i) = SourceSampling.sourceSamplingKernel A i := by
  have h := TwoInsertionBoundary.moebius_sum_two_split ⌊Real.exp A⌋₊
    (fun j ↦ ThetaKernelTransport.thetaKernel A (i*j))
  rw [UpperRowInversion.source_upper_row_inversion A i hA hi,
    oddColumnRow_half_padding A i hi] at h
  exact h.symm

/-- Every original intermediate row stays above the same source half-cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc705f885d246e0cf9ad24cc14516fb86dc54980a774dcdd4dc42639aea04505a.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c281d182c8b24752ef0c275ca0b64b67395c268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
