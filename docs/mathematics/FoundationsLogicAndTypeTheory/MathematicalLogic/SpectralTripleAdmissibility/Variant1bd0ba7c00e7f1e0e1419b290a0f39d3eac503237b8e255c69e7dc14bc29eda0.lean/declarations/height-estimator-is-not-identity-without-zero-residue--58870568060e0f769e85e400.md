# height_estimator_is_not_identity_without_zero_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3e4eea6f2974c5b6565124a0f38252b2849eeef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44616024-4eda-d919-53fd-179e1ab4bc57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b0366e9-0964-bf2a-4775-5f5f4985da4a",
  "kind": "theorem",
  "lexical_name": "height_estimator_is_not_identity_without_zero_residue",
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
  "slug": "height-estimator-is-not-identity-without-zero-residue--58870568060e0f769e85e400",
  "source": {
    "blob": "d3e4eea6f2974c5b6565124a0f38252b2849eeef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 311,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58870568060e0f769e85e400c293ef61332ae13e4ec5aba3c4078483e7be5c1c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b0366e9-0964-bf2a-4775-5f5f4985da4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem height_estimator_is_not_identity_without_zero_residue :
    (heightEstimatorResidue 5 8).precisionResidue = 3 ∧
      (heightEstimatorResidue 5 8).convergenceClaim = false := by
  native_decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3e4eea6f2974c5b6565124a0f38252b2849eeef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
