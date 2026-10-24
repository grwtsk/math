# readout_exact_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b51b808c-4191-63b1-e8b2-db5e58ccc8a1",
  "kind": "theorem",
  "lexical_name": "readout_exact_of_mem",
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
  "slug": "readout-exact-of-mem--801977d972a0dc615af759b6",
  "source": {
    "blob": "6b656f637ba287fece1779f3f8662d68e15e8eb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 88,
    "path": "GRWTSK/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:801977d972a0dc615af759b6b782d43482fbc91d0fef2f40fa9b026d20275361",
  "verification": {
    "reference": "docs/verification/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b51b808c-4191-63b1-e8b2-db5e58ccc8a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readout_exact_of_mem (w f : SourceSpace) (hw : w ∈ U) :
    inner ℝ w (primeTwoDifference f) = inner ℝ w (compressedDifference U f) := by
  have h := exact_readout_defect U w f
  rw [U.starProjection_eq_self_iff.mpr hw, sub_self, inner_zero_left, mul_zero] at h
  exact sub_eq_zero.mp h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchOrthogonalCompression/Variant6572f3c217a3e3c371bb09362948dc7314c04c5d1bcd2a3e198f1602400ccbbe.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b656f637ba287fece1779f3f8662d68e15e8eb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
