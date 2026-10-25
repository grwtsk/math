# diff_subset_diff_iff_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e0d357e-f8e5-39da-05b3-f9091b20e92e",
  "kind": "theorem",
  "lexical_name": "diff_subset_diff_iff_subset",
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
  "slug": "diff-subset-diff-iff-subset--0593fe9ff1af21a00a71797c",
  "source": {
    "blob": "cb65c0681251f6274d50791fc8d16f976b665b52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1184,
    "line": 1181,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant576b63badcd44d561b7cf7a344a9337465294b72876a90f493f16bda49c4ba88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0593fe9ff1af21a00a71797ce6eafff5009242608248182b6edd0f6bf1da3bd3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant576b63badcd44d561b7cf7a344a9337465294b72876a90f493f16bda49c4ba88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e0d357e-f8e5-39da-05b3-f9091b20e92e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1181–1184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diff_subset_diff_iff_subset {r : Set α} (hs : s ⊆ r) (ht : t ⊆ r) :
    r \ s ⊆ r \ t ↔ t ⊆ s :=
  sdiff_le_sdiff_iff_le hs ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant576b63badcd44d561b7cf7a344a9337465294b72876a90f493f16bda49c4ba88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant576b63badcd44d561b7cf7a344a9337465294b72876a90f493f16bda49c4ba88.lean#L1181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb65c0681251f6274d50791fc8d16f976b665b52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
