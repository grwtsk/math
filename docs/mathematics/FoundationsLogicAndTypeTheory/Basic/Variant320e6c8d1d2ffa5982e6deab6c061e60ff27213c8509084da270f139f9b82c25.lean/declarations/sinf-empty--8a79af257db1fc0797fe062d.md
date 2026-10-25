# sInf_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "137217e5cfcf978acc4c713f61d6adeb2221c230",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 829,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/320e6c8d1d2ffa5982e6deab6c061e60ff27213c8509084da270f139f9b82c25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf87f1ea-6011-f65d-f73d-f3fb57c82442",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2258e2e-2e22-04ac-7f4b-5c79fbc2e2af",
  "kind": "theorem",
  "lexical_name": "sInf_empty",
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
  "slug": "sinf-empty--8a79af257db1fc0797fe062d",
  "source": {
    "blob": "137217e5cfcf978acc4c713f61d6adeb2221c230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 831,
    "line": 829,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant320e6c8d1d2ffa5982e6deab6c061e60ff27213c8509084da270f139f9b82c25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a79af257db1fc0797fe062dd6e5c10a2bd5e32eed33e0f06f2623afc3eba35a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variant320e6c8d1d2ffa5982e6deab6c061e60ff27213c8509084da270f139f9b82c25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2258e2e-2e22-04ac-7f4b-5c79fbc2e2af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 829–831.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sInf_empty : sInf (∅ : Set ℝ) = 0 := by simp [sInf_def, sSup_empty]
#align real.Inf_empty Real.sInf_empty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variant320e6c8d1d2ffa5982e6deab6c061e60ff27213c8509084da270f139f9b82c25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant320e6c8d1d2ffa5982e6deab6c061e60ff27213c8509084da270f139f9b82c25.lean#L829).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `137217e5cfcf978acc4c713f61d6adeb2221c230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
